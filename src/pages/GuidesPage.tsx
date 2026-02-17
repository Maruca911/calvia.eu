import { useEffect, useState, useRef } from 'react';
import { usePageMeta } from '../hooks/usePageMeta';
import { Link, useLocation } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { BookOpen, MapPin, Tag, Calendar, Waves, Mountain, Bike, ChevronRight } from 'lucide-react';
import { useGuides } from '../hooks/useGuide';
import { useLocalizedPath } from '../hooks/useLanguage';
import { useTranslatedList } from '../hooks/useTranslatedContent';
import type { Guide } from '../types/database';

const SUBCATEGORY_IDS = ['all', 'beaches', 'hiking-trails', 'bike-trails'] as const;
const SUBCATEGORY_ICONS = {
  all: BookOpen,
  beaches: Waves,
  'hiking-trails': Mountain,
  'bike-trails': Bike,
} as const;

function filterGuides(guides: Guide[], filter: string): Guide[] {
  if (filter === 'all') return guides;
  return guides.filter(g => g.category_slug === filter);
}

export default function GuidesPage() {
  const { guides: rawGuides, loading } = useGuides();
  const guides = useTranslatedList('guide', rawGuides, ['title', 'description']);
  const [activeFilter, setActiveFilter] = useState('all');
  const location = useLocation();
  const sectionRef = useRef<HTMLDivElement>(null);
  const { t } = useTranslation();
  const { l, lang } = useLocalizedPath();

  const SUBCATEGORIES = SUBCATEGORY_IDS.map(id => ({
    id,
    label: id === 'all' ? t('guides.allGuides')
      : id === 'beaches' ? t('guides.beaches')
      : id === 'hiking-trails' ? t('guides.hikingTrails')
      : t('guides.bikeTrails'),
    icon: SUBCATEGORY_ICONS[id],
  }));

  usePageMeta(t('seo.guidesTitle'), t('seo.guidesDesc'));

  useEffect(() => {
    const hash = location.hash.replace('#', '');
    if (hash && SUBCATEGORY_IDS.some(s => s === hash)) {
      setActiveFilter(hash);
      setTimeout(() => {
        sectionRef.current?.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }, 100);
    }
  }, [location.hash]);

  const filtered = filterGuides(guides, activeFilter);

  const beachGuides = guides.filter(g => g.category_slug === 'beaches');
  const hikingGuides = guides.filter(g => g.category_slug === 'hiking-trails');
  const bikeGuides = guides.filter(g => g.category_slug === 'bike-trails');

  return (
    <div className="pt-24 pb-16">
      <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-16">
        <div className="container-wide">
          <div className="flex items-center gap-4 mb-8">
            <div className="w-14 h-14 rounded-2xl bg-white/10 flex items-center justify-center">
              <BookOpen className="w-7 h-7 text-white" />
            </div>
            <div>
              <h1 className="font-display text-3xl lg:text-4xl font-bold text-white">
                {t('guides.title')}
              </h1>
              <p className="text-ocean-200 mt-1">
                {t('guides.desc')}
              </p>
            </div>
          </div>

          <div className="flex flex-wrap gap-3">
            {SUBCATEGORIES.map((sub) => {
              const count = sub.id === 'all'
                ? guides.length
                : guides.filter(g => g.category_slug === sub.id).length;
              const Icon = sub.icon;
              return (
                <button
                  key={sub.id}
                  onClick={() => {
                    setActiveFilter(sub.id);
                    window.history.replaceState(null, '', sub.id === 'all' ? l('/guides') : `${l('/guides')}#${sub.id}`);
                    sectionRef.current?.scrollIntoView({ behavior: 'smooth', block: 'start' });
                  }}
                  className={`flex items-center gap-2 px-4 py-2.5 rounded-xl text-sm font-medium transition-all duration-200
                    ${activeFilter === sub.id
                      ? 'bg-white text-ocean-700 shadow-lg'
                      : 'bg-white/10 text-white hover:bg-white/20'}`}
                >
                  <Icon className="w-4 h-4" />
                  {sub.label}
                  <span className={`text-xs px-1.5 py-0.5 rounded-full ${
                    activeFilter === sub.id ? 'bg-ocean-100 text-ocean-600' : 'bg-white/10'
                  }`}>
                    {count}
                  </span>
                </button>
              );
            })}
          </div>
        </div>
      </section>

      {activeFilter === 'all' && !loading && guides.length > 0 && (
        <section className="container-wide py-10">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
            {[
              { slug: 'beaches', label: t('guides.beachesAndCoves'), icon: Waves, guides: beachGuides, color: 'from-sky-400 to-cyan-500', desc: t('guides.beachesDesc') },
              { slug: 'hiking-trails', label: t('guides.hikingTrails'), icon: Mountain, guides: hikingGuides, color: 'from-emerald-500 to-green-600', desc: t('guides.hikingDesc') },
              { slug: 'bike-trails', label: t('guides.bikeTrails'), icon: Bike, guides: bikeGuides, color: 'from-orange-400 to-amber-500', desc: t('guides.bikeDesc') },
            ].map((cat) => {
              const Icon = cat.icon;
              return (
                <button
                  key={cat.slug}
                  onClick={() => {
                    setActiveFilter(cat.slug);
                    window.history.replaceState(null, '', `${l('/guides')}#${cat.slug}`);
                    sectionRef.current?.scrollIntoView({ behavior: 'smooth', block: 'start' });
                  }}
                  className="group relative overflow-hidden rounded-2xl text-left transition-all duration-300 hover:-translate-y-1 hover:shadow-xl"
                >
                  <div className={`absolute inset-0 bg-gradient-to-br ${cat.color} opacity-90`} />
                  <div className="relative p-6">
                    <div className="w-12 h-12 rounded-xl bg-white/20 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                      <Icon className="w-6 h-6 text-white" />
                    </div>
                    <h3 className="font-display text-xl font-bold text-white mb-1">{cat.label}</h3>
                    <p className="text-white/80 text-sm mb-4">{cat.desc}</p>
                    <div className="flex items-center gap-1 text-white/90 text-sm font-medium">
                      {cat.guides.length} {cat.guides.length !== 1 ? t('guides.guidePlural') : t('guides.guide')}
                      <ChevronRight className="w-4 h-4 group-hover:translate-x-1 transition-transform" />
                    </div>
                  </div>
                </button>
              );
            })}
          </div>
        </section>
      )}

      <section ref={sectionRef} className="container-wide py-10 scroll-mt-24">
        {loading ? (
          <div className="flex items-center justify-center py-20">
            <div className="w-8 h-8 border-4 border-ocean-200 border-t-ocean-500 rounded-full animate-spin" />
          </div>
        ) : filtered.length === 0 ? (
          <div className="text-center py-20">
            <BookOpen className="w-12 h-12 text-ocean-200 mx-auto mb-4" />
            <h2 className="font-display text-2xl font-bold text-ocean-800 mb-2">
              {t('guides.noGuides')}
            </h2>
            <p className="text-gray-500 max-w-md mx-auto">
              {t('guides.noGuidesDesc')}
            </p>
          </div>
        ) : (
          <>
            {activeFilter !== 'all' && (
              <div className="mb-6">
                <h2 className="font-display text-2xl font-bold text-ocean-800">
                  {SUBCATEGORIES.find(s => s.id === activeFilter)?.label}
                </h2>
                <p className="text-gray-500 mt-1">
                  {filtered.length} {filtered.length !== 1 ? t('guides.guidePlural') : t('guides.guide')} {t('guides.available')}
                </p>
              </div>
            )}
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
              {filtered.map((guide) => (
                <Link
                  key={guide.id}
                  to={l(`/guides/${guide.slug}`)}
                  className="card overflow-hidden group"
                >
                  {guide.image_url && (
                    <div className="aspect-video overflow-hidden">
                      <img
                        src={guide.image_url}
                        alt={guide.title}
                        loading="lazy"
                        className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                      />
                    </div>
                  )}
                  <div className="p-5">
                    <h2 className="font-display text-lg font-semibold text-ocean-800 mb-2 group-hover:text-sun-500 transition-colors">
                      {guide.title}
                    </h2>
                    <p className="text-sm text-gray-500 line-clamp-3 mb-4">{guide.description}</p>
                    <div className="flex flex-wrap items-center gap-2">
                      {guide.area_slug && (
                        <span className="inline-flex items-center gap-1 bg-ocean-50 text-ocean-600 text-xs font-medium px-2 py-1 rounded-full">
                          <MapPin className="w-3 h-3" />
                          {guide.area_slug.replace(/-/g, ' ').replace(/\b\w/g, c => c.toUpperCase())}
                        </span>
                      )}
                      {guide.category_slug && (
                        <span className="inline-flex items-center gap-1 bg-sun-50 text-sun-600 text-xs font-medium px-2 py-1 rounded-full">
                          <Tag className="w-3 h-3" />
                          {guide.category_slug.replace(/-/g, ' ').replace(/\b\w/g, c => c.toUpperCase())}
                        </span>
                      )}
                      <span className="inline-flex items-center gap-1 text-gray-400 text-xs">
                        <Calendar className="w-3 h-3" />
                        {new Date(guide.updated_at).toLocaleDateString(lang === 'en' ? 'en-GB' : lang, {
                          month: 'short',
                          year: 'numeric',
                        })}
                      </span>
                    </div>
                  </div>
                </Link>
              ))}
            </div>
          </>
        )}
      </section>
    </div>
  );
}
