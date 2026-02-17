import { Link } from 'react-router-dom';
import { MapPin, Phone, Globe, Star, ArrowRight, ImageOff } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../../hooks/useLanguage';
import { getIcon } from '../../lib/icons';
import type { BusinessWithRelations } from '../../types/database';

interface BusinessCardProps {
  business: BusinessWithRelations;
}

export default function BusinessCard({ business }: BusinessCardProps) {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const CategoryIcon = business.categories ? getIcon(business.categories.icon_name) : null;

  return (
    <div className="card group hover:-translate-y-0.5 transition-all duration-300 overflow-hidden flex flex-col">
      <Link to={l(`/profile/${business.slug || business.id}`)} className="block relative">
        {business.image_url ? (
          <img
            src={business.image_url}
            alt={business.name}
            loading="lazy"
            className="w-full h-44 object-cover group-hover:scale-105 transition-transform duration-500"
          />
        ) : (
          <div className="w-full h-44 bg-gradient-to-br from-ocean-50 to-sand-100 flex items-center justify-center">
            {CategoryIcon ? (
              <CategoryIcon className="w-12 h-12 text-ocean-200" />
            ) : (
              <ImageOff className="w-10 h-10 text-gray-200" />
            )}
          </div>
        )}
        {business.rating && (
          <div className="absolute top-3 right-3 flex items-center gap-1 bg-white/90 backdrop-blur-sm text-sun-600 px-2 py-1 rounded-lg shadow-sm">
            <Star className="w-3.5 h-3.5 fill-current" />
            <span className="text-xs font-bold">{business.rating}</span>
          </div>
        )}
      </Link>

      <div className="p-5 flex flex-col flex-1">
        <div className="flex items-start justify-between gap-3 mb-2">
          <Link
            to={l(`/profile/${business.slug || business.id}`)}
            className="font-semibold text-ocean-800 text-lg leading-snug hover:text-ocean-500 transition-colors"
          >
            {business.name}
          </Link>
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
    </div>
  );
}
