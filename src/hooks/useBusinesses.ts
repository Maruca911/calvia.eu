import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import type { Business, OpeningHours } from '../types/database';

const PAGE_SIZE = 33;

const DAY_NAMES = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'] as const;

function normalizeQuery(rawQuery?: string) {
  if (!rawQuery) return '';
  return rawQuery
    .trim()
    .replace(/[,%()']/g, ' ')
    .replace(/\s+/g, ' ');
}

function buildSearchFilter(
  cleanedQuery?: string,
  categoryIds: string[] = [],
  areaIds: string[] = []
) {
  if (!cleanedQuery) return null;
  const pattern = `%${cleanedQuery}%`;
  const filters = [
    `name.ilike.${pattern}`,
    `description.ilike.${pattern}`,
    `address.ilike.${pattern}`,
  ];
  if (categoryIds.length > 0) {
    filters.push(`category_id.in.(${categoryIds.join(',')})`);
  }
  if (areaIds.length > 0) {
    filters.push(`area_id.in.(${areaIds.join(',')})`);
  }
  return filters.join(',');
}

function isOpenNow(opening_hours: OpeningHours | null): boolean {
  if (!opening_hours) return false;
  const now = new Date();
  const dayKey = DAY_NAMES[now.getDay()];
  const hoursStr = opening_hours[dayKey];
  if (!hoursStr) return false;

  const timeRange = hoursStr.toLowerCase().replace(/\s/g, '');
  if (timeRange === 'closed' || timeRange === 'cerrado') return false;

  const match = timeRange.match(/^(\d{1,2}):?(\d{2})?[–\-](\d{1,2}):?(\d{2})?$/);
  if (!match) return true;

  const openH = parseInt(match[1], 10);
  const openM = parseInt(match[2] || '0', 10);
  const closeH = parseInt(match[3], 10);
  const closeM = parseInt(match[4] || '0', 10);

  const currentMins = now.getHours() * 60 + now.getMinutes();
  const openMins = openH * 60 + openM;
  let closeMins = closeH * 60 + closeM;
  if (closeMins < openMins) closeMins += 24 * 60;

  return currentMins >= openMins && currentMins <= closeMins;
}

export function useBusinesses(
  categoryId?: string,
  areaId?: string,
  page: number = 1,
  minRating?: number,
  openNow?: boolean,
  searchQuery?: string
) {
  const [businesses, setBusinesses] = useState<Business[]>([]);
  const [totalCount, setTotalCount] = useState(0);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function fetch() {
      setLoading(true);

      try {
        const cleanedSearchQuery = normalizeQuery(searchQuery);
        let searchFilter: string | null = null;

        if (cleanedSearchQuery) {
          const pattern = `%${cleanedSearchQuery}%`;
          const [catRes, areaRes] = await Promise.all([
            supabase
              .from('categories')
              .select('id')
              .ilike('name', pattern)
              .limit(20),
            supabase
              .from('areas')
              .select('id')
              .ilike('name', pattern)
              .limit(20),
          ]);

          const matchingCategoryIds = (catRes.data ?? []).map((category) => category.id);
          const matchingAreaIds = (areaRes.data ?? []).map((area) => area.id);
          searchFilter = buildSearchFilter(cleanedSearchQuery, matchingCategoryIds, matchingAreaIds);
        }

        if (openNow) {
          let query = supabase
            .from('businesses')
            .select('*, categories(*), areas(*)')
            .eq('is_placeholder', false);

          if (categoryId) query = query.eq('category_id', categoryId);
          if (areaId) query = query.eq('area_id', areaId);
          if (minRating) query = query.gte('rating', minRating);
          if (searchFilter) query = query.or(searchFilter);

          const { data } = await query.order('name');
          const all = (data || []) as Business[];
          const filtered = all.filter((business) => isOpenNow(business.opening_hours as OpeningHours));
          const from = (page - 1) * PAGE_SIZE;
          const paginated = filtered.slice(from, from + PAGE_SIZE);
          setBusinesses(paginated);
          setTotalCount(filtered.length);
          return;
        }

        let query = supabase
          .from('businesses')
          .select('*, categories(*), areas(*)', { count: 'exact' })
          .eq('is_placeholder', false);

        if (categoryId) query = query.eq('category_id', categoryId);
        if (areaId) query = query.eq('area_id', areaId);
        if (minRating) query = query.gte('rating', minRating);
        if (searchFilter) query = query.or(searchFilter);

        const from = (page - 1) * PAGE_SIZE;
        const to = from + PAGE_SIZE - 1;

        const { data, count } = await query.order('name').range(from, to);

        if (data) setBusinesses(data);
        if (count !== null) setTotalCount(count);
      } catch {
        setBusinesses([]);
        setTotalCount(0);
      } finally {
        setLoading(false);
      }
    }
    fetch();
  }, [categoryId, areaId, page, minRating, openNow, searchQuery]);

  const totalPages = Math.ceil(totalCount / PAGE_SIZE);

  return { businesses, totalCount, totalPages, loading };
}
