import { Link } from 'react-router-dom';
import { MapPin, Phone, Globe, Star, ArrowRight } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../../hooks/useLanguage';
import type { BusinessWithRelations } from '../../types/database';

interface BusinessCardProps {
  business: BusinessWithRelations;
}

export default function BusinessCard({ business }: BusinessCardProps) {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();

  return (
    <div className="card p-5 flex flex-col group hover:-translate-y-0.5 transition-all duration-300">
      <div className="flex items-start justify-between gap-3 mb-2">
        <Link
          to={l(`/profile/${business.slug || business.id}`)}
          className="font-semibold text-ocean-800 text-lg leading-snug hover:text-ocean-500 transition-colors"
        >
          {business.name}
        </Link>
        {business.rating && (
          <div className="flex items-center gap-1 bg-sun-50 text-sun-600 px-2 py-0.5 rounded-md flex-shrink-0">
            <Star className="w-3.5 h-3.5 fill-current" />
            <span className="text-xs font-semibold">{business.rating}</span>
          </div>
        )}
      </div>

      {business.description && (
        <p className="text-sm text-gray-500 mb-3 flex-1 line-clamp-2">{business.description}</p>
      )}

      <div className="flex flex-wrap items-center gap-2 mb-3">
        {business.categories && (
          <span className="inline-flex items-center text-xs font-medium text-ocean-600 bg-ocean-50 px-2 py-0.5 rounded-md">
            {business.categories.name}
          </span>
        )}
        {business.areas && (
          <span className="inline-flex items-center gap-1 text-xs font-medium text-sun-600 bg-sun-50 px-2 py-0.5 rounded-md">
            <MapPin className="w-3 h-3" />
            {business.areas.name}
          </span>
        )}
      </div>

      <div className="space-y-1.5 pt-3 border-t border-gray-100">
        {business.phone && (
          <a
            href={`tel:${business.phone}`}
            className="flex items-center gap-2 text-xs text-gray-500 hover:text-ocean-500 transition-colors"
          >
            <Phone className="w-3.5 h-3.5 flex-shrink-0" />
            {business.phone}
          </a>
        )}
        {business.website && (
          <a
            href={business.website.startsWith('http') ? business.website : `https://${business.website}`}
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-2 text-xs text-gray-500 hover:text-ocean-500 transition-colors"
          >
            <Globe className="w-3.5 h-3.5 flex-shrink-0" />
            {business.website}
          </a>
        )}
        {!business.phone && !business.email && !business.website && (
          <p className="text-xs text-gray-400 italic">{t('businesses.contactSoon')}</p>
        )}
      </div>

      <Link
        to={l(`/profile/${business.slug || business.id}`)}
        className="mt-3 pt-3 border-t border-gray-100 flex items-center gap-1 text-xs font-medium
                   text-ocean-500 hover:text-sun-500 transition-colors"
      >
        {t('businesses.viewProfile')} <ArrowRight className="w-3 h-3" />
      </Link>
    </div>
  );
}
