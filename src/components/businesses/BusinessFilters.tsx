import { X, SlidersHorizontal, Star, Clock } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import type { Category, Area } from '../../types/database';

interface BusinessFiltersProps {
  categories: Category[];
  areas: Area[];
  selectedCategory: string;
  selectedArea: string;
  minRating: number;
  openNow: boolean;
  onCategoryChange: (id: string) => void;
  onAreaChange: (id: string) => void;
  onMinRatingChange: (rating: number) => void;
  onOpenNowChange: (open: boolean) => void;
  onReset: () => void;
  resultCount: number;
}

const RATING_OPTIONS = [
  { label: '4+', value: 4 },
  { label: '3+', value: 3 },
  { label: '2+', value: 2 },
];

export default function BusinessFilters({
  categories,
  areas,
  selectedCategory,
  selectedArea,
  minRating,
  openNow,
  onCategoryChange,
  onAreaChange,
  onMinRatingChange,
  onOpenNowChange,
  onReset,
  resultCount,
}: BusinessFiltersProps) {
  const { t } = useTranslation();
  const hasFilters = selectedCategory || selectedArea || minRating > 0 || openNow;

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-2 text-ocean-800">
          <SlidersHorizontal className="w-4 h-4" />
          <span className="text-sm font-semibold">{t('filters.title')}</span>
        </div>
        {hasFilters && (
          <button
            onClick={onReset}
            className="flex items-center gap-1 text-xs text-gray-500 hover:text-ocean-500 transition-colors"
          >
            <X className="w-3.5 h-3.5" />
            {t('filters.clearAll')}
          </button>
        )}
      </div>

      <div>
        <label className="block text-xs font-medium text-gray-500 uppercase tracking-wider mb-2">
          {t('filters.category')}
        </label>
        <select
          value={selectedCategory}
          onChange={(e) => onCategoryChange(e.target.value)}
          className="w-full text-sm border border-gray-200 rounded-lg px-3 py-2.5 bg-white
                     text-ocean-800 focus:outline-none focus:ring-2 focus:ring-ocean-300
                     focus:border-ocean-400 transition-all appearance-none
                     bg-[url('data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2216%22%20height%3D%2216%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22none%22%20stroke%3D%22%239ca3af%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22round%22%20stroke-linejoin%3D%22round%22%3E%3Cpolyline%20points%3D%226%209%2012%2015%2018%209%22%3E%3C%2Fpolyline%3E%3C%2Fsvg%3E')]
                     bg-[length:16px] bg-[right_8px_center] bg-no-repeat pr-8"
        >
          <option value="">{t('filters.allCategories')}</option>
          {categories.map((cat) => (
            <option key={cat.id} value={cat.id}>{cat.name}</option>
          ))}
        </select>
      </div>

      <div>
        <label className="block text-xs font-medium text-gray-500 uppercase tracking-wider mb-2">
          {t('filters.location')}
        </label>
        <select
          value={selectedArea}
          onChange={(e) => onAreaChange(e.target.value)}
          className="w-full text-sm border border-gray-200 rounded-lg px-3 py-2.5 bg-white
                     text-ocean-800 focus:outline-none focus:ring-2 focus:ring-ocean-300
                     focus:border-ocean-400 transition-all appearance-none
                     bg-[url('data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2216%22%20height%3D%2216%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22none%22%20stroke%3D%22%239ca3af%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22round%22%20stroke-linejoin%3D%22round%22%3E%3Cpolyline%20points%3D%226%209%2012%2015%2018%209%22%3E%3C%2Fpolyline%3E%3C%2Fsvg%3E')]
                     bg-[length:16px] bg-[right_8px_center] bg-no-repeat pr-8"
        >
          <option value="">{t('filters.allLocations')}</option>
          {areas.map((area) => (
            <option key={area.id} value={area.id}>{area.name}</option>
          ))}
        </select>
      </div>

      <div>
        <label className="block text-xs font-medium text-gray-500 uppercase tracking-wider mb-2">
          {t('filters.minRating')}
        </label>
        <div className="flex gap-1.5">
          {RATING_OPTIONS.map((opt) => (
            <button
              key={opt.value}
              onClick={() => onMinRatingChange(minRating === opt.value ? 0 : opt.value)}
              className={`flex-1 flex items-center justify-center gap-1 py-2 rounded-lg text-xs font-medium border transition-all
                ${minRating === opt.value
                  ? 'bg-sun-500 text-white border-sun-500'
                  : 'bg-white text-gray-600 border-gray-200 hover:border-sun-300 hover:text-sun-600'
                }`}
            >
              <Star className={`w-3 h-3 ${minRating === opt.value ? 'fill-current' : ''}`} />
              {opt.label}
            </button>
          ))}
        </div>
      </div>

      <div>
        <button
          onClick={() => onOpenNowChange(!openNow)}
          className={`w-full flex items-center justify-between px-3 py-2.5 rounded-lg border text-sm font-medium transition-all
            ${openNow
              ? 'bg-green-50 text-green-700 border-green-300'
              : 'bg-white text-gray-600 border-gray-200 hover:border-green-300 hover:text-green-600'
            }`}
        >
          <span className="flex items-center gap-2">
            <Clock className={`w-4 h-4 ${openNow ? 'text-green-600' : 'text-gray-400'}`} />
            {t('filters.openNow')}
          </span>
          <div className={`w-9 h-5 rounded-full transition-colors relative ${openNow ? 'bg-green-500' : 'bg-gray-200'}`}>
            <div className={`absolute top-0.5 w-4 h-4 bg-white rounded-full shadow transition-transform ${openNow ? 'translate-x-4' : 'translate-x-0.5'}`} />
          </div>
        </button>
      </div>

      <div className="pt-3 border-t border-gray-100">
        <p className="text-xs text-gray-500 font-medium">
          {resultCount} {resultCount === 1 ? t('filters.verifiedBusinessFound') : t('filters.verifiedBusinessesFound')}
        </p>
      </div>

      {hasFilters && (
        <div className="flex flex-wrap gap-2">
          {selectedCategory && (
            <span className="inline-flex items-center gap-1 bg-ocean-50 text-ocean-600 text-xs font-medium px-2.5 py-1 rounded-full">
              {categories.find((c) => c.id === selectedCategory)?.name}
              <button onClick={() => onCategoryChange('')} className="hover:text-ocean-800">
                <X className="w-3 h-3" />
              </button>
            </span>
          )}
          {selectedArea && (
            <span className="inline-flex items-center gap-1 bg-sun-50 text-sun-600 text-xs font-medium px-2.5 py-1 rounded-full">
              {areas.find((a) => a.id === selectedArea)?.name}
              <button onClick={() => onAreaChange('')} className="hover:text-sun-800">
                <X className="w-3 h-3" />
              </button>
            </span>
          )}
          {minRating > 0 && (
            <span className="inline-flex items-center gap-1 bg-sun-50 text-sun-600 text-xs font-medium px-2.5 py-1 rounded-full">
              <Star className="w-3 h-3 fill-current" /> {minRating}+
              <button onClick={() => onMinRatingChange(0)} className="hover:text-sun-800">
                <X className="w-3 h-3" />
              </button>
            </span>
          )}
          {openNow && (
            <span className="inline-flex items-center gap-1 bg-green-50 text-green-600 text-xs font-medium px-2.5 py-1 rounded-full">
              <Clock className="w-3 h-3" /> {t('filters.openNow')}
              <button onClick={() => onOpenNowChange(false)} className="hover:text-green-800">
                <X className="w-3 h-3" />
              </button>
            </span>
          )}
        </div>
      )}
    </div>
  );
}
