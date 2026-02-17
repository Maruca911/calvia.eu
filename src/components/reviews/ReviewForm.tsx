import { useState } from 'react';
import { Loader2, Send } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { supabase } from '../../lib/supabase';
import { useAuth } from '../../contexts/AuthContext';
import StarRating from './StarRating';

interface ReviewFormProps {
  businessId: string;
  onSubmitted: () => void;
  onSignInClick: () => void;
}

export default function ReviewForm({ businessId, onSubmitted, onSignInClick }: ReviewFormProps) {
  const { t } = useTranslation();
  const { user } = useAuth();
  const [rating, setRating] = useState(0);
  const [title, setTitle] = useState('');
  const [content, setContent] = useState('');
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState('');

  if (!user) {
    return (
      <div className="bg-gray-50 rounded-xl p-6 text-center">
        <p className="text-gray-600 mb-3">{t('reviews.signInToReview')}</p>
        <button onClick={onSignInClick} className="btn-primary text-sm !py-2 !px-5">
          {t('reviews.signInReviewBtn')}
        </button>
      </div>
    );
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (rating === 0) {
      setError(t('reviews.selectRating'));
      return;
    }
    if (!content.trim()) {
      setError(t('reviews.writeReviewError'));
      return;
    }

    setError('');
    setSubmitting(true);

    const { error: insertError } = await supabase.from('reviews').insert({
      business_id: businessId,
      user_id: user!.id,
      rating,
      title: title.trim(),
      content: content.trim(),
    });

    if (insertError) {
      if (insertError.code === '23505') {
        setError(t('reviews.alreadyReviewed'));
      } else {
        setError(insertError.message);
      }
    } else {
      setRating(0);
      setTitle('');
      setContent('');
      onSubmitted();
    }

    setSubmitting(false);
  }

  return (
    <form onSubmit={handleSubmit} className="bg-gray-50 rounded-xl p-6 space-y-4">
      <h3 className="font-display text-lg font-semibold text-ocean-800">{t('reviews.writeReview')}</h3>

      <div>
        <label className="block text-sm font-medium text-gray-700 mb-2">{t('reviews.yourRating')}</label>
        <StarRating rating={rating} size="lg" interactive onRate={setRating} />
      </div>

      <div>
        <label htmlFor="review-title" className="block text-sm font-medium text-gray-700 mb-1">{t('reviews.titleOptional')}</label>
        <input
          id="review-title"
          type="text"
          value={title}
          onChange={(e) => setTitle(e.target.value)}
          placeholder={t('reviews.summarise')}
          maxLength={100}
          className="w-full px-4 py-2.5 border border-gray-200 rounded-lg text-sm
                     focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all"
        />
      </div>

      <div>
        <label htmlFor="review-content" className="block text-sm font-medium text-gray-700 mb-1">{t('reviews.yourReview')}</label>
        <textarea
          id="review-content"
          value={content}
          onChange={(e) => setContent(e.target.value)}
          placeholder={t('reviews.sharePlaceholder')}
          rows={4}
          maxLength={2000}
          className="w-full px-4 py-2.5 border border-gray-200 rounded-lg text-sm resize-none
                     focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all"
          required
        />
      </div>

      {error && (
        <div className="bg-red-50 text-red-600 text-sm px-4 py-2.5 rounded-lg">{error}</div>
      )}

      <button
        type="submit"
        disabled={submitting}
        className="btn-primary flex items-center gap-2 text-sm disabled:opacity-50"
      >
        {submitting ? <Loader2 className="w-4 h-4 animate-spin" /> : <Send className="w-4 h-4" />}
        {t('reviews.submitReview')}
      </button>
    </form>
  );
}
