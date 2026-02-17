import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import { useLanguage } from './useLanguage';

interface TranslationMap {
  [field: string]: string;
}

export function useTranslatedContent(
  entityType: string,
  entityId: string | undefined
) {
  const lang = useLanguage();
  const [translations, setTranslations] = useState<TranslationMap>({});
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!entityId || lang === 'en') {
      setTranslations({});
      return;
    }

    let cancelled = false;
    setLoading(true);

    async function fetch() {
      const { data } = await supabase
        .from('translations')
        .select('field, value')
        .eq('entity_type', entityType)
        .eq('entity_id', entityId!)
        .eq('locale', lang);

      if (!cancelled && data) {
        const map: TranslationMap = {};
        data.forEach((row) => {
          if (row.value) map[row.field] = row.value;
        });
        setTranslations(map);
      }
      if (!cancelled) setLoading(false);
    }

    fetch();
    return () => { cancelled = true; };
  }, [entityType, entityId, lang]);

  function tf(field: string, fallback: string): string {
    if (lang === 'en') return fallback;
    return translations[field] || fallback;
  }

  return { tf, translations, loading, lang };
}

export function useTranslatedList<T extends { id: string }>(
  entityType: string,
  items: T[],
  fields: string[]
) {
  const lang = useLanguage();
  const [translatedItems, setTranslatedItems] = useState<T[]>(items);

  useEffect(() => {
    if (lang === 'en' || items.length === 0) {
      setTranslatedItems(items);
      return;
    }

    let cancelled = false;
    const ids = items.map((i) => i.id);

    async function fetch() {
      const { data } = await supabase
        .from('translations')
        .select('entity_id, field, value')
        .eq('entity_type', entityType)
        .eq('locale', lang)
        .in('entity_id', ids)
        .in('field', fields);

      if (!cancelled && data) {
        const map: Record<string, TranslationMap> = {};
        data.forEach((row) => {
          if (!map[row.entity_id]) map[row.entity_id] = {};
          if (row.value) map[row.entity_id][row.field] = row.value;
        });

        const result = items.map((item) => {
          const t = map[item.id];
          if (!t) return item;
          const translated = { ...item };
          for (const f of fields) {
            if (t[f]) (translated as any)[f] = t[f];
          }
          return translated;
        });
        setTranslatedItems(result);
      } else if (!cancelled) {
        setTranslatedItems(items);
      }
    }

    fetch();
    return () => { cancelled = true; };
  }, [entityType, items, fields, lang]);

  return translatedItems;
}
