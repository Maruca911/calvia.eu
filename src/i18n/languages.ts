export const SUPPORTED_LANGUAGES = [
  'en', 'de', 'es', 'fr', 'nl', 'sv', 'da', 'no', 'pl', 'ru', 'uk',
] as const;

export type SupportedLanguage = (typeof SUPPORTED_LANGUAGES)[number];

export const LANGUAGE_NAMES: Record<SupportedLanguage, string> = {
  en: 'English',
  de: 'Deutsch',
  es: 'Espanol',
  fr: 'Francais',
  nl: 'Nederlands',
  sv: 'Svenska',
  da: 'Dansk',
  no: 'Norsk',
  pl: 'Polski',
  ru: '\u0420\u0443\u0441\u0441\u043a\u0438\u0439',
  uk: '\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430',
};

export const LANGUAGE_FLAGS: Record<SupportedLanguage, string> = {
  en: 'GB',
  de: 'DE',
  es: 'ES',
  fr: 'FR',
  nl: 'NL',
  sv: 'SE',
  da: 'DK',
  no: 'NO',
  pl: 'PL',
  ru: 'RU',
  uk: 'UA',
};

export const OG_LOCALE_MAP: Record<SupportedLanguage, string> = {
  en: 'en_GB',
  de: 'de_DE',
  es: 'es_ES',
  fr: 'fr_FR',
  nl: 'nl_NL',
  sv: 'sv_SE',
  da: 'da_DK',
  no: 'nb_NO',
  pl: 'pl_PL',
  ru: 'ru_RU',
  uk: 'uk_UA',
};

export const DEFAULT_LANGUAGE: SupportedLanguage = 'en';

export function isSupported(code: string): code is SupportedLanguage {
  return SUPPORTED_LANGUAGES.includes(code as SupportedLanguage);
}

export function detectBrowserLanguage(): SupportedLanguage {
  const stored = localStorage.getItem('calvia-lang');
  if (stored && isSupported(stored)) return stored;

  const nav = navigator.language?.split('-')[0];
  if (nav && isSupported(nav)) return nav;

  return DEFAULT_LANGUAGE;
}
