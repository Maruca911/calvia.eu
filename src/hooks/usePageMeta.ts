import { useEffect } from 'react';
import { useLocation } from 'react-router-dom';
import { useLanguage } from './useLanguage';
import { SUPPORTED_LANGUAGES, OG_LOCALE_MAP, type SupportedLanguage } from '../i18n/languages';

const BASE_URL = 'https://calvia.eu';
const DEFAULT_TITLE = "Calvia.app - The Modern Yellow Pages of Mallorca's Southwest";

export function usePageMeta(title: string, description: string) {
  const lang = useLanguage();
  const location = useLocation();

  useEffect(() => {
    document.title = `${title} | Calvia.app`;

    const meta = document.querySelector('meta[name="description"]');
    if (meta) meta.setAttribute('content', description);

    document.documentElement.lang = lang;

    const ogLocale = document.querySelector('meta[property="og:locale"]');
    if (ogLocale) ogLocale.setAttribute('content', OG_LOCALE_MAP[lang]);

    const pathWithoutLang = location.pathname.replace(/^\/[a-z]{2}/, '') || '/';
    updateHreflangTags(pathWithoutLang);
    updateCanonical(lang, pathWithoutLang);

    return () => {
      document.title = DEFAULT_TITLE;
      if (meta) {
        meta.setAttribute(
          'content',
          "Find trusted local businesses across 23 villages in Calvia, Mallorca. The definitive business directory for residents, second-home owners, and visitors in Mallorca's Southwest coast."
        );
      }
      removeHreflangTags();
    };
  }, [title, description, lang, location.pathname]);
}

function updateHreflangTags(pathWithoutLang: string) {
  removeHreflangTags();
  const head = document.head;

  SUPPORTED_LANGUAGES.forEach((lng: SupportedLanguage) => {
    const link = document.createElement('link');
    link.rel = 'alternate';
    link.hreflang = lng;
    link.href = `${BASE_URL}/${lng}${pathWithoutLang === '/' ? '' : pathWithoutLang}`;
    link.setAttribute('data-hreflang', 'true');
    head.appendChild(link);
  });

  const xDefault = document.createElement('link');
  xDefault.rel = 'alternate';
  xDefault.hreflang = 'x-default';
  xDefault.href = `${BASE_URL}/en${pathWithoutLang === '/' ? '' : pathWithoutLang}`;
  xDefault.setAttribute('data-hreflang', 'true');
  head.appendChild(xDefault);
}

function updateCanonical(lang: SupportedLanguage, pathWithoutLang: string) {
  let link = document.querySelector('link[rel="canonical"]') as HTMLLinkElement;
  if (!link) {
    link = document.createElement('link');
    link.rel = 'canonical';
    document.head.appendChild(link);
  }
  link.href = `${BASE_URL}/${lang}${pathWithoutLang === '/' ? '' : pathWithoutLang}`;
}

function removeHreflangTags() {
  document.querySelectorAll('link[data-hreflang]').forEach((el) => el.remove());
}
