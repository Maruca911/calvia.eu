import { Link } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { MapPin } from 'lucide-react';
import { useAreas } from '../hooks/useAreas';
import { usePageMeta } from '../hooks/usePageMeta';
import { useLocalizedPath } from '../hooks/useLanguage';

export default function AreasPage() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const { areas, loading } = useAreas();
  usePageMeta(
    t('seo.areasTitle'),
    t('seo.areasDesc')
  );

  return (
    <div className="pt-24 pb-16">
      <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-16">
        <div className="container-wide text-center">
          <h1 className="font-display text-4xl lg:text-5xl font-bold text-white mb-4">
            {t('areas.title')}
          </h1>
          <p className="text-ocean-100 max-w-2xl mx-auto">
            {t('areas.desc')}
          </p>
        </div>
      </section>

      <section className="container-wide py-12">
        {loading ? (
          <div className="flex items-center justify-center py-20">
            <div className="w-8 h-8 border-4 border-ocean-200 border-t-ocean-500 rounded-full animate-spin" />
          </div>
        ) : (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {areas.map((area) => (
              <Link
                key={area.id}
                to={l(`/areas/${area.slug}`)}
                className="group relative overflow-hidden rounded-2xl aspect-[16/10] shadow-sm hover:shadow-xl transition-all duration-300"
              >
                <img
                  src={area.image_url}
                  alt={area.name}
                  loading="lazy"
                  className="absolute inset-0 w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent" />
                <div className="absolute bottom-0 left-0 right-0 p-5">
                  <div className="flex items-center gap-1.5 text-sun-400 text-xs mb-2">
                    <MapPin className="w-3.5 h-3.5" />
                    {t('areas.calviaMallorca')}
                  </div>
                  <h3 className="font-display text-xl font-semibold text-white mb-1">{area.name}</h3>
                  <p className="text-white/70 text-sm line-clamp-2">{area.description}</p>
                  {area.highlights.length > 0 && (
                    <div className="flex flex-wrap gap-1.5 mt-3">
                      {area.highlights.slice(0, 3).map((h, i) => (
                        <span key={i} className="bg-white/20 text-white text-xs px-2 py-0.5 rounded-full backdrop-blur-sm">
                          {h}
                        </span>
                      ))}
                    </div>
                  )}
                </div>
              </Link>
            ))}
          </div>
        )}
      </section>
    </div>
  );
}
