/*
  # Update location_confidence to reflect actual coordinate accuracy

  1. Changes
    - Businesses with only generic area/town addresses (no street) and approximate coordinates
      are reclassified from 'approximate' to 'area' confidence
    - Businesses with real street addresses but still at area centroids are flagged with
      needs_geocoding = true so they can be batch-geocoded
    - Businesses already marked 'exact' are left untouched

  2. Criteria for 'area' confidence
    - Address does NOT contain a street name pattern (Carrer, Calle, C/, Passeig, Carretera,
      Avinguda, Av., Paseo, Plaza, Placa, Puerto Portals, Port Adriano, Playa, Platja)
    - AND location_confidence is currently 'approximate'

  3. Criteria for needs_geocoding = true
    - Address DOES contain a street name pattern
    - AND location_confidence is currently 'approximate' (not yet verified)

  4. Impact
    - ~400+ businesses reclassified to 'area' (honest about coordinate quality)
    - ~230+ businesses flagged for geocoding (have geocodable addresses)
    - Map will show amber pins for area-level locations, giving users honest accuracy signals
*/

-- Mark businesses WITHOUT real street addresses as 'area' confidence
UPDATE businesses
SET location_confidence = 'area',
    needs_geocoding = true
WHERE location_confidence = 'approximate'
  AND NOT (
    address ILIKE '%Carrer%'
    OR address ILIKE '%Calle%'
    OR address ILIKE '%C/%'
    OR address ILIKE '%Passeig%'
    OR address ILIKE '%Carretera%'
    OR address ILIKE '%Avinguda%'
    OR address ILIKE '%Av.%'
    OR address ILIKE '%Paseo%'
    OR address ILIKE '%Plaza%'
    OR address ILIKE '%Placa%'
    OR address ILIKE '%Plaça%'
    OR address ILIKE '%Puerto Portals%'
    OR address ILIKE '%Port Adriano%'
    OR address ILIKE '%Playa%'
    OR address ILIKE '%Platja%'
    OR address ILIKE '%Urbanizacion%'
    OR address ILIKE '%Urbanización%'
    OR address ILIKE '%Miguel de Cervantes%'
    OR address ILIKE '%Benito Feijoo%'
  );

-- Flag businesses WITH street addresses as needing geocoding
UPDATE businesses
SET needs_geocoding = true
WHERE location_confidence = 'approximate'
  AND (
    address ILIKE '%Carrer%'
    OR address ILIKE '%Calle%'
    OR address ILIKE '%C/%'
    OR address ILIKE '%Passeig%'
    OR address ILIKE '%Carretera%'
    OR address ILIKE '%Avinguda%'
    OR address ILIKE '%Av.%'
    OR address ILIKE '%Paseo%'
    OR address ILIKE '%Plaza%'
    OR address ILIKE '%Placa%'
    OR address ILIKE '%Plaça%'
    OR address ILIKE '%Puerto Portals%'
    OR address ILIKE '%Port Adriano%'
    OR address ILIKE '%Playa%'
    OR address ILIKE '%Platja%'
    OR address ILIKE '%Urbanizacion%'
    OR address ILIKE '%Urbanización%'
    OR address ILIKE '%Miguel de Cervantes%'
    OR address ILIKE '%Benito Feijoo%'
  );
