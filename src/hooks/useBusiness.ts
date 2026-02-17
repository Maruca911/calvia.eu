import { useState, useEffect, useRef } from 'react';
import { supabase } from '../lib/supabase';
import type { BusinessWithRelations } from '../types/database';

export function useBusiness(slug: string | undefined) {
  const [business, setBusiness] = useState<BusinessWithRelations | null>(null);
  const [loading, setLoading] = useState(true);
  const viewTracked = useRef<string | null>(null);

  useEffect(() => {
    if (!slug) {
      setLoading(false);
      return;
    }

    async function load() {
      setLoading(true);
      const { data } = await supabase
        .from('businesses')
        .select('*, categories(*), areas(*)')
        .eq('slug', slug)
        .maybeSingle();

      setBusiness(data);
      setLoading(false);

      if (data && viewTracked.current !== data.id) {
        viewTracked.current = data.id;
        supabase.rpc('increment_view_count', { business_uuid: data.id });
      }
    }
    load();
  }, [slug]);

  return { business, loading };
}
