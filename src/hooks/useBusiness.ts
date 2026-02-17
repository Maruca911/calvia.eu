import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import type { BusinessWithRelations } from '../types/database';

export function useBusiness(slug: string | undefined) {
  const [business, setBusiness] = useState<BusinessWithRelations | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!slug) {
      setLoading(false);
      return;
    }

    async function fetch() {
      setLoading(true);
      const { data } = await supabase
        .from('businesses')
        .select('*, categories(*), areas(*)')
        .eq('slug', slug)
        .maybeSingle();

      setBusiness(data);
      setLoading(false);
    }
    fetch();
  }, [slug]);

  return { business, loading };
}
