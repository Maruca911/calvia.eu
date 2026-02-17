import { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { ChevronLeft, ChevronRight, MapPin, Phone, Mail, Globe, Star } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../hooks/useLanguage';
import { supabase } from '../lib/supabase';
import { useBusinesses } from '../hooks/useBusinesses';
import { useFAQs } from '../hooks/useFAQs';
import type { Category } from '../types/database';
import { getIcon } from '../lib/icons';
import FAQSection from '../components/ui/FAQSection';

export default function CategoryPage() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const { slug } = useParams<{ slug: string }>();
  const [category, setCategory] = useState<Category | null>(null);
  const [page, setPage] = useState(1);
  const { faqs } = useFAQs('category', slug);

  useEffect(() => {
    async function fetchCat() {
      const { data } = await supabase
        .from('categories')
        .select('*')
        .eq('slug', slug)
        .maybeSingle();
      setCategory(data);
    }
    fetchCat();
    setPage(1);
  }, [slug]);

  const { businesses, totalCount, totalPages, loading } = useBusinesses(
    category?.id,
    undefined,
    page
  );

  useEffect(() => {
    if (category) {
      document.title = `${category.name} in Calvia, Mallorca | Calvia.app`;
      const meta = document.querySelector('meta[name="description"]');
      if (meta) meta.setAttribute('content', category.description || `Find ${category.name.toLowerCase()} across 23 areas in Calvia, Mallorca. Verified local businesses with contact details.`);
    }
    return () => {
      document.title = "Calvia.app - The Modern Yellow Pages of Mallorca's Southwest";
    };
  }, [category]);

  if (!category && !loading) {
    return (
      <div className="pt-24 pb-16 text-center container-wide">
        <h1 className="font-display text-3xl font-bold text-ocean-800 mt-16">{t('category.notFound')}</h1>
        <Link to={l('/businesses')} className="text-ocean-500 hover:text-sun-500 mt-4 inline-block">
          {t('category.backToCategories')}
        </Link>
      </div>
    );
  }

  const Icon = category ? getIcon(category.icon_name) : null;

  return (
    <div className="pt-24 pb-16">
      <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-16">
        <div className="container-wide">
          <Link
            to={l('/businesses')}
            className="inline-flex items-center gap-1 text-ocean-200 hover:text-white transition-colors text-sm mb-6"
          >
            <ChevronLeft className="w-4 h-4" /> {t('category.allCategories')}
          </Link>
          <div className="flex items-center gap-4">
            {Icon && (
              <div className="w-14 h-14 rounded-2xl bg-white/10 flex items-center justify-center">
                <Icon className="w-7 h-7 text-white" />
              </div>
            )}
            <div>
              <h1 className="font-display text-3xl lg:text-4xl font-bold text-white">
                {category?.name}
              </h1>
              <p className="text-ocean-200 mt-1">{totalCount} {t('category.businessesFound')}</p>
            </div>
          </div>
        </div>
      </section>

      <section className="container-wide py-10">
        {loading ? (
          <div className="flex items-center justify-center py-20">
            <div className="w-8 h-8 border-4 border-ocean-200 border-t-ocean-500 rounded-full animate-spin" />
          </div>
        ) : (
          <>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-5">
              {businesses.map((biz: any) => (
                <Link
                  key={biz.id}
                  to={l(`/profile/${biz.slug}`)}
                  className="card p-5 flex flex-col hover:-translate-y-1 transition-all duration-300"
                >
                  <div className="flex items-start justify-between gap-2 mb-2">
                    <h3 className="font-semibold text-ocean-800 text-lg">{biz.name}</h3>
                    {biz.rating && (
                      <span className="inline-flex items-center gap-1 bg-sun-50 text-sun-600 text-xs font-semibold px-2 py-0.5 rounded-full flex-shrink-0">
                        <Star className="w-3 h-3 fill-current" />
                        {biz.rating}
                      </span>
                    )}
                  </div>
                  <p className="text-sm text-gray-500 mb-4 flex-1 line-clamp-3">{biz.description}</p>

                  {biz.areas && (
                    <div className="flex items-center gap-1 text-xs text-sun-600 mb-3">
                      <MapPin className="w-3.5 h-3.5" />
                      {biz.areas.name}
                    </div>
                  )}

                  <div className="space-y-1.5 pt-3 border-t border-gray-100">
                    {biz.phone && (
                      <div className="flex items-center gap-2 text-xs text-gray-500">
                        <Phone className="w-3.5 h-3.5" /> {biz.phone}
                      </div>
                    )}
                    {biz.email && (
                      <div className="flex items-center gap-2 text-xs text-gray-500">
                        <Mail className="w-3.5 h-3.5" /> {biz.email}
                      </div>
                    )}
                    {biz.website && (
                      <div className="flex items-center gap-2 text-xs text-gray-500">
                        <Globe className="w-3.5 h-3.5" /> {biz.website}
                      </div>
                    )}
                    {!biz.phone && !biz.email && !biz.website && (
                      <p className="text-xs text-gray-400 italic">{t('businesses.contactSoon')}</p>
                    )}
                  </div>
                </Link>
              ))}
            </div>

            {totalPages > 1 && (
              <div className="flex items-center justify-center gap-3 mt-10">
                <button
                  onClick={() => setPage(Math.max(1, page - 1))}
                  disabled={page === 1}
                  className="flex items-center gap-1 px-4 py-2 rounded-lg border border-gray-200
                             disabled:opacity-40 disabled:cursor-not-allowed
                             hover:bg-ocean-50 transition-colors text-sm font-medium text-ocean-700"
                >
                  <ChevronLeft className="w-4 h-4" /> {t('businesses.previous')}
                </button>
                <div className="flex items-center gap-1">
                  {Array.from({ length: totalPages }, (_, i) => i + 1).map((p) => (
                    <button
                      key={p}
                      onClick={() => setPage(p)}
                      className={`w-10 h-10 rounded-lg text-sm font-medium transition-colors
                                 ${p === page
                                   ? 'bg-ocean-500 text-white'
                                   : 'text-ocean-700 hover:bg-ocean-50'}`}
                    >
                      {p}
                    </button>
                  ))}
                </div>
                <button
                  onClick={() => setPage(Math.min(totalPages, page + 1))}
                  disabled={page === totalPages}
                  className="flex items-center gap-1 px-4 py-2 rounded-lg border border-gray-200
                             disabled:opacity-40 disabled:cursor-not-allowed
                             hover:bg-ocean-50 transition-colors text-sm font-medium text-ocean-700"
                >
                  {t('businesses.next')} <ChevronRight className="w-4 h-4" />
                </button>
              </div>
            )}
            {faqs.length > 0 && (
              <div className="mt-12">
                <FAQSection faqs={faqs} />
              </div>
            )}
          </>
        )}
      </section>
    </div>
  );
}
