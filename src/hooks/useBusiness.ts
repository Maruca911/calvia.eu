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
      const { data: bySlug } = await supabase
        .from('businesses')
        .select('*, categories(*), areas(*)')
        .eq('slug', slug)
        .maybeSingle();

      let business = bySlug;
      if (!business) {
        const { data: byId } = await supabase
          .from('businesses')
          .select('*, categories(*), areas(*)')
          .eq('id', slug)
          .maybeSingle();
        business = byId;
      }

      setBusiness(business);
      setLoading(false);

      if (business && viewTracked.current !== business.id) {
        viewTracked.current = business.id;
        supabase.rpc('increment_view_count', { business_uuid: business.id });
      }
    }
    load();
  }, [slug]);

  return { business, loading };
}
