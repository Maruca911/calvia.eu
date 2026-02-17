import { useState, useEffect, useCallback } from 'react';
import { supabase } from '../lib/supabase';
import type { ReviewWithProfile } from '../types/database';

export function useReviews(businessId: string | undefined) {
  const [reviews, setReviews] = useState<ReviewWithProfile[]>([]);
  const [loading, setLoading] = useState(true);
  const [averageRating, setAverageRating] = useState<number | null>(null);
  const [count, setCount] = useState(0);

  const fetchReviews = useCallback(async () => {
    if (!businessId) {
      setLoading(false);
      return;
    }

    setLoading(true);
    const { data } = await supabase
      .from('reviews')
      .select('*, user_profiles(*)')
      .eq('business_id', businessId)
      .order('created_at', { ascending: false });

    const items = (data || []) as ReviewWithProfile[];
    setReviews(items);
    setCount(items.length);

    if (items.length > 0) {
      const avg = items.reduce((sum, r) => sum + r.rating, 0) / items.length;
      setAverageRating(Math.round(avg * 10) / 10);
    } else {
      setAverageRating(null);
    }

    setLoading(false);
  }, [businessId]);

  useEffect(() => {
    fetchReviews();
  }, [fetchReviews]);

  return { reviews, loading, averageRating, count, refetch: fetchReviews };
}
