import { X, SlidersHorizontal } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import type { Category, Area } from '../../types/database';

interface BusinessFiltersProps {
  categories: Category[];
  areas: Area[];
  selectedCategory: string;
  selectedArea: string;
  onCategoryChange: (id: string) => void;
  onAreaChange: (id: string) => void;
  onReset: () => void;
  resultCount: number;
}

export default function BusinessFilters({
  categories,
  areas,
  selectedCategory,
  selectedArea,
  onCategoryChange,
  onAreaChange,
  onReset,
  resultCount,
}: BusinessFiltersProps) {
  const { t } = useTranslation();
  const hasFilters = selectedCategory || selectedArea;

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

      <div className="pt-3 border-t border-gray-100">
        <p className="text-xs text-gray-400">
          {resultCount} {resultCount === 1 ? t('filters.businessFound') : t('filters.businessesFound')}
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
        </div>
      )}
    </div>
  );
}
