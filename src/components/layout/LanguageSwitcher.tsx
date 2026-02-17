import { useState, useRef, useEffect } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';
import { Globe, ChevronDown } from 'lucide-react';
import { SUPPORTED_LANGUAGES, LANGUAGE_NAMES, type SupportedLanguage } from '../../i18n/languages';
import { useLanguage } from '../../hooks/useLanguage';

export default function LanguageSwitcher() {
  const [open, setOpen] = useState(false);
  const ref = useRef<HTMLDivElement>(null);
  const navigate = useNavigate();
  const location = useLocation();
  const currentLang = useLanguage();

  useEffect(() => {
    function handleClick(e: MouseEvent) {
      if (ref.current && !ref.current.contains(e.target as Node)) {
        setOpen(false);
      }
    }
    document.addEventListener('mousedown', handleClick);
    return () => document.removeEventListener('mousedown', handleClick);
  }, []);

  function switchLanguage(lang: SupportedLanguage) {
    const pathWithoutLang = location.pathname.replace(/^\/[a-z]{2}/, '') || '/';
    const search = location.search;
    const hash = location.hash;
    navigate(`/${lang}${pathWithoutLang}${search}${hash}`);
    localStorage.setItem('calvia-lang', lang);
    setOpen(false);
  }

  return (
    <div ref={ref} className="relative">
      <button
        onClick={() => setOpen(!open)}
        className="flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg text-sm font-medium
                   text-gray-600 hover:text-ocean-600 hover:bg-ocean-50 transition-all"
        aria-label="Select language"
      >
        <Globe className="w-4 h-4" />
        <span className="uppercase">{currentLang}</span>
        <ChevronDown className={`w-3.5 h-3.5 transition-transform ${open ? 'rotate-180' : ''}`} />
      </button>

      {open && (
        <div className="absolute right-0 top-full mt-1 bg-white rounded-xl shadow-lg border border-gray-100
                        py-1.5 min-w-[160px] z-50 animate-fade-in">
          {SUPPORTED_LANGUAGES.map((lang) => (
            <button
              key={lang}
              onClick={() => switchLanguage(lang)}
              className={`w-full text-left px-4 py-2 text-sm transition-colors flex items-center gap-3
                ${lang === currentLang
                  ? 'bg-ocean-50 text-ocean-700 font-medium'
                  : 'text-gray-600 hover:bg-gray-50 hover:text-ocean-600'
                }`}
            >
              <span className="uppercase text-xs font-mono w-5">{lang}</span>
              <span>{LANGUAGE_NAMES[lang]}</span>
            </button>
          ))}
        </div>
      )}
    </div>
  );
}
