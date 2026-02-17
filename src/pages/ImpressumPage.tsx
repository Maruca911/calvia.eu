import { useTranslation } from 'react-i18next';
import { usePageMeta } from '../hooks/usePageMeta';
import { Mail, MapPin, Globe, Building2, FileText } from 'lucide-react';

export default function ImpressumPage() {
  const { t } = useTranslation();
  usePageMeta(
    t('seo.impressumTitle'),
    t('seo.impressumDesc')
  );

  return (
    <div className="pt-24 pb-16">
      <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-16">
        <div className="container-wide text-center">
          <h1 className="font-display text-4xl font-bold text-white mb-3">{t('impressum.title')}</h1>
          <p className="text-ocean-200">{t('impressum.subtitle')}</p>
        </div>
      </section>

      <section className="container-wide py-12">
        <div className="max-w-3xl mx-auto">
          <div className="grid gap-8">
            <div className="bg-white rounded-xl border border-gray-100 shadow-sm p-8">
              <div className="flex items-center gap-3 mb-4">
                <div className="w-10 h-10 rounded-lg bg-ocean-50 flex items-center justify-center">
                  <Building2 className="w-5 h-5 text-ocean-600" />
                </div>
                <h2 className="font-display text-xl font-bold text-ocean-800">{t('impressum.companyInfo')}</h2>
              </div>
              <div className="space-y-3 text-gray-600 leading-relaxed">
                <p className="font-semibold text-ocean-800">Calvia Group S.L.</p>
                <div className="flex items-start gap-2">
                  <MapPin className="w-4 h-4 mt-1 flex-shrink-0 text-ocean-400" />
                  <div>
                    <p>Calvia, Mallorca</p>
                    <p>07184 Illes Balears</p>
                    <p>{t('impressum.spain')}</p>
                  </div>
                </div>
                <div className="flex items-center gap-2">
                  <Mail className="w-4 h-4 flex-shrink-0 text-ocean-400" />
                  <a href="mailto:contact@calvia.app" className="text-ocean-500 hover:text-sun-500 transition-colors">
                    contact@calvia.app
                  </a>
                </div>
                <div className="flex items-center gap-2">
                  <Globe className="w-4 h-4 flex-shrink-0 text-ocean-400" />
                  <a href="https://calvia.app" className="text-ocean-500 hover:text-sun-500 transition-colors">
                    calvia.app
                  </a>
                </div>
              </div>
            </div>

            <div className="bg-white rounded-xl border border-gray-100 shadow-sm p-8">
              <div className="flex items-center gap-3 mb-4">
                <div className="w-10 h-10 rounded-lg bg-ocean-50 flex items-center justify-center">
                  <FileText className="w-5 h-5 text-ocean-600" />
                </div>
                <h2 className="font-display text-xl font-bold text-ocean-800">{t('impressum.registrationInfo')}</h2>
              </div>
              <div className="space-y-3 text-gray-600 leading-relaxed">
                <div>
                  <p className="text-sm font-medium text-gray-500">{t('impressum.commercialRegistry')}</p>
                  <p>{t('impressum.registryValue')}</p>
                </div>
                <div>
                  <p className="text-sm font-medium text-gray-500">{t('impressum.vatId')}</p>
                  <p>{t('impressum.vatIdValue')}</p>
                </div>
              </div>
            </div>

            <div className="bg-white rounded-xl border border-gray-100 shadow-sm p-8">
              <h2 className="font-display text-xl font-bold text-ocean-800 mb-4">{t('impressum.responsibleContent')}</h2>
              <p className="text-gray-600 leading-relaxed">{t('impressum.responsibleContentText')}</p>
            </div>

            <div className="bg-white rounded-xl border border-gray-100 shadow-sm p-8">
              <h2 className="font-display text-xl font-bold text-ocean-800 mb-4">{t('impressum.disputeResolution')}</h2>
              <div className="space-y-3 text-gray-600 leading-relaxed">
                <p>{t('impressum.disputeResolutionText')}</p>
                <p>
                  {t('impressum.euPlatform')}{' '}
                  <a
                    href="https://ec.europa.eu/consumers/odr"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="text-ocean-500 hover:text-sun-500 transition-colors"
                  >
                    https://ec.europa.eu/consumers/odr
                  </a>
                </p>
              </div>
            </div>

            <div className="bg-white rounded-xl border border-gray-100 shadow-sm p-8">
              <h2 className="font-display text-xl font-bold text-ocean-800 mb-4">{t('impressum.liability')}</h2>
              <div className="space-y-4 text-gray-600 leading-relaxed">
                <div>
                  <h3 className="font-semibold text-ocean-700 mb-1">{t('impressum.liabilityContent')}</h3>
                  <p>{t('impressum.liabilityContentText')}</p>
                </div>
                <div>
                  <h3 className="font-semibold text-ocean-700 mb-1">{t('impressum.liabilityLinks')}</h3>
                  <p>{t('impressum.liabilityLinksText')}</p>
                </div>
              </div>
            </div>

            <div className="bg-white rounded-xl border border-gray-100 shadow-sm p-8">
              <h2 className="font-display text-xl font-bold text-ocean-800 mb-4">{t('impressum.copyright')}</h2>
              <p className="text-gray-600 leading-relaxed">{t('impressum.copyrightText')}</p>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}
