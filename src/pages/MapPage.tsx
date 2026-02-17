import { useState, useEffect, useRef, useCallback } from 'react';
import { Link } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { Filter, MapPin, Star, LocateFixed, RotateCcw } from 'lucide-react';
import { useLocalizedPath } from '../hooks/useLanguage';
import { useCategories } from '../hooks/useCategories';
import { useAreas } from '../hooks/useAreas';
import { supabase } from '../lib/supabase';
import type { BusinessWithRelations, Category, Area } from '../types/database';
import L from 'leaflet';
import 'leaflet/dist/leaflet.css';

const CALVIA_CENTER: [number, number] = [39.545, 2.505];
const DEFAULT_ZOOM = 12;

const MARKER_ICON = L.divIcon({
  className: '',
  html: `<div style="width:28px;height:28px;background:#014BB5;border:3px solid white;border-radius:50%;box-shadow:0 2px 6px rgba(0,0,0,0.3);"></div>`,
  iconSize: [28, 28],
  iconAnchor: [14, 14],
  popupAnchor: [0, -16],
});

export default function MapPage() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const { categories } = useCategories();
  const { areas } = useAreas();
  const mapRef = useRef<HTMLDivElement>(null);
  const leafletMap = useRef<L.Map | null>(null);
  const markersLayer = useRef<L.LayerGroup | null>(null);

  const [businesses, setBusinesses] = useState<BusinessWithRelations[]>([]);
  const [loading, setLoading] = useState(true);
  const [selectedCategory, setSelectedCategory] = useState('');
  const [selectedArea, setSelectedArea] = useState('');
  const [filtersOpen, setFiltersOpen] = useState(false);

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
    setBusinesses((data || []) as BusinessWithRelations[]);
    setLoading(false);
  }, [selectedCategory, selectedArea]);

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

    businesses.forEach((biz) => {
      if (!biz.latitude || !biz.longitude) return;
      const marker = L.marker([biz.latitude, biz.longitude], { icon: MARKER_ICON });

      const ratingHtml = biz.rating
        ? `<span style="color:#d97706;font-weight:600;font-size:12px;">&#9733; ${biz.rating}</span>`
        : '';

      const popupContent = `
        <div style="min-width:200px;font-family:system-ui,sans-serif;">
          ${biz.image_url ? `<img src="${biz.image_url}" alt="${biz.name}" style="width:100%;height:100px;object-fit:cover;border-radius:8px 8px 0 0;margin:-12px -12px 8px -12px;width:calc(100% + 24px);" />` : ''}
          <div style="padding:0 2px;">
            <div style="font-weight:700;color:#0c3060;font-size:14px;margin-bottom:4px;">${biz.name}</div>
            <div style="display:flex;gap:6px;align-items:center;margin-bottom:6px;">
              ${biz.categories ? `<span style="background:#EFF6FF;color:#014BB5;padding:2px 8px;border-radius:4px;font-size:11px;font-weight:500;">${biz.categories.name}</span>` : ''}
              ${ratingHtml}
            </div>
            ${biz.description ? `<p style="color:#6b7280;font-size:12px;line-height:1.4;margin-bottom:8px;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden;">${biz.description}</p>` : ''}
            <a href="${window.location.origin}${l(`/profile/${biz.slug || biz.id}`)}" style="color:#014BB5;font-size:12px;font-weight:600;text-decoration:none;">${t('map.viewProfile')} &rarr;</a>
          </div>
        </div>
      `;

      marker.bindPopup(popupContent, { maxWidth: 280, className: 'calvia-popup' });
      markersLayer.current!.addLayer(marker);
    });
  }, [businesses, l, t]);

  function handleNearMe() {
    if (!navigator.geolocation || !leafletMap.current) return;
    navigator.geolocation.getCurrentPosition(
      (pos) => {
        leafletMap.current?.setView([pos.coords.latitude, pos.coords.longitude], 14);
      },
      () => {},
      { enableHighAccuracy: true }
    );
  }

  function handleReset() {
    leafletMap.current?.setView(CALVIA_CENTER, DEFAULT_ZOOM);
    setSelectedCategory('');
    setSelectedArea('');
  }

  return (
    <div className="pt-[72px] lg:pt-20 flex flex-col" style={{ height: '100vh' }}>
      <div className="bg-white border-b border-gray-100 px-4 py-3 flex items-center justify-between gap-3 flex-shrink-0">
        <div className="flex items-center gap-3">
          <h1 className="font-display text-lg font-bold text-ocean-800 flex items-center gap-2">
            <MapPin className="w-5 h-5 text-ocean-500" />
            {t('map.title')}
          </h1>
          <span className="text-sm text-gray-500">
            {businesses.length} {businesses.length === 1 ? t('map.business') : t('map.businesses')}
          </span>
        </div>
        <div className="flex items-center gap-2">
          <button
            onClick={() => setFiltersOpen(!filtersOpen)}
            className="lg:hidden flex items-center gap-1.5 px-3 py-2 text-sm font-medium text-ocean-700 bg-ocean-50 rounded-lg"
          >
            <Filter className="w-4 h-4" />
          </button>
          <button
            onClick={handleNearMe}
            className="flex items-center gap-1.5 px-3 py-2 text-sm font-medium text-ocean-700 bg-ocean-50 rounded-lg hover:bg-ocean-100 transition-colors"
          >
            <LocateFixed className="w-4 h-4" />
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
        </div>
      </div>

      <div className="flex-1 relative">
        {loading && (
          <div className="absolute inset-0 z-[500] bg-white/60 flex items-center justify-center">
            <div className="flex items-center gap-3 bg-white px-6 py-3 rounded-xl shadow-lg">
              <div className="w-5 h-5 border-2 border-ocean-200 border-t-ocean-500 rounded-full animate-spin" />
              <span className="text-sm text-ocean-700 font-medium">{t('map.loading')}</span>
            </div>
          </div>
        )}
        <div ref={mapRef} className="absolute inset-0" />
      </div>
    </div>
  );
}
