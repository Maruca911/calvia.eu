import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import type { Business } from '../types/database';

const PAGE_SIZE = 33;

export function useBusinesses(
  categoryId?: string,
  areaId?: string,
  page: number = 1
) {
  const [businesses, setBusinesses] = useState<Business[]>([]);
  const [totalCount, setTotalCount] = useState(0);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function fetch() {
      setLoading(true);
      let query = supabase
        .from('businesses')
        .select('*, categories(*), areas(*)', { count: 'exact' });

      if (categoryId) query = query.eq('category_id', categoryId);
      if (areaId) query = query.eq('area_id', areaId);

      const from = (page - 1) * PAGE_SIZE;
      const to = from + PAGE_SIZE - 1;

      const { data, count } = await query
        .order('name')
        .range(from, to);

      if (data) setBusinesses(data);
      if (count !== null) setTotalCount(count);
      setLoading(false);
    }
    fetch();
  }, [categoryId, areaId, page]);

  const totalPages = Math.ceil(totalCount / PAGE_SIZE);

  return { businesses, totalCount, totalPages, loading };
}
