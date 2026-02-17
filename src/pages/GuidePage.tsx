import { useEffect, useMemo } from 'react';
import { useParams, Link } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { ChevronLeft, MapPin, Tag, Calendar } from 'lucide-react';
import DOMPurify from 'dompurify';
import { useGuide } from '../hooks/useGuide';
import { useFAQs } from '../hooks/useFAQs';
import { useLocalizedPath } from '../hooks/useLanguage';
import FAQSection from '../components/ui/FAQSection';

function GuideSkeleton() {
  return (
    <div className="pt-24 pb-16">
      <div className="container-wide py-12">
        <div className="animate-pulse space-y-6">
          <div className="h-6 w-32 bg-gray-200 rounded" />
          <div className="h-10 w-3/4 bg-gray-200 rounded" />
          <div className="h-4 w-full bg-gray-200 rounded" />
          <div className="h-4 w-2/3 bg-gray-200 rounded" />
          <div className="h-64 bg-gray-200 rounded-xl" />
        </div>
      </div>
    </div>
  );
}

export default function GuidePage() {
  const { slug } = useParams<{ slug: string }>();
  const { guide, loading } = useGuide(slug);
  const { faqs } = useFAQs('guide', slug);
  const { t } = useTranslation();
  const { l, lang } = useLocalizedPath();
  const sanitizedContent = useMemo(
    () => (guide ? DOMPurify.sanitize(guide.content) : ''),
    [guide]
  );

  useEffect(() => {
    if (guide) {
      document.title = guide.meta_title || `${guide.title} | Calvia.app`;
      const meta = document.querySelector('meta[name="description"]');
      if (meta) meta.setAttribute('content', guide.meta_description || guide.description);
    }
    return () => {
      document.title = "Calvia.app - The Modern Yellow Pages of Mallorca's Southwest";
    };
  }, [guide]);

  if (loading) return <GuideSkeleton />;

  if (!guide) {
    return (
      <div className="pt-24 pb-16">
        <div className="container-wide py-20 text-center">
          <h1 className="font-display text-3xl font-bold text-ocean-800 mb-4">
            {t('guides.guideNotFound')}
          </h1>
          <p className="text-gray-500 mb-8">
            {t('guides.guideNotFoundDesc')}
          </p>
          <Link to={l('/guides')} className="btn-primary inline-flex items-center gap-2">
            <ChevronLeft className="w-4 h-4" /> {t('guides.allGuidesLink')}
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className="pt-24 pb-16">
      <section className="relative overflow-hidden">
        {guide.image_url ? (
          <>
            <img
              src={guide.image_url}
              alt={guide.title}
              className="absolute inset-0 w-full h-full object-cover"
            />
            <div className="absolute inset-0 bg-gradient-to-t from-ocean-900/80 via-ocean-900/40 to-ocean-900/20" />
          </>
        ) : (
          <div className="absolute inset-0 bg-gradient-to-br from-ocean-500 to-ocean-700" />
        )}

        <div className="relative py-16 lg:py-24">
          <div className="container-wide">
            <Link
              to={l('/guides')}
              className="inline-flex items-center gap-1 text-ocean-200 hover:text-white transition-colors text-sm mb-6"
            >
              <ChevronLeft className="w-4 h-4" /> {t('guides.allGuidesLink')}
            </Link>
            <h1 className="font-display text-3xl lg:text-5xl font-bold text-white mb-4 max-w-3xl">
              {guide.title}
            </h1>
            <p className="text-ocean-100 text-lg max-w-2xl">{guide.description}</p>

            <div className="flex flex-wrap items-center gap-3 mt-6">
              {guide.area_slug && (
                <Link
                  to={l(`/areas/${guide.area_slug}`)}
                  className="inline-flex items-center gap-1.5 bg-white/15 backdrop-blur-sm text-white
                             text-sm px-3 py-1.5 rounded-full hover:bg-white/25 transition-colors"
                >
                  <MapPin className="w-3.5 h-3.5" />
                  {guide.area_slug.replace(/-/g, ' ').replace(/\b\w/g, c => c.toUpperCase())}
                </Link>
              )}
              {guide.category_slug && (
                <Link
                  to={l(`/businesses/${guide.category_slug}`)}
                  className="inline-flex items-center gap-1.5 bg-white/15 backdrop-blur-sm text-white
                             text-sm px-3 py-1.5 rounded-full hover:bg-white/25 transition-colors"
                >
                  <Tag className="w-3.5 h-3.5" />
                  {guide.category_slug.replace(/-/g, ' ').replace(/\b\w/g, c => c.toUpperCase())}
                </Link>
              )}
              <span className="inline-flex items-center gap-1.5 text-ocean-200 text-sm">
                <Calendar className="w-3.5 h-3.5" />
                {new Date(guide.updated_at).toLocaleDateString(lang === 'en' ? 'en-GB' : lang, {
                  month: 'long',
                  year: 'numeric',
                })}
              </span>
            </div>
          </div>
        </div>
      </section>

      <section className="container-wide py-10 lg:py-14">
        <div className="max-w-3xl">
          <div
            className="prose prose-lg prose-ocean max-w-none
                       prose-headings:font-display prose-headings:text-ocean-800
                       prose-p:text-gray-600 prose-p:leading-relaxed
                       prose-a:text-ocean-500 prose-a:no-underline hover:prose-a:text-sun-500
                       prose-strong:text-ocean-800"
            dangerouslySetInnerHTML={{ __html: sanitizedContent }}
          />

          <FAQSection faqs={faqs} />
        </div>
      </section>
    </div>
  );
}
