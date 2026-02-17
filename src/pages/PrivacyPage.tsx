import { useTranslation } from 'react-i18next';
import { usePageMeta } from '../hooks/usePageMeta';

export default function PrivacyPage() {
  const { t } = useTranslation();
  usePageMeta(
    t('seo.privacyTitle'),
    t('seo.privacyDesc')
  );

  return (
    <div className="pt-24 pb-16">
      <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-16">
        <div className="container-wide text-center">
          <h1 className="font-display text-4xl font-bold text-white mb-3">{t('privacy.title')}</h1>
          <p className="text-ocean-200">{t('privacy.lastUpdated')}</p>
        </div>
      </section>

      <section className="container-wide py-12">
        <div className="max-w-3xl mx-auto prose prose-ocean">
          <div className="space-y-8 text-gray-600 leading-relaxed">
            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('privacy.intro')}</h2>
              <p>{t('privacy.introText')}</p>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('privacy.infoCollect')}</h2>
              <p>{t('privacy.infoCollectText')}</p>
              <ul className="list-disc pl-6 space-y-2 mt-3">
                <li>{t('privacy.infoCollectItem1')}</li>
                <li>{t('privacy.infoCollectItem2')}</li>
                <li>{t('privacy.infoCollectItem3')}</li>
              </ul>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('privacy.howWeUse')}</h2>
              <p>{t('privacy.howWeUseText')}</p>
              <ul className="list-disc pl-6 space-y-2 mt-3">
                <li>{t('privacy.howWeUseItem1')}</li>
                <li>{t('privacy.howWeUseItem2')}</li>
                <li>{t('privacy.howWeUseItem3')}</li>
                <li>{t('privacy.howWeUseItem4')}</li>
              </ul>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('privacy.dataProtection')}</h2>
              <p>{t('privacy.dataProtectionText')}</p>
            </div>

            <div>
              <h2 className="font-display text-2xl font-bold text-ocean-800 mb-3">{t('privacy.contact')}</h2>
              <p>
                {t('privacy.contactText')}{' '}
                <a href="mailto:hello@calvia.app" className="text-ocean-500 hover:text-sun-500">hello@calvia.app</a>.
              </p>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}
