import { useState, useRef, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { Search, X, MapPin, Tag, Store, Loader2, ArrowRight } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../../hooks/useLanguage';
import { useSearch } from '../../hooks/useSearch';

interface SearchBarProps {
  onClose?: () => void;
  initialQuery?: string;
}

export default function SearchBar({ onClose, initialQuery = '' }: SearchBarProps) {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const [query, setQuery] = useState(initialQuery);
  const [open, setOpen] = useState(false);
  const { results, loading } = useSearch(query);
  const navigate = useNavigate();
  const inputRef = useRef<HTMLInputElement>(null);
  const wrapperRef = useRef<HTMLDivElement>(null);

  const hasResults =
    results.categories.length > 0 ||
    results.areas.length > 0 ||
    results.businesses.length > 0;

  useEffect(() => {
    function handleClickOutside(e: MouseEvent) {
      if (wrapperRef.current && !wrapperRef.current.contains(e.target as Node)) {
        setOpen(false);
      }
    }
    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  useEffect(() => {
    setQuery(initialQuery);
  }, [initialQuery]);

  function handleSelect(path: string) {
    setQuery('');
    setOpen(false);
    onClose?.();
    navigate(path);
  }

  function goToAllResults() {
    const trimmed = query.trim();
    if (trimmed.length < 2) return;
    handleSelect(l(`/businesses?q=${encodeURIComponent(trimmed)}`));
  }

  return (
    <div ref={wrapperRef} className="relative w-full max-w-xl">
      <div className="relative">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" />
        <input
          ref={inputRef}
          type="text"
          value={query}
          onChange={(e) => {
            setQuery(e.target.value);
            setOpen(true);
          }}
          onFocus={() => setOpen(true)}
          onKeyDown={(e) => {
            if (e.key === 'Enter') {
              e.preventDefault();
              goToAllResults();
            }
          }}
          placeholder={t('search.placeholder')}
          className="w-full pl-10 pr-10 py-3 rounded-xl border border-gray-200 bg-white
                     text-ocean-800 placeholder:text-gray-400
                     focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400
                     transition-all text-sm"
        />
        {query && (
          <button
            onClick={() => {
              setQuery('');
              inputRef.current?.focus();
            }}
            className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 hover:text-gray-600"
          >
            <X className="w-4 h-4" />
          </button>
        )}
      </div>

      {open && query.length >= 2 && (
        <div className="absolute top-full mt-2 w-full bg-white rounded-xl shadow-lg border border-gray-100 z-50 overflow-hidden animate-slide-down">
          {loading && (
            <div className="flex items-center gap-2 px-4 py-3 text-sm text-gray-500">
              <Loader2 className="w-4 h-4 animate-spin" />
              {t('search.searching')}
            </div>
          )}

          {!loading && !hasResults && (
            <div className="px-4 py-6 text-center text-sm text-gray-500">
              {t('search.noResults')}
            </div>
          )}

          {!loading && hasResults && (
            <div className="max-h-80 overflow-y-auto">
              {results.categories.length > 0 && (
                <div>
                  <div className="px-4 py-2 text-xs font-semibold text-gray-400 uppercase tracking-wider bg-gray-50">
                    {t('search.categoriesLabel')}
                  </div>
                  {results.categories.map((cat) => (
                    <button
                      key={cat.id}
                      onClick={() => handleSelect(l(`/businesses/${cat.slug}`))}
                      className="w-full flex items-center gap-3 px-4 py-3 hover:bg-ocean-50 transition-colors text-left"
                    >
                      <Tag className="w-4 h-4 text-ocean-500 flex-shrink-0" />
                      <span className="text-sm text-ocean-800">{cat.name}</span>
                    </button>
                  ))}
                </div>
              )}

              {results.areas.length > 0 && (
                <div>
                  <div className="px-4 py-2 text-xs font-semibold text-gray-400 uppercase tracking-wider bg-gray-50">
                    {t('search.areasLabel')}
                  </div>
                  {results.areas.map((area) => (
                    <button
                      key={area.id}
                      onClick={() => handleSelect(l(`/areas/${area.slug}`))}
                      className="w-full flex items-center gap-3 px-4 py-3 hover:bg-ocean-50 transition-colors text-left"
                    >
                      <MapPin className="w-4 h-4 text-sun-500 flex-shrink-0" />
                      <span className="text-sm text-ocean-800">{area.name}</span>
                    </button>
                  ))}
                </div>
              )}

              {results.businesses.length > 0 && (
                <div>
                  <div className="px-4 py-2 text-xs font-semibold text-gray-400 uppercase tracking-wider bg-gray-50">
                    {t('search.businessesLabel')}
                  </div>
                  {results.businesses.map((biz: any) => (
                    <button
                      key={biz.id}
                      onClick={() =>
                        handleSelect(l(`/profile/${biz.slug || biz.id}`))
                      }
                      className="w-full flex items-center gap-3 px-4 py-3 hover:bg-ocean-50 transition-colors text-left"
                    >
                      <Store className="w-4 h-4 text-gray-400 flex-shrink-0" />
                      <div>
                        <span className="text-sm text-ocean-800 block">{biz.name}</span>
                        <span className="text-xs text-gray-400">
                          {biz.areas?.name}
                        </span>
                      </div>
                    </button>
                  ))}
                </div>
              )}

              <div className="border-t border-gray-100 p-2">
                <button
                  onClick={goToAllResults}
                  className="w-full flex items-center justify-between gap-2 px-3 py-2.5 rounded-lg bg-ocean-50 text-ocean-700 hover:bg-ocean-100 transition-colors text-sm font-medium"
                >
                  <span>{t('businesses.all')} {t('search.businessesLabel')}</span>
                  <ArrowRight className="w-4 h-4" />
                </button>
              </div>
            </div>
          )}
        </div>
      )}
    </div>
  );
}
