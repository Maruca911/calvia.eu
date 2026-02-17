import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import type { Guide } from '../types/database';

export function useGuide(slug?: string) {
  const [guide, setGuide] = useState<Guide | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!slug) {
      setLoading(false);
      return;
    }

    async function fetchGuide() {
      setLoading(true);
      const { data } = await supabase
        .from('guides')
        .select('*')
        .eq('slug', slug)
        .eq('published', true)
        .maybeSingle();

      setGuide(data);
      setLoading(false);
    }
    fetchGuide();
  }, [slug]);

  return { guide, loading };
}

export function useGuides() {
  const [guides, setGuides] = useState<Guide[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function fetchGuides() {
      const { data } = await supabase
        .from('guides')
        .select('*')
        .eq('published', true)
        .order('created_at', { ascending: false });

      if (data) setGuides(data);
      setLoading(false);
    }
    fetchGuides();
  }, []);

  return { guides, loading };
}
