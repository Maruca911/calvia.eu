import { useState } from 'react';
import { useTranslation } from 'react-i18next';
import { ChevronLeft, ChevronRight, SlidersHorizontal, X, Lightbulb } from 'lucide-react';
import { useCategories } from '../hooks/useCategories';
import { useAreas } from '../hooks/useAreas';
import { useBusinesses } from '../hooks/useBusinesses';
import BusinessCard from '../components/businesses/BusinessCard';
import BusinessFilters from '../components/businesses/BusinessFilters';
import SuggestBusinessForm from '../components/businesses/SuggestBusinessForm';
import SearchBar from '../components/layout/SearchBar';
import { getIcon } from '../lib/icons';
import { usePageMeta } from '../hooks/usePageMeta';
import { useTranslatedList } from '../hooks/useTranslatedContent';

export default function BusinessesPage() {
  const { t } = useTranslation();
  usePageMeta(
    t('seo.businessesTitle'),
    t('seo.businessesDesc')
  );
  const { categories: rawCategories, loading: catsLoading } = useCategories();
  const { areas: rawAreas, loading: areasLoading } = useAreas();
  const categories = useTranslatedList('category', rawCategories, ['name', 'description']);
  const areas = useTranslatedList('area', rawAreas, ['name', 'description']);
  const [selectedCategory, setSelectedCategory] = useState('');
  const [selectedArea, setSelectedArea] = useState('');
  const [minRating, setMinRating] = useState(0);
  const [openNow, setOpenNow] = useState(false);
  const [page, setPage] = useState(1);
  const [filtersOpen, setFiltersOpen] = useState(false);

  const { businesses, totalCount, totalPages, loading } = useBusinesses(
    selectedCategory || undefined,
    selectedArea || undefined,
    page,
    minRating || undefined,
    openNow
  );

  function handleCategoryChange(id: string) {
    setSelectedCategory(id);
    setPage(1);
  }

  function handleAreaChange(id: string) {
    setSelectedArea(id);
    setPage(1);
  }

  function handleMinRatingChange(rating: number) {
    setMinRating(rating);
    setPage(1);
  }

  function handleOpenNowChange(open: boolean) {
    setOpenNow(open);
    setPage(1);
  }

  function handleReset() {
    setSelectedCategory('');
    setSelectedArea('');
    setMinRating(0);
    setOpenNow(false);
    setPage(1);
  }

  const hasFilters = selectedCategory || selectedArea || minRating > 0 || openNow;
  const isLoading = loading || catsLoading || areasLoading;
  const [suggestOpen, setSuggestOpen] = useState(false);

  return (
    <div className="pt-24 pb-16">
      <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-16">
        <div className="container-wide text-center">
          <h1 className="font-display text-4xl lg:text-5xl font-bold text-white mb-4">
            {t('businesses.title')}
          </h1>
          <p className="text-ocean-100 max-w-2xl mx-auto mb-8">
            {t('businesses.desc')}
          </p>
          <div className="max-w-xl mx-auto">
            <SearchBar />
          </div>
        </div>
      </section>

      {!catsLoading && (
        <section className="container-wide py-8 border-b border-gray-100">
          <div className="flex flex-wrap gap-2 justify-center">
            <button
              onClick={handleReset}
              className={`px-4 py-2 rounded-full text-sm font-medium transition-all duration-200
                ${!hasFilters
                  ? 'bg-ocean-500 text-white shadow-sm'
                  : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
                }`}
            >
              {t('businesses.all')}
            </button>
            {categories.map((cat) => {
              const Icon = getIcon(cat.icon_name);
              const isActive = selectedCategory === cat.id;
              return (
                <button
                  key={cat.id}
                  onClick={() => handleCategoryChange(isActive ? '' : cat.id)}
                  className={`inline-flex items-center gap-1.5 px-4 py-2 rounded-full text-sm font-medium transition-all duration-200
                    ${isActive
                      ? 'bg-ocean-500 text-white shadow-sm'
                      : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
                    }`}
                >
                  <Icon className="w-3.5 h-3.5" />
                  {cat.name}
                </button>
              );
            })}
          </div>
        </section>
      )}

      <section className="container-wide py-8">
        <div className="lg:grid lg:grid-cols-[280px_1fr] lg:gap-8">
          <button
            onClick={() => setFiltersOpen(!filtersOpen)}
            className="lg:hidden flex items-center gap-2 mb-4 text-sm font-medium text-ocean-700
                       bg-ocean-50 px-4 py-2.5 rounded-lg w-full justify-center"
          >
            <SlidersHorizontal className="w-4 h-4" />
            {filtersOpen ? t('businesses.hideFilters') : t('businesses.showFilters')}
            {hasFilters && (
              <span className="bg-ocean-500 text-white text-xs px-1.5 py-0.5 rounded-full">
                {(selectedCategory ? 1 : 0) + (selectedArea ? 1 : 0) + (minRating > 0 ? 1 : 0) + (openNow ? 1 : 0)}
              </span>
            )}
          </button>

          <aside className={`${filtersOpen ? 'block' : 'hidden'} lg:block mb-6 lg:mb-0`}>
            <div className="space-y-4 sticky top-28">
              <div className="card p-5">
                <BusinessFilters
                  categories={categories}
                  areas={areas}
                  selectedCategory={selectedCategory}
                  selectedArea={selectedArea}
                  minRating={minRating}
                  openNow={openNow}
                  onCategoryChange={handleCategoryChange}
                  onAreaChange={handleAreaChange}
                  onMinRatingChange={handleMinRatingChange}
                  onOpenNowChange={handleOpenNowChange}
                  onReset={handleReset}
                  resultCount={totalCount}
                />
              </div>
              <button
                onClick={() => setSuggestOpen(true)}
                className="w-full card p-4 flex items-center gap-3 hover:border-ocean-200 hover:shadow-md transition-all group text-left"
              >
                <div className="w-9 h-9 rounded-lg bg-ocean-50 flex items-center justify-center flex-shrink-0 group-hover:bg-ocean-100 transition-colors">
                  <Lightbulb className="w-4 h-4 text-ocean-500" />
                </div>
                <div>
                  <p className="text-sm font-semibold text-ocean-800">{t('suggest.buttonTitle')}</p>
                  <p className="text-xs text-gray-500">{t('suggest.buttonDesc')}</p>
                </div>
              </button>
            </div>
          </aside>

          <div>
            {hasFilters && (
              <div className="flex items-center gap-3 mb-4">
                <p className="text-sm text-gray-500">
                  {t('businesses.showing')} {totalCount} {totalCount === 1 ? t('businesses.result') : t('businesses.results')}
                </p>
                <button
                  onClick={handleReset}
                  className="text-xs text-ocean-500 hover:text-ocean-700 font-medium flex items-center gap-1 transition-colors"
                >
                  <X className="w-3 h-3" /> {t('businesses.clearFilters')}
                </button>
              </div>
            )}

            {isLoading ? (
              <div className="flex items-center justify-center py-20">
                <div className="w-8 h-8 border-4 border-ocean-200 border-t-ocean-500 rounded-full animate-spin" />
              </div>
            ) : businesses.length === 0 ? (
              <div className="text-center py-20">
                <p className="text-gray-500 text-lg mb-2">{t('businesses.noBusinesses')}</p>
                <p className="text-gray-400 text-sm mb-6">{t('businesses.tryAdjusting')}</p>
                <button
                  onClick={handleReset}
                  className="text-ocean-500 hover:text-ocean-700 font-medium text-sm transition-colors"
                >
                  {t('businesses.clearAll')}
                </button>
              </div>
            ) : (
              <>
                <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-4">
                  {businesses.map((biz: any) => (
                    <BusinessCard key={biz.id} business={biz} />
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
                      {Array.from({ length: Math.min(totalPages, 7) }, (_, i) => {
                        let p: number;
                        if (totalPages <= 7) {
                          p = i + 1;
                        } else if (page <= 4) {
                          p = i + 1;
                        } else if (page >= totalPages - 3) {
                          p = totalPages - 6 + i;
                        } else {
                          p = page - 3 + i;
                        }
                        return (
                          <button
                            key={p}
                            onClick={() => setPage(p)}
                            className={`w-10 h-10 rounded-lg text-sm font-medium transition-colors
                              ${p === page
                                ? 'bg-ocean-500 text-white'
                                : 'text-ocean-700 hover:bg-ocean-50'
                              }`}
                          >
                            {p}
                          </button>
                        );
                      })}
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
              </>
            )}
          </div>
        </div>
      </section>

      {suggestOpen && (
        <div
          className="fixed inset-0 z-50 bg-black/50 flex items-center justify-center p-4"
          onClick={(e) => { if (e.target === e.currentTarget) setSuggestOpen(false); }}
        >
          <div className="bg-white rounded-2xl shadow-2xl w-full max-w-2xl max-h-[90vh] overflow-y-auto">
            <div className="flex items-center justify-between px-6 pt-6 pb-4 border-b border-gray-100">
              <div className="flex items-center gap-2">
                <Lightbulb className="w-5 h-5 text-ocean-500" />
                <h2 className="font-display text-xl font-bold text-ocean-800">{t('suggest.title')}</h2>
              </div>
              <button
                onClick={() => setSuggestOpen(false)}
                className="text-gray-400 hover:text-gray-600 transition-colors"
              >
                <X className="w-5 h-5" />
              </button>
            </div>
            <div className="px-6 pb-6 pt-5">
              <SuggestBusinessForm onClose={() => setSuggestOpen(false)} />
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
