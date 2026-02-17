import { Link } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { Home, ArrowLeft } from 'lucide-react';
import { useLocalizedPath } from '../hooks/useLanguage';

export default function NotFoundPage() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();

  return (
    <div className="pt-24 pb-16 min-h-screen flex items-center justify-center">
      <div className="text-center max-w-md mx-auto px-4">
        <div className="text-8xl font-display font-bold text-ocean-200 mb-4">404</div>
        <h1 className="font-display text-3xl font-bold text-ocean-800 mb-3">{t('notFound.title')}</h1>
        <p className="text-gray-500 mb-8">
          {t('notFound.desc')}
        </p>
        <div className="flex items-center justify-center gap-4">
          <Link to={l('/')} className="btn-secondary flex items-center gap-2">
            <Home className="w-4 h-4" /> {t('notFound.goHome')}
          </Link>
          <button
            onClick={() => window.history.back()}
            className="btn-outline flex items-center gap-2"
          >
            <ArrowLeft className="w-4 h-4" /> {t('notFound.goBack')}
          </button>
        </div>
      </div>
    </div>
  );
}
