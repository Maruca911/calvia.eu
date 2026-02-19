import { useState, useEffect, useRef } from 'react';
import { supabase } from '../lib/supabase';
import type { Category, Area, Business } from '../types/database';

export interface SearchResults {
  categories: Category[];
  areas: Area[];
  businesses: Business[];
}

function normalizeQuery(raw: string) {
  return raw
    .trim()
    .replace(/[,%()']/g, ' ')
    .replace(/\s+/g, ' ');
}

function scoreBusiness(
  business: Business,
  term: string,
  matchingCategoryIds: Set<string>,
  matchingAreaIds: Set<string>
) {
  let score = 0;
  const q = term.toLowerCase();
  const name = (business.name || '').toLowerCase();
  const description = (business.description || '').toLowerCase();
  const address = (business.address || '').toLowerCase();
  const categoryName = ((business as Business & { categories?: { name?: string } }).categories?.name || '').toLowerCase();
  const areaName = ((business as Business & { areas?: { name?: string } }).areas?.name || '').toLowerCase();

  if (name.startsWith(q)) score += 12;
  if (name.includes(q)) score += 8;
  if (categoryName.includes(q)) score += 5;
  if (areaName.includes(q)) score += 5;
  if (description.includes(q)) score += 3;
  if (address.includes(q)) score += 2;

  if (matchingCategoryIds.has(business.category_id)) score += 4;
  if (matchingAreaIds.has(business.area_id)) score += 4;

  if (business.rating) score += Math.min(2, business.rating / 2);

  return score;
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

    const normalized = normalizeQuery(query);
    if (!normalized || normalized.length < 2) {
      setResults({ categories: [], areas: [], businesses: [] });
      setLoading(false);
      return;
    }

    setLoading(true);
    timeoutRef.current = setTimeout(async () => {
      const term = `%${normalized}%`;

      const [catRes, areaRes] = await Promise.all([
        supabase
          .from('categories')
          .select('*')
          .ilike('name', term)
          .limit(8),
        supabase
          .from('areas')
          .select('*')
          .ilike('name', term)
          .limit(8),
      ]);

      const matchingCategoryIds = new Set((catRes.data || []).map((cat) => cat.id));
      const matchingAreaIds = new Set((areaRes.data || []).map((area) => area.id));
      const filters = [
        `name.ilike.${term}`,
        `description.ilike.${term}`,
        `address.ilike.${term}`,
      ];
      if (matchingCategoryIds.size > 0) {
        filters.push(`category_id.in.(${Array.from(matchingCategoryIds).join(',')})`);
      }
      if (matchingAreaIds.size > 0) {
        filters.push(`area_id.in.(${Array.from(matchingAreaIds).join(',')})`);
      }

      const { data: businessRows } = await supabase
        .from('businesses')
        .select('*, categories(*), areas(*)')
        .eq('is_placeholder', false)
        .or(filters.join(','))
        .limit(60);

      const rankedBusinesses = (businessRows || [])
        .map((business) => ({
          business,
          score: scoreBusiness(business as Business, normalized, matchingCategoryIds, matchingAreaIds),
        }))
        .filter((entry) => entry.score > 0)
        .sort((a, b) => b.score - a.score)
        .slice(0, 20)
        .map((entry) => entry.business as Business);

      setResults({
        categories: catRes.data || [],
        areas: areaRes.data || [],
        businesses: rankedBusinesses,
      });
      setLoading(false);
    }, 300);

    return () => {
      if (timeoutRef.current) clearTimeout(timeoutRef.current);
    };
  }, [query]);

  return { results, loading };
}
