import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { createClient } from "npm:@supabase/supabase-js@2";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS",
  "Access-Control-Allow-Headers":
    "Content-Type, Authorization, X-Client-Info, Apikey",
};

const NOMINATIM_URL = "https://nominatim.openstreetmap.org/search";
const DELAY_MS = 1100;

const MIN_LAT = 39.45;
const MAX_LAT = 39.63;
const MIN_LNG = 2.38;
const MAX_LNG = 2.70;

function sleep(ms: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

interface NominatimResult {
  lat: string;
  lon: string;
  display_name: string;
  importance: number;
}

function cleanAddress(address: string): string {
  return address
    .replace(/^C\/\s*/i, "Carrer ")
    .replace(/\bCarrer de la\b/gi, "")
    .replace(/\bCarrer del\b/gi, "")
    .replace(/\bCarrer de\b/gi, "")
    .replace(/\bCarrer d['']\b/gi, "")
    .replace(/,\s*07\d{3}\s*/g, ", ")
    .replace(/\s+/g, " ")
    .trim();
}

function extractStreetCore(address: string): string {
  const cleaned = cleanAddress(address);
  const parts = cleaned.split(",").map((p) => p.trim());
  return parts[0] || cleaned;
}

async function nominatimSearch(
  query: string
): Promise<{ lat: number; lng: number } | null> {
  try {
    const params = new URLSearchParams({
      q: query,
      format: "json",
      limit: "3",
      countrycodes: "es",
    });

    const res = await fetch(`${NOMINATIM_URL}?${params}`, {
      headers: {
        "User-Agent": "CalviaGuide/1.0 (contact@calviaguide.com)",
      },
    });

    if (!res.ok) return null;

    const results: NominatimResult[] = await res.json();
    for (const r of results) {
      const lat = parseFloat(r.lat);
      const lng = parseFloat(r.lon);
      if (
        lat >= MIN_LAT &&
        lat <= MAX_LAT &&
        lng >= MIN_LNG &&
        lng <= MAX_LNG
      ) {
        return { lat, lng };
      }
    }
  } catch {
    // ignore
  }
  return null;
}

async function geocodeAddress(
  address: string,
  areaName: string,
  businessName: string
): Promise<{ lat: number; lng: number } | null> {
  const streetCore = extractStreetCore(address);

  const queries = [
    `${address}, Calvià, Mallorca`,
    `${streetCore}, ${areaName}, Mallorca`,
    `${streetCore}, Calvià, Mallorca`,
    `${businessName}, ${areaName}, Mallorca`,
    `${areaName}, Calvià, Mallorca, Spain`,
  ];

  const seen = new Set<string>();
  for (const q of queries) {
    const normalized = q.toLowerCase().trim();
    if (seen.has(normalized)) continue;
    seen.add(normalized);

    const result = await nominatimSearch(q);
    if (result) return result;
    await sleep(DELAY_MS);
  }

  return null;
}

Deno.serve(async (req: Request) => {
  if (req.method === "OPTIONS") {
    return new Response(null, { status: 200, headers: corsHeaders });
  }

  try {
    const supabaseUrl = Deno.env.get("SUPABASE_URL")!;
    const supabaseKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!;
    const supabase = createClient(supabaseUrl, supabaseKey);

    const url = new URL(req.url);
    const limitParam = url.searchParams.get("limit");
    const confidenceParam = url.searchParams.get("confidence");
    const limit = Math.min(parseInt(limitParam || "20", 10), 100);
    const confidence = confidenceParam || "approximate";

    const { data: businesses, error: fetchError } = await supabase
      .from("businesses")
      .select("id, name, address, latitude, longitude, areas(name)")
      .eq("needs_geocoding", true)
      .eq("location_confidence", confidence)
      .order("name")
      .limit(limit);

    if (fetchError) {
      return new Response(
        JSON.stringify({ error: fetchError.message }),
        {
          status: 500,
          headers: { ...corsHeaders, "Content-Type": "application/json" },
        }
      );
    }

    if (!businesses || businesses.length === 0) {
      return new Response(
        JSON.stringify({
          message: "No businesses need geocoding",
          updated: 0,
          failed: 0,
        }),
        { headers: { ...corsHeaders, "Content-Type": "application/json" } }
      );
    }

    let updated = 0;
    let failed = 0;
    const results: Array<{
      name: string;
      status: string;
      coords?: { lat: number; lng: number };
      query_used?: string;
    }> = [];

    for (const biz of businesses) {
      const areaName =
        (biz.areas as { name: string } | null)?.name || "Calvia";
      const coords = await geocodeAddress(biz.address, areaName, biz.name);

      if (coords) {
        const { error: updateError } = await supabase
          .from("businesses")
          .update({
            latitude: coords.lat,
            longitude: coords.lng,
            location_confidence: "exact",
            needs_geocoding: false,
          })
          .eq("id", biz.id);

        if (!updateError) {
          updated++;
          results.push({ name: biz.name, status: "updated", coords });
        } else {
          failed++;
          results.push({ name: biz.name, status: "update_failed" });
        }
      } else {
        failed++;
        results.push({ name: biz.name, status: "geocode_failed" });
      }
    }

    return new Response(
      JSON.stringify({
        updated,
        failed,
        total: businesses.length,
        results,
      }),
      { headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  } catch (err) {
    const message = err instanceof Error ? err.message : "Unknown error";
    return new Response(JSON.stringify({ error: message }), {
      status: 500,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }
});
