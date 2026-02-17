import { useState, useEffect, useRef } from 'react';
import { supabase } from '../lib/supabase';
import type { Category, Area, Business } from '../types/database';

export interface SearchResults {
  categories: Category[];
  areas: Area[];
  businesses: Business[];
}

export function useSearch(query: string) {
  const [results, setResults] = useState<SearchResults>({
    categories: [],
    areas: [],
    businesses: [],
  });
  const [loading, setLoading] = useState(false);
  const timeoutRef = useRef<ReturnType<typeof setTimeout>>();

  useEffect(() => {
    if (timeoutRef.current) clearTimeout(timeoutRef.current);

    if (!query || query.length < 2) {
      setResults({ categories: [], areas: [], businesses: [] });
      setLoading(false);
      return;
    }

    setLoading(true);
    timeoutRef.current = setTimeout(async () => {
      const term = `%${query}%`;

      const [catRes, areaRes, bizRes] = await Promise.all([
        supabase
          .from('categories')
          .select('*')
          .ilike('name', term)
          .limit(5),
        supabase
          .from('areas')
          .select('*')
          .ilike('name', term)
          .limit(5),
        supabase
          .from('businesses')
          .select('*, categories(*), areas(*)')
          .ilike('name', term)
          .limit(8),
      ]);

      setResults({
        categories: catRes.data || [],
        areas: areaRes.data || [],
        businesses: bizRes.data || [],
      });
      setLoading(false);
    }, 300);

    return () => {
      if (timeoutRef.current) clearTimeout(timeoutRef.current);
    };
  }, [query]);

  return { results, loading };
}
