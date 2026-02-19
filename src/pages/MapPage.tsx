import { useState, useEffect, useRef, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import { Filter, MapPin, LocateFixed, RotateCcw, Navigation, List, Clock } from 'lucide-react';
import { useLocalizedPath } from '../hooks/useLanguage';
import { useCategories } from '../hooks/useCategories';
import { useAreas } from '../hooks/useAreas';
import { supabase } from '../lib/supabase';
import type { BusinessWithRelations, Category, Area } from '../types/database';
import L from 'leaflet';
import 'leaflet/dist/leaflet.css';

const CALVIA_CENTER: [number, number] = [39.545, 2.505];
const DEFAULT_ZOOM = 12;
const RADIUS_OPTIONS = [
  { label: '1 km', value: 1 },
  { label: '3 km', value: 3 },
  { label: '5 km', value: 5 },
  { label: '10 km', value: 10 },
];

function escapeHtml(str: string) {
  return str.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
}

function haversineKm(lat1: number, lon1: number, lat2: number, lon2: number): number {
  const R = 6371;
  const dLat = ((lat2 - lat1) * Math.PI) / 180;
  const dLon = ((lon2 - lon1) * Math.PI) / 180;
  const a =
    Math.sin(dLat / 2) ** 2 +
    Math.cos((lat1 * Math.PI) / 180) * Math.cos((lat2 * Math.PI) / 180) * Math.sin(dLon / 2) ** 2;
  return R * 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
}

function buildGoogleMapsDirectionsUrl(lat: number, lng: number, name: string): string {
  if (lat !== 0 && lng !== 0) {
    return `https://www.google.com/maps/dir/?api=1&destination=${lat},${lng}`;
  }
  return `https://www.google.com/maps/dir/?api=1&destination=${encodeURIComponent(name + ' Calvia Mallorca')}`;
}

function makeMarkerIcon(confidence: string): L.DivIcon {
  if (confidence === 'exact') {
    return L.divIcon({
      className: '',
      html: `<div style="width:28px;height:28px;background:#014BB5;border:3px solid white;border-radius:50%;box-shadow:0 2px 8px rgba(1,75,181,0.4);"></div>`,
      iconSize: [28, 28],
      iconAnchor: [14, 14],
      popupAnchor: [0, -16],
    });
  }
  if (confidence === 'area') {
    return L.divIcon({
      className: '',
      html: `<div style="width:24px;height:24px;background:#f59e0b;border:3px solid white;border-radius:50%;box-shadow:0 2px 6px rgba(245,158,11,0.4);opacity:0.75;"></div>`,
      iconSize: [24, 24],
      iconAnchor: [12, 12],
      popupAnchor: [0, -14],
    });
  }
  return L.divIcon({
    className: '',
    html: `<div style="width:26px;height:26px;background:#0e7490;border:3px solid white;border-radius:50%;box-shadow:0 2px 6px rgba(14,116,144,0.35);"></div>`,
    iconSize: [26, 26],
    iconAnchor: [13, 13],
    popupAnchor: [0, -15],
  });
}

function parseTimeRange(timeStr: string): { open: string; close: string } | null {
  const match = timeStr.match(/(\d{1,2}:\d{2})\s*[-–]\s*(\d{1,2}:\d{2})/);
  if (!match) return null;
  return { open: match[1], close: match[2] };
}

function isOpenNow(openingHours: Record<string, string> | null | undefined): boolean {
  if (!openingHours) return false;
  const now = new Date();
  const days = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'];
  const today = days[now.getDay()];
  const hoursStr = openingHours[today];
  if (!hoursStr || /closed/i.test(hoursStr)) return false;
  const range = parseTimeRange(hoursStr);
  if (!range) return false;
  const [oh, om] = range.open.split(':').map(Number);
  const [ch, cm] = range.close.split(':').map(Number);
  const nowMins = now.getHours() * 60 + now.getMinutes();
  return nowMins >= oh * 60 + om && nowMins < ch * 60 + cm;
}

export default function MapPage() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const { categories } = useCategories();
  const { areas } = useAreas();
  const mapRef = useRef<HTMLDivElement>(null);
  const leafletMap = useRef<L.Map | null>(null);
  const markersLayer = useRef<L.LayerGroup | null>(null);
  const radiusCircle = useRef<L.Circle | null>(null);
  const userLocationMarker = useRef<L.Marker | null>(null);

  const [businesses, setBusinesses] = useState<BusinessWithRelations[]>([]);
  const [loading, setLoading] = useState(true);
  const [selectedCategory, setSelectedCategory] = useState('');
  const [selectedArea, setSelectedArea] = useState('');
  const [selectedRadius, setSelectedRadius] = useState<number | null>(null);
  const [userLocation, setUserLocation] = useState<[number, number] | null>(null);
  const [filtersOpen, setFiltersOpen] = useState(false);
  const [locating, setLocating] = useState(false);
  const [openNow, setOpenNow] = useState(false);
  const [showList, setShowList] = useState(false);

  const fetchBusinesses = useCallback(async () => {
    setLoading(true);
    let query = supabase
      .from('businesses')
      .select('*, categories(*), areas(*)')
      .eq('is_placeholder', false)
      .neq('latitude', 0)
      .neq('longitude', 0);

    if (selectedCategory) query = query.eq('category_id', selectedCategory);
    if (selectedArea) query = query.eq('area_id', selectedArea);

    const { data } = await query.order('name').limit(500);
    let results = (data || []) as BusinessWithRelations[];

    if (selectedRadius && userLocation) {
      results = results.filter((biz) =>
        haversineKm(userLocation[0], userLocation[1], biz.latitude, biz.longitude) <= selectedRadius
      );
    }

    if (openNow) {
      results = results.filter((biz) => isOpenNow(biz.opening_hours as Record<string, string> | null));
    }

    setBusinesses(results);
    setLoading(false);
  }, [selectedCategory, selectedArea, selectedRadius, userLocation, openNow]);

  useEffect(() => {
    fetchBusinesses();
  }, [fetchBusinesses]);

  useEffect(() => {
    if (!mapRef.current || leafletMap.current) return;

    leafletMap.current = L.map(mapRef.current, {
      center: CALVIA_CENTER,
      zoom: DEFAULT_ZOOM,
      zoomControl: false,
    });

    L.control.zoom({ position: 'topright' }).addTo(leafletMap.current);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; OpenStreetMap contributors',
      maxZoom: 18,
    }).addTo(leafletMap.current);

    markersLayer.current = L.layerGroup().addTo(leafletMap.current);

    return () => {
      leafletMap.current?.remove();
      leafletMap.current = null;
    };
  }, []);

  useEffect(() => {
    if (!markersLayer.current || !leafletMap.current) return;
    markersLayer.current.clearLayers();

    const validBusinesses = businesses.filter((biz) => biz.latitude && biz.longitude);

    validBusinesses.forEach((biz) => {
      const confidence = biz.location_confidence || 'approximate';
      const icon = makeMarkerIcon(confidence);
      const marker = L.marker([biz.latitude, biz.longitude], { icon });

      const ratingHtml = biz.rating
        ? `<span style="color:#d97706;font-weight:600;font-size:12px;">&#9733; ${biz.rating}</span>`
        : '';

      const safeName = escapeHtml(biz.name);
      const safeDesc = biz.description ? escapeHtml(biz.description) : '';
      const safeCat = biz.categories ? escapeHtml(biz.categories.name) : '';
      const safeImg = biz.image_url ? escapeHtml(biz.image_url) : '';
      const profileUrl = `${window.location.origin}${l(`/profile/${biz.slug || biz.id}`)}`;
      const mapsUrl = buildGoogleMapsDirectionsUrl(biz.latitude, biz.longitude, biz.name);

      const confidenceBadge = confidence === 'area'
        ? `<span style="font-size:10px;color:#d97706;margin-left:4px;">&#9679; ${escapeHtml(t('map.approximatePin'))}</span>`
        : '';

      const popupContent = `
        <div style="min-width:220px;font-family:system-ui,sans-serif;">
          ${safeImg ? `<img src="${safeImg}" alt="${safeName}" style="width:calc(100% + 24px);height:110px;object-fit:cover;border-radius:8px 8px 0 0;margin:-12px -12px 10px -12px;" />` : ''}
          <div style="padding:0 2px;">
            <div style="font-weight:700;color:#0c3060;font-size:14px;margin-bottom:4px;">${safeName}</div>
            <div style="display:flex;gap:6px;align-items:center;margin-bottom:6px;flex-wrap:wrap;">
              ${safeCat ? `<span style="background:#EFF6FF;color:#014BB5;padding:2px 8px;border-radius:4px;font-size:11px;font-weight:500;">${safeCat}</span>` : ''}
              ${ratingHtml}
              ${confidenceBadge}
            </div>
            ${safeDesc ? `<p style="color:#6b7280;font-size:12px;line-height:1.4;margin-bottom:10px;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden;">${safeDesc}</p>` : ''}
            <div style="display:flex;flex-direction:column;gap:6px;margin-top:4px;">
              <a href="${profileUrl}" style="display:block;background:#014BB5;color:white;font-size:13px;font-weight:600;text-decoration:none;padding:8px 12px;border-radius:6px;text-align:center;">${escapeHtml(t('map.viewProfile'))}</a>
              <a href="${mapsUrl}" target="_blank" rel="noopener noreferrer" style="display:block;border:1.5px solid #d1d5db;color:#374151;font-size:12px;font-weight:500;text-decoration:none;padding:6px 12px;border-radius:6px;text-align:center;">${escapeHtml(t('map.directionsGoogle'))}</a>
            </div>
          </div>
        </div>
      `;

      marker.bindPopup(popupContent, { maxWidth: 300, className: 'calvia-popup' });
      markersLayer.current!.addLayer(marker);
    });

    if (validBusinesses.length > 0 && leafletMap.current && (selectedCategory || selectedArea || openNow)) {
      const bounds = L.latLngBounds(validBusinesses.map((b) => [b.latitude, b.longitude]));
      leafletMap.current.fitBounds(bounds, { padding: [40, 40], maxZoom: 15 });
    }
  }, [businesses, l, t, selectedCategory, selectedArea, openNow]);

  useEffect(() => {
    if (!leafletMap.current) return;

    if (radiusCircle.current) {
      radiusCircle.current.remove();
      radiusCircle.current = null;
    }
    if (userLocationMarker.current) {
      userLocationMarker.current.remove();
      userLocationMarker.current = null;
    }

    if (userLocation && selectedRadius) {
      radiusCircle.current = L.circle(userLocation, {
        radius: selectedRadius * 1000,
        color: '#014BB5',
        fillColor: '#014BB5',
        fillOpacity: 0.06,
        weight: 2,
        dashArray: '6 4',
      }).addTo(leafletMap.current);

      const userIcon = L.divIcon({
        className: '',
        html: `<div style="width:16px;height:16px;background:#ef4444;border:3px solid white;border-radius:50%;box-shadow:0 0 0 4px rgba(239,68,68,0.2);"></div>`,
        iconSize: [16, 16],
        iconAnchor: [8, 8],
      });
      userLocationMarker.current = L.marker(userLocation, { icon: userIcon }).addTo(leafletMap.current);
    }
  }, [userLocation, selectedRadius]);

  function handleNearMe() {
    if (!navigator.geolocation || !leafletMap.current) return;
    setLocating(true);
    navigator.geolocation.getCurrentPosition(
      (pos) => {
        const loc: [number, number] = [pos.coords.latitude, pos.coords.longitude];
        setUserLocation(loc);
        leafletMap.current?.setView(loc, 14);
        if (!selectedRadius) setSelectedRadius(3);
        setLocating(false);
      },
      () => { setLocating(false); },
      { enableHighAccuracy: true }
    );
  }

  function handleReset() {
    leafletMap.current?.setView(CALVIA_CENTER, DEFAULT_ZOOM);
    setSelectedCategory('');
    setSelectedArea('');
    setSelectedRadius(null);
    setUserLocation(null);
    setOpenNow(false);
  }

  function handleRadiusChange(radius: number | null) {
    setSelectedRadius(radius);
    if (radius && !userLocation) {
      handleNearMe();
    }
  }

  const activeFilterCount =
    (selectedCategory ? 1 : 0) + (selectedArea ? 1 : 0) + (selectedRadius ? 1 : 0) + (openNow ? 1 : 0);

  return (
    <div className="pt-[72px] lg:pt-20 flex flex-col" style={{ height: '100vh' }}>
      <div className="bg-white border-b border-gray-100 px-4 py-3 flex items-center justify-between gap-3 flex-shrink-0">
        <div className="flex items-center gap-3">
          <h1 className="font-display text-lg font-bold text-ocean-800 flex items-center gap-2">
            <MapPin className="w-5 h-5 text-ocean-500" />
            {t('map.title')}
          </h1>
          <span className={`text-sm font-semibold transition-all duration-300 ${loading ? 'text-gray-300' : 'text-ocean-600'}`}>
            {loading ? '...' : `${businesses.length} ${businesses.length === 1 ? t('map.business') : t('map.businesses')}`}
          </span>
        </div>
        <div className="flex items-center gap-2">
          <button
            onClick={() => setShowList(!showList)}
            className={`hidden sm:flex items-center gap-1.5 px-3 py-2 text-sm font-medium rounded-lg transition-colors
              ${showList ? 'bg-ocean-500 text-white' : 'text-ocean-700 bg-ocean-50 hover:bg-ocean-100'}`}
            title={t('map.listView')}
          >
            <List className="w-4 h-4" />
            <span className="hidden md:inline">{t('map.listView')}</span>
          </button>
          <button
            onClick={() => setOpenNow(!openNow)}
            className={`flex items-center gap-1.5 px-3 py-2 text-sm font-medium rounded-lg transition-colors
              ${openNow ? 'bg-green-500 text-white' : 'text-gray-600 bg-gray-100 hover:bg-gray-200'}`}
          >
            <Clock className="w-4 h-4" />
            <span className="hidden sm:inline">{t('map.openNow')}</span>
          </button>
          <button
            onClick={() => setFiltersOpen(!filtersOpen)}
            className={`lg:hidden flex items-center gap-1.5 px-3 py-2 text-sm font-medium rounded-lg transition-colors
              ${filtersOpen ? 'bg-ocean-500 text-white' : 'text-ocean-700 bg-ocean-50'}`}
          >
            <Filter className="w-4 h-4" />
            {activeFilterCount > 0 && (
              <span className="bg-white text-ocean-600 text-xs px-1.5 py-0.5 rounded-full font-bold">{activeFilterCount}</span>
            )}
          </button>
          <button
            onClick={handleNearMe}
            disabled={locating}
            className="flex items-center gap-1.5 px-3 py-2 text-sm font-medium text-ocean-700 bg-ocean-50 rounded-lg hover:bg-ocean-100 transition-colors disabled:opacity-60"
          >
            <LocateFixed className={`w-4 h-4 ${locating ? 'animate-spin' : ''}`} />
            <span className="hidden sm:inline">{t('map.nearMe')}</span>
          </button>
          <button
            onClick={handleReset}
            className="flex items-center gap-1.5 px-3 py-2 text-sm font-medium text-gray-600 bg-gray-100 rounded-lg hover:bg-gray-200 transition-colors"
          >
            <RotateCcw className="w-4 h-4" />
            <span className="hidden sm:inline">{t('map.resetView')}</span>
          </button>
        </div>
      </div>

      <div className={`bg-white border-b border-gray-100 px-4 py-3 flex-shrink-0 ${filtersOpen ? 'block' : 'hidden'} lg:block`}>
        <div className="flex flex-col sm:flex-row gap-3">
          <select
            value={selectedCategory}
            onChange={(e) => setSelectedCategory(e.target.value)}
            className="flex-1 px-3 py-2 border border-gray-200 rounded-lg text-sm focus:ring-2 focus:ring-ocean-500 focus:border-ocean-500"
          >
            <option value="">{t('map.allCategories')}</option>
            {categories.map((cat: Category) => (
              <option key={cat.id} value={cat.id}>{cat.name}</option>
            ))}
          </select>
          <select
            value={selectedArea}
            onChange={(e) => setSelectedArea(e.target.value)}
            className="flex-1 px-3 py-2 border border-gray-200 rounded-lg text-sm focus:ring-2 focus:ring-ocean-500 focus:border-ocean-500"
          >
            <option value="">{t('map.allAreas')}</option>
            {areas.map((area: Area) => (
              <option key={area.id} value={area.id}>{area.name}</option>
            ))}
          </select>
          <div className="flex items-center gap-2 flex-wrap sm:flex-nowrap">
            <span className="text-xs font-medium text-gray-500 whitespace-nowrap flex items-center gap-1">
              <Navigation className="w-3.5 h-3.5" />
              {t('map.radius')}:
            </span>
            <div className="flex gap-1">
              {RADIUS_OPTIONS.map((opt) => (
                <button
                  key={opt.value}
                  onClick={() => handleRadiusChange(selectedRadius === opt.value ? null : opt.value)}
                  className={`px-2.5 py-1 text-xs font-medium rounded-md transition-all
                    ${selectedRadius === opt.value
                      ? 'bg-ocean-500 text-white'
                      : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
                    }`}
                >
                  {opt.label}
                </button>
              ))}
            </div>
          </div>
        </div>

        <div className="flex items-center gap-3 mt-2.5 pt-2.5 border-t border-gray-100">
          <div className="flex items-center gap-3 text-xs text-gray-500">
            <span className="flex items-center gap-1.5">
              <span className="w-3 h-3 bg-ocean-600 rounded-full inline-block"></span>
              {t('map.legendExact')}
            </span>
            <span className="flex items-center gap-1.5">
              <span className="w-3 h-3 bg-cyan-700 rounded-full inline-block opacity-80"></span>
              {t('map.legendApprox')}
            </span>
            <span className="flex items-center gap-1.5">
              <span className="w-3 h-3 bg-amber-400 rounded-full inline-block opacity-75"></span>
              {t('map.legendArea')}
            </span>
          </div>
        </div>
      </div>

      <div className="flex-1 relative flex overflow-hidden">
        {loading && (
          <div className="absolute inset-0 z-[500] bg-white/60 flex items-center justify-center">
            <div className="flex items-center gap-3 bg-white px-6 py-3 rounded-xl shadow-lg">
              <div className="w-5 h-5 border-2 border-ocean-200 border-t-ocean-500 rounded-full animate-spin" />
              <span className="text-sm text-ocean-700 font-medium">{t('map.loading')}</span>
            </div>
          </div>
        )}
        <div ref={mapRef} className={`absolute inset-0 transition-all duration-300 ${showList ? 'sm:right-[340px]' : ''}`} />

        {showList && (
          <div className="hidden sm:flex flex-col w-[340px] ml-auto h-full bg-white border-l border-gray-100 overflow-y-auto z-[400] flex-shrink-0">
            <div className="px-4 py-3 border-b border-gray-100 bg-white sticky top-0 z-10">
              <p className="text-sm font-semibold text-ocean-800">
                {businesses.length} {businesses.length === 1 ? t('map.verifiedBusiness') : t('map.verifiedBusinesses')}
              </p>
            </div>
            {businesses.length === 0 && !loading ? (
              <div className="flex flex-col items-center justify-center flex-1 text-center px-6 py-12">
                <MapPin className="w-8 h-8 text-gray-200 mb-3" />
                <p className="text-sm text-gray-400">{t('map.noResults')}</p>
              </div>
            ) : (
              <ul className="divide-y divide-gray-50">
                {businesses.map((biz) => (
                  <li key={biz.id} className="px-4 py-3 hover:bg-ocean-50 transition-colors group">
                    <a href={l(`/profile/${biz.slug || biz.id}`)} className="flex items-start gap-3">
                      {biz.image_url ? (
                        <img
                          src={biz.image_url}
                          alt={biz.name}
                          className="w-12 h-12 rounded-lg object-cover flex-shrink-0"
                          loading="lazy"
                        />
                      ) : (
                        <div className="w-12 h-12 rounded-lg bg-ocean-50 flex items-center justify-center flex-shrink-0">
                          <MapPin className="w-5 h-5 text-ocean-300" />
                        </div>
                      )}
                      <div className="flex-1 min-w-0">
                        <p className="text-sm font-semibold text-ocean-800 group-hover:text-ocean-500 transition-colors leading-tight truncate">
                          {biz.name}
                        </p>
                        <div className="flex items-center gap-1.5 mt-0.5 flex-wrap">
                          {biz.categories && (
                            <span className="text-xs text-ocean-500 bg-ocean-50 px-1.5 py-0.5 rounded">{biz.categories.name}</span>
                          )}
                          {biz.rating && (
                            <span className="text-xs text-sun-600 font-medium">&#9733; {biz.rating}</span>
                          )}
                        </div>
                        {biz.areas && (
                          <p className="text-xs text-gray-400 mt-0.5 flex items-center gap-1">
                            <MapPin className="w-2.5 h-2.5" />
                            {biz.areas.name}
                          </p>
                        )}
                      </div>
                    </a>
                  </li>
                ))}
              </ul>
            )}
          </div>
        )}
      </div>
    </div>
  );
}
