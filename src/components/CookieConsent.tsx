import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { X, Cookie, Shield } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../hooks/useLanguage';

const COOKIE_CONSENT_KEY = 'calvia-cookie-consent';

type ConsentChoice = 'accepted' | 'essential' | null;

function getStoredConsent(): ConsentChoice {
  try {
    const stored = localStorage.getItem(COOKIE_CONSENT_KEY);
    if (stored === 'accepted' || stored === 'essential') return stored;
  } catch {
    // localStorage not available
  }
  return null;
}

function storeConsent(choice: 'accepted' | 'essential') {
  try {
    localStorage.setItem(COOKIE_CONSENT_KEY, choice);
  } catch {
    // localStorage not available
  }
}

export default function CookieConsent() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const [visible, setVisible] = useState(false);
  const [showDetails, setShowDetails] = useState(false);

  useEffect(() => {
    const consent = getStoredConsent();
    if (!consent) {
      const timer = setTimeout(() => setVisible(true), 1000);
      return () => clearTimeout(timer);
    }
  }, []);

  function handleAcceptAll() {
    storeConsent('accepted');
    setVisible(false);
  }

  function handleEssentialOnly() {
    storeConsent('essential');
    setVisible(false);
  }

  if (!visible) return null;

  return (
    <div className="fixed bottom-0 left-0 right-0 z-[90] p-4 sm:p-6 animate-slide-up">
      <div className="max-w-2xl mx-auto bg-white rounded-2xl shadow-2xl border border-gray-100 overflow-hidden">
        <div className="p-5 sm:p-6">
          <div className="flex items-start justify-between gap-4 mb-3">
            <div className="flex items-center gap-2.5">
              <div className="w-9 h-9 rounded-lg bg-sun-50 flex items-center justify-center flex-shrink-0">
                <Cookie className="w-5 h-5 text-sun-600" />
              </div>
              <h3 className="font-display text-lg font-bold text-ocean-800">{t('cookie.title')}</h3>
            </div>
            <button
              onClick={handleEssentialOnly}
              aria-label="Close"
              className="p-1 rounded-lg text-gray-400 hover:text-gray-600 hover:bg-gray-100 transition-colors flex-shrink-0"
            >
              <X className="w-4 h-4" />
            </button>
          </div>

          <p className="text-sm text-gray-600 leading-relaxed mb-4">
            {t('cookie.description')}
          </p>

          {showDetails && (
            <div className="mb-4 space-y-3 p-4 bg-gray-50 rounded-xl text-sm">
              <div className="flex items-start gap-3">
                <Shield className="w-4 h-4 text-green-500 mt-0.5 flex-shrink-0" />
                <div>
                  <p className="font-medium text-ocean-800">{t('cookie.essential')}</p>
                  <p className="text-gray-500 text-xs mt-0.5">{t('cookie.essentialDesc')}</p>
                </div>
              </div>
              <div className="flex items-start gap-3">
                <Cookie className="w-4 h-4 text-sun-500 mt-0.5 flex-shrink-0" />
                <div>
                  <p className="font-medium text-ocean-800">{t('cookie.functional')}</p>
                  <p className="text-gray-500 text-xs mt-0.5">{t('cookie.functionalDesc')}</p>
                </div>
              </div>
            </div>
          )}

          <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-2.5">
            <button
              onClick={handleAcceptAll}
              className="btn-primary text-sm !py-2.5 !px-5 flex-1 sm:flex-none"
            >
              {t('cookie.acceptAll')}
            </button>
            <button
              onClick={handleEssentialOnly}
              className="btn-outline text-sm !py-2.5 !px-5 flex-1 sm:flex-none !border !border-gray-200 !text-gray-700 hover:!bg-gray-50 hover:!text-gray-900"
            >
              {t('cookie.essentialOnly')}
            </button>
            <button
              onClick={() => setShowDetails(!showDetails)}
              className="text-sm text-ocean-500 hover:text-ocean-700 font-medium transition-colors py-2"
            >
              {showDetails ? t('cookie.hideDetails') : t('cookie.showDetails')}
            </button>
          </div>

          <p className="text-xs text-gray-400 mt-3">
            {t('cookie.learnMore')}{' '}
            <Link to={l('/privacy')} className="text-ocean-500 hover:text-sun-500 transition-colors">
              {t('footer.privacyPolicy')}
            </Link>
          </p>
        </div>
      </div>
    </div>
  );
}
