import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import type { Category } from '../types/database';

export function useCategories() {
  const [categories, setCategories] = useState<Category[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function fetch() {
      const { data } = await supabase
        .from('categories')
        .select('id, name, slug, icon_name, description, display_order, created_at, businesses!inner(id)')
        .is('parent_id', null)
        .order('display_order');
      if (data) {
        setCategories(
          data.map(({ businesses: _businesses, ...category }) => category as Category)
        );
      }
      setLoading(false);
    }
    fetch();
  }, []);

  return { categories, loading };
}
