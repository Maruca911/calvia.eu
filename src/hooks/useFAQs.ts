import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import type { FAQ } from '../types/database';

export function useFAQs(pageType: string, pageSlug?: string) {
  const [faqs, setFaqs] = useState<FAQ[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!pageSlug) {
      setLoading(false);
      return;
    }

    async function fetchFAQs() {
      setLoading(true);
      const { data } = await supabase
        .from('faqs')
        .select('*')
        .eq('page_type', pageType)
        .eq('page_slug', pageSlug)
        .order('display_order');

      if (data) setFaqs(data);
      setLoading(false);
    }
    fetchFAQs();
  }, [pageType, pageSlug]);

  return { faqs, loading };
}
