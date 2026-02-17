import { useState } from 'react';
import { MessageSquare, Star } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLanguage } from '../../hooks/useLanguage';
import { useReviews } from '../../hooks/useReviews';
import StarRating from './StarRating';
import ReviewForm from './ReviewForm';
import AuthModal from '../auth/AuthModal';
import type { ReviewWithProfile } from '../../types/database';

interface ReviewSectionProps {
  businessId: string;
}

function ReviewCard({ review }: { review: ReviewWithProfile }) {
  const lang = useLanguage();
  const displayName = review.user_profiles?.display_name || 'Anonymous';
  const date = new Date(review.created_at).toLocaleDateString(lang, {
    day: 'numeric',
    month: 'short',
    year: 'numeric',
  });

  return (
    <div className="border border-gray-100 rounded-xl p-5 hover:shadow-sm transition-shadow">
      <div className="flex items-start justify-between mb-3">
        <div>
          <div className="flex items-center gap-3 mb-1">
            <div className="w-8 h-8 rounded-full bg-ocean-100 flex items-center justify-center">
              <span className="text-sm font-semibold text-ocean-600">
                {displayName.charAt(0).toUpperCase()}
              </span>
            </div>
            <div>
              <p className="text-sm font-medium text-ocean-800">{displayName}</p>
              <p className="text-xs text-gray-400">{date}</p>
            </div>
          </div>
        </div>
        <StarRating rating={review.rating} size="sm" />
      </div>
      {review.title && (
        <p className="font-medium text-ocean-800 text-sm mb-1">{review.title}</p>
      )}
      <p className="text-gray-600 text-sm leading-relaxed">{review.content}</p>
    </div>
  );
}

export default function ReviewSection({ businessId }: ReviewSectionProps) {
  const { t } = useTranslation();
  const { reviews, loading, averageRating, count, refetch } = useReviews(businessId);
  const [authModalOpen, setAuthModalOpen] = useState(false);
  const [showAll, setShowAll] = useState(false);

  const visibleReviews = showAll ? reviews : reviews.slice(0, 5);

  return (
    <div>
      <div className="flex items-center justify-between mb-4">
        <h2 className="font-display text-xl font-semibold text-ocean-800 flex items-center gap-2">
          <MessageSquare className="w-5 h-5 text-ocean-500" />
          {t('profile.reviews')}
        </h2>
        {averageRating !== null && (
          <div className="flex items-center gap-2">
            <div className="flex items-center gap-1 bg-sun-50 px-3 py-1.5 rounded-full">
              <Star className="w-4 h-4 text-sun-500 fill-sun-500" />
              <span className="text-sm font-semibold text-sun-700">{averageRating}</span>
            </div>
            <span className="text-sm text-gray-500">({count} {count === 1 ? t('profile.review') : t('profile.reviewPlural')})</span>
          </div>
        )}
      </div>

      <ReviewForm
        businessId={businessId}
        onSubmitted={refetch}
        onSignInClick={() => setAuthModalOpen(true)}
      />

      {loading ? (
        <div className="mt-6 space-y-4">
          {[1, 2].map((i) => (
            <div key={i} className="animate-pulse border border-gray-100 rounded-xl p-5">
              <div className="flex items-center gap-3 mb-3">
                <div className="w-8 h-8 rounded-full bg-gray-200" />
                <div className="h-4 w-24 bg-gray-200 rounded" />
              </div>
              <div className="h-3 w-full bg-gray-200 rounded mb-2" />
              <div className="h-3 w-2/3 bg-gray-200 rounded" />
            </div>
          ))}
        </div>
      ) : reviews.length > 0 ? (
        <div className="mt-6 space-y-4">
          {visibleReviews.map((review) => (
            <ReviewCard key={review.id} review={review} />
          ))}
          {!showAll && reviews.length > 5 && (
            <button
              onClick={() => setShowAll(true)}
              className="w-full py-3 text-sm font-medium text-ocean-500 hover:text-ocean-700
                         border border-gray-200 rounded-xl hover:bg-ocean-50 transition-colors"
            >
              {t('reviews.showAll', { count })}
            </button>
          )}
        </div>
      ) : (
        <div className="mt-6 text-center py-8 border border-dashed border-gray-200 rounded-xl">
          <MessageSquare className="w-8 h-8 text-gray-300 mx-auto mb-2" />
          <p className="text-gray-500 text-sm">{t('reviews.noReviews')}</p>
        </div>
      )}

      <AuthModal isOpen={authModalOpen} onClose={() => setAuthModalOpen(false)} defaultTab="signin" />
    </div>
  );
}
