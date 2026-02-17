import { Link } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { usePageMeta } from '../hooks/usePageMeta';
import { useLocalizedPath } from '../hooks/useLanguage';

export default function TermsPage() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  usePageMeta(
    t('seo.termsTitle'),
    t('seo.termsDesc')
  );

  return (
    <div className="pt-24 pb-16">
      <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-16">
        <div className="container-wide text-center">
          <h1 className="font-display text-4xl font-bold text-white mb-3">{t('terms.title')}</h1>
          <p className="text-ocean-200">{t('terms.lastUpdated')}</p>
        </div>
      </section>

      <section className="container-wide py-12">
        <div className="max-w-3xl mx-auto prose prose-ocean">
          <div className="space-y-8 text-gray-600 leading-relaxed">
            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('terms.acceptance')}</h2>
              <p>{t('terms.acceptanceText')}</p>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('terms.services')}</h2>
              <p>{t('terms.servicesText')}</p>
              <ul className="list-disc pl-6 space-y-2 mt-3">
                <li>{t('terms.servicesItem1')}</li>
                <li>{t('terms.servicesItem2')}</li>
                <li>{t('terms.servicesItem3')}</li>
                <li>{t('terms.servicesItem4')}</li>
              </ul>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('terms.accounts')}</h2>
              <p>{t('terms.accountsText')}</p>
              <ul className="list-disc pl-6 space-y-2 mt-3">
                <li>{t('terms.accountsItem1')}</li>
                <li>{t('terms.accountsItem2')}</li>
                <li>{t('terms.accountsItem3')}</li>
              </ul>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('terms.userContent')}</h2>
              <p>{t('terms.userContentText')}</p>
              <ul className="list-disc pl-6 space-y-2 mt-3">
                <li>{t('terms.userContentItem1')}</li>
                <li>{t('terms.userContentItem2')}</li>
                <li>{t('terms.userContentItem3')}</li>
                <li>{t('terms.userContentItem4')}</li>
              </ul>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('terms.businessListings')}</h2>
              <p>{t('terms.businessListingsText')}</p>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('terms.intellectualProperty')}</h2>
              <p>{t('terms.intellectualPropertyText')}</p>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('terms.limitation')}</h2>
              <p>{t('terms.limitationText')}</p>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('terms.governing')}</h2>
              <p>{t('terms.governingText')}</p>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('terms.changes')}</h2>
              <p>{t('terms.changesText')}</p>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('terms.contactTitle')}</h2>
              <p>
                {t('terms.contactText')}{' '}
                <a href="mailto:contact@calvia.app" className="text-ocean-500 hover:text-sun-500">contact@calvia.app</a>.
              </p>
              <p className="mt-2">
                <Link to={l('/privacy')} className="text-ocean-500 hover:text-sun-500 transition-colors">
                  {t('footer.privacyPolicy')}
                </Link>
                {' | '}
                <Link to={l('/impressum')} className="text-ocean-500 hover:text-sun-500 transition-colors">
                  {t('impressum.title')}
                </Link>
              </p>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}
