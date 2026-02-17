import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import en from './locales/en';
import de from './locales/de';
import es from './locales/es';
import fr from './locales/fr';
import nl from './locales/nl';
import sv from './locales/sv';
import da from './locales/da';
import no from './locales/no';
import pl from './locales/pl';
import ru from './locales/ru';
import uk from './locales/uk';
import { DEFAULT_LANGUAGE, SUPPORTED_LANGUAGES } from './languages';

i18n
  .use(initReactI18next)
  .init({
    resources: {
      en: { translation: en },
      de: { translation: de },
      es: { translation: es },
      fr: { translation: fr },
      nl: { translation: nl },
      sv: { translation: sv },
      da: { translation: da },
      no: { translation: no },
      pl: { translation: pl },
      ru: { translation: ru },
      uk: { translation: uk },
    },
    lng: DEFAULT_LANGUAGE,
    fallbackLng: DEFAULT_LANGUAGE,
    supportedLngs: [...SUPPORTED_LANGUAGES],
    interpolation: {
      escapeValue: false,
    },
    react: {
      useSuspense: false,
    },
  });

export default i18n;
