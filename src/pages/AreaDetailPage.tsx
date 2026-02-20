import { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { ChevronLeft, MapPin, Star, ExternalLink } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../hooks/useLanguage';
import { supabase } from '../lib/supabase';
import type { Area, Business, Category } from '../types/database';
import { useFAQs } from '../hooks/useFAQs';
import FAQSection from '../components/ui/FAQSection';
import BreadcrumbSchema from '../components/seo/BreadcrumbSchema';
import { useTranslatedContent } from '../hooks/useTranslatedContent';

export default function AreaDetailPage() {
  const { t } = useTranslation();
  const { l, lang } = useLocalizedPath();
  const { slug } = useParams<{ slug: string }>();
  const [area, setArea] = useState<Area | null>(null);
  const [businesses, setBusinesses] = useState<(Business & { categories: Category })[]>([]);
  const [loading, setLoading] = useState(true);
  const { faqs } = useFAQs('area', slug);
  const { tf } = useTranslatedContent('area', area?.id);

  useEffect(() => {
    async function fetchData() {
      setLoading(true);
      const { data: areaData } = await supabase
        .from('areas')
        .select('*')
        .eq('slug', slug)
        .maybeSingle();

      if (areaData) {
        setArea(areaData);
        const { data: bizData } = await supabase
          .from('businesses')
          .select('*, categories(*)')
          .eq('area_id', areaData.id)
          .eq('is_placeholder', false)
          .order('name');
        if (bizData) setBusinesses(bizData as any);
      }
      setLoading(false);
    }
    fetchData();
  }, [slug]);

  useEffect(() => {
    if (area) {
      document.title = `${area.name}, Mallorca | Area Guide, Businesses & Map | Calvia.app`;
      const meta = document.querySelector('meta[name="description"]');
      if (meta) meta.setAttribute('content', `Explore ${area.name} in Calvia, Mallorca. Find local businesses, restaurants, shops, and services. Area guide with map, highlights, and FAQ.`);
    }
    return () => {
      document.title = "Calvia.app - The Modern Yellow Pages of Mallorca's Southwest";
    };
  }, [area]);

  if (loading) {
    return (
      <div className="pt-24 pb-16 flex items-center justify-center min-h-screen">
        <div className="w-8 h-8 border-4 border-ocean-200 border-t-ocean-500 rounded-full animate-spin" />
      </div>
    );
  }

  if (!area) {
    return (
      <div className="pt-24 pb-16 text-center container-wide">
        <h1 className="font-display text-3xl font-bold text-ocean-800 mt-16">{t('areas.areaNotFound')}</h1>
        <Link to={l('/areas')} className="text-ocean-500 hover:text-sun-500 mt-4 inline-block">
          {t('areas.backToAreas')}
        </Link>
      </div>
    );
  }

  const categorized = businesses.reduce<Record<string, (Business & { categories: Category })[]>>(
    (acc, biz) => {
      const catName = biz.categories?.name || 'Other';
      if (!acc[catName]) acc[catName] = [];
      acc[catName].push(biz);
      return acc;
    },
    {}
  );

  return (
    <div className="pt-24 pb-16">
      <BreadcrumbSchema crumbs={[
        { name: 'Home', path: `/${lang || 'en'}` },
        { name: t('nav.areas'), path: `/${lang || 'en'}/areas` },
        { name: area.name, path: `/${lang || 'en'}/areas/${slug}` },
      ]} />
      <section className="relative h-80 lg:h-96 overflow-hidden">
        <img
          src={area.image_url}
          alt={area.name}
          className="absolute inset-0 w-full h-full object-cover"
        />
        <div className="absolute inset-0 bg-gradient-to-t from-ocean-900/80 via-ocean-900/30 to-transparent" />
        <div className="absolute bottom-0 left-0 right-0 p-6 lg:p-10">
          <div className="container-wide">
            <Link
              to={l('/areas')}
              className="inline-flex items-center gap-1 text-ocean-200 hover:text-white transition-colors text-sm mb-4"
            >
              <ChevronLeft className="w-4 h-4" /> {t('nav.allAreas')}
            </Link>
            <h1 className="font-display text-4xl lg:text-5xl font-bold text-white mb-2">
              {area.name}
            </h1>
            <div className="flex items-center gap-2 text-ocean-200 text-sm">
              <MapPin className="w-4 h-4" />
              {t('areas.calviaMallorcaSpain')}
            </div>
          </div>
        </div>
      </section>

      <section className="container-wide py-10">
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-10">
          <div className="lg:col-span-2">
            <h2 className="font-display text-2xl font-bold text-ocean-800 mb-4">{t('areas.aboutArea', { name: tf('name', area.name) })}</h2>
            <p className="text-gray-600 leading-relaxed mb-8">{tf('description', area.description)}</p>

            {area.highlights.length > 0 && (
              <div className="mb-10">
                <h3 className="font-display text-xl font-semibold text-ocean-800 mb-4">{t('areas.highlights')}</h3>
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                  {area.highlights.map((h, i) => (
                    <div key={i} className="flex items-center gap-3 bg-ocean-50 rounded-xl p-4">
                      <Star className="w-5 h-5 text-sun-500 flex-shrink-0" />
                      <span className="text-ocean-700 font-medium text-sm">{h}</span>
                    </div>
                  ))}
                </div>
              </div>
            )}

            <div>
              <h3 className="font-display text-xl font-semibold text-ocean-800 mb-6">
                {t('areas.businessesIn', { name: area.name })}
              </h3>
              {Object.keys(categorized).length === 0 ? (
                <p className="text-gray-500">{t('areas.noBusinessesYet')}</p>
              ) : (
                <div className="space-y-6">
                  {Object.entries(categorized).map(([catName, bizList]) => (
                    <div key={catName}>
                      <h4 className="text-sm font-semibold text-ocean-600 uppercase tracking-wider mb-3">
                        {catName}
                      </h4>
                      <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                        {bizList.map((biz) => (
                          <Link
                            key={biz.id}
                            to={l(`/profile/${biz.slug}`)}
                            className="card p-4 hover:-translate-y-0.5 transition-transform"
                          >
                            <h5 className="font-semibold text-ocean-800 text-sm mb-1">{biz.name}</h5>
                            <p className="text-xs text-gray-500 line-clamp-2">{biz.description}</p>
                          </Link>
                        ))}
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </div>

            <FAQSection
              faqs={faqs}
              title={t('areas.faqTitle', { name: area.name })}
            />
          </div>

          <aside>
            <div className="card p-6 sticky top-28">
              <h3 className="font-display text-lg font-semibold text-ocean-800 mb-4">{t('areas.locationTitle')}</h3>
              <div className="aspect-square rounded-xl bg-ocean-50 flex items-center justify-center mb-4 overflow-hidden">
                <iframe
                  title={`Map of ${area.name}`}
                  width="100%"
                  height="100%"
                  style={{ border: 0 }}
                  loading="lazy"
                  referrerPolicy="no-referrer-when-downgrade"
                  src={`https://www.openstreetmap.org/export/embed.html?bbox=${area.longitude - 0.02}%2C${area.latitude - 0.015}%2C${area.longitude + 0.02}%2C${area.latitude + 0.015}&layer=mapnik&marker=${area.latitude}%2C${area.longitude}`}
                />
              </div>
              <a
                href={`https://www.openstreetmap.org/?mlat=${area.latitude}&mlon=${area.longitude}#map=15/${area.latitude}/${area.longitude}`}
                target="_blank"
                rel="noopener noreferrer"
                className="inline-flex items-center gap-1 text-ocean-500 hover:text-sun-500 text-sm font-medium transition-colors"
              >
                {t('areas.viewLargerMap')} <ExternalLink className="w-3.5 h-3.5" />
              </a>

              <div className="border-t border-gray-100 mt-5 pt-5">
                <h4 className="font-semibold text-ocean-800 text-sm mb-2">{t('areas.coordinates')}</h4>
                <p className="text-xs text-gray-500">
                  {area.latitude.toFixed(4)}, {area.longitude.toFixed(4)}
                </p>
              </div>
            </div>
          </aside>
        </div>
      </section>
    </div>
  );
}
