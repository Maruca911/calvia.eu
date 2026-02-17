import { useParams } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { useCallback, useEffect } from 'react';
import { isSupported, DEFAULT_LANGUAGE, type SupportedLanguage } from '../i18n/languages';

export function useLanguage() {
  const { lang } = useParams<{ lang: string }>();
  const { i18n } = useTranslation();

  const currentLang: SupportedLanguage =
    lang && isSupported(lang) ? lang : DEFAULT_LANGUAGE;

  useEffect(() => {
    if (i18n.language !== currentLang) {
      i18n.changeLanguage(currentLang);
    }
    document.documentElement.lang = currentLang;
    localStorage.setItem('calvia-lang', currentLang);
  }, [currentLang, i18n]);

  return currentLang;
}

export function useLocalizedPath() {
  const currentLang = useLanguage();

  const l = useCallback(
    (path: string) => {
      if (path.startsWith('/')) {
        return `/${currentLang}${path}`;
      }
      return `/${currentLang}/${path}`;
    },
    [currentLang]
  );

  return { l, lang: currentLang };
}
