import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import type { Area } from '../types/database';

export function useAreas() {
  const [areas, setAreas] = useState<Area[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function fetch() {
      const { data } = await supabase
        .from('areas')
        .select('*')
        .order('name');
      if (data) setAreas(data);
      setLoading(false);
    }
    fetch();
  }, []);

  return { areas, loading };
}
