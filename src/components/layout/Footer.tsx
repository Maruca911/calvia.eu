import { Link } from 'react-router-dom';
import { Instagram, Youtube, Facebook, ExternalLink, Mail, MapPin } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../../hooks/useLanguage';

export default function Footer() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();

  return (
    <footer className="bg-ocean-800 text-white">
      <div className="container-wide py-16">
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-10">
          <div>
            <div className="flex items-center gap-2 mb-4">
              <img
                src="/logo-calvia.jpeg"
                alt="Calvia.app"
                loading="lazy"
                className="w-10 h-10 rounded-full object-cover"
              />
              <span className="font-display text-xl font-bold">
                CALVIA<span className="text-sun-500">.APP</span>
              </span>
            </div>
            <p className="text-white text-sm leading-relaxed mb-4">
              {t('footer.tagline')}
            </p>
            <div className="flex items-center gap-3">
              <a
                href="https://facebook.com/calvia.app"
                target="_blank"
                rel="noopener noreferrer"
                aria-label="Facebook"
                className="w-9 h-9 rounded-full bg-ocean-700 flex items-center justify-center hover:bg-sun-500 transition-colors"
              >
                <Facebook className="w-4 h-4" />
              </a>
              <a
                href="https://instagram.com/calvia.app"
                target="_blank"
                rel="noopener noreferrer"
                aria-label="Instagram"
                className="w-9 h-9 rounded-full bg-ocean-700 flex items-center justify-center hover:bg-sun-500 transition-colors"
              >
                <Instagram className="w-4 h-4" />
              </a>
              <a
                href="https://youtube.com/@calvia.app"
                target="_blank"
                rel="noopener noreferrer"
                aria-label="YouTube"
                className="w-9 h-9 rounded-full bg-ocean-700 flex items-center justify-center hover:bg-sun-500 transition-colors"
              >
                <Youtube className="w-4 h-4" />
              </a>
              <a
                href="https://tiktok.com/@calvia.app"
                target="_blank"
                rel="noopener noreferrer"
                aria-label="TikTok"
                className="w-9 h-9 rounded-full bg-ocean-700 flex items-center justify-center hover:bg-sun-500 transition-colors"
              >
                <svg className="w-4 h-4" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M19.59 6.69a4.83 4.83 0 01-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 01-2.88 2.5 2.89 2.89 0 01-2.89-2.89 2.89 2.89 0 012.89-2.89c.28 0 .54.04.79.1v-3.5a6.37 6.37 0 00-.79-.05A6.34 6.34 0 003.15 15.2a6.34 6.34 0 0010.86 4.46V13a8.28 8.28 0 005.58 2.16V11.7a4.83 4.83 0 01-.01-5.01z" />
                </svg>
              </a>
            </div>
          </div>

          <div>
            <h4 className="font-display text-lg font-semibold mb-4">{t('footer.quickLinks')}</h4>
            <ul className="space-y-2">
              <li>
                <Link to={l('/businesses')} className="text-white hover:text-sun-400 transition-colors text-sm">
                  {t('footer.localBusinessProfiles')}
                </Link>
              </li>
              <li>
                <Link to={l('/areas')} className="text-white hover:text-sun-400 transition-colors text-sm">
                  {t('footer.exploreAreas')}
                </Link>
              </li>
              <li>
                <Link to={l('/guides')} className="text-white hover:text-sun-400 transition-colors text-sm">
                  {t('footer.guidesAndTips')}
                </Link>
              </li>
              <li>
                <Link to={l('/map')} className="text-white hover:text-sun-400 transition-colors text-sm">
                  {t('nav.map')}
                </Link>
              </li>
              <li>
                <Link to={l('/about')} className="text-white hover:text-sun-400 transition-colors text-sm">
                  {t('footer.aboutTheConcept')}
                </Link>
              </li>
              <li>
                <Link to={l('/signup/consumer')} className="text-white hover:text-sun-400 transition-colors text-sm">
                  {t('footer.consumerSignup')}
                </Link>
              </li>
              <li>
                <Link to={l('/signup/business')} className="text-white hover:text-sun-400 transition-colors text-sm">
                  {t('footer.businessSignup')}
                </Link>
              </li>
            </ul>
          </div>

          <div>
            <h4 className="font-display text-lg font-semibold mb-4">{t('footer.ourNetwork')}</h4>
            <ul className="space-y-2">
              <li>
                <a
                  href="https://calvia.group"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-white hover:text-sun-400 transition-colors text-sm flex items-center gap-1"
                >
                  Calvia.group <ExternalLink className="w-3 h-3" />
                </a>
              </li>
              <li>
                <a
                  href="https://calvia.digital"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-white hover:text-sun-400 transition-colors text-sm flex items-center gap-1"
                >
                  Calvia.digital <ExternalLink className="w-3 h-3" />
                </a>
              </li>
              <li>
                <a
                  href="https://calvia.app"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-white hover:text-sun-400 transition-colors text-sm flex items-center gap-1"
                >
                  Calvia<span className="text-sun-500">.app</span> <ExternalLink className="w-3 h-3" />
                </a>
              </li>
            </ul>

            <div className="mt-6">
              <h4 className="font-display text-lg font-semibold mb-3">{t('footer.comingSoon')}</h4>
              <div className="flex gap-2">
                <div className="bg-ocean-700 rounded-lg px-3 py-2 text-xs text-white">
                  {t('footer.iosAppStore')}
                </div>
                <div className="bg-ocean-700 rounded-lg px-3 py-2 text-xs text-white">
                  {t('footer.googlePlay')}
                </div>
              </div>
            </div>
          </div>

          <div>
            <h4 className="font-display text-lg font-semibold mb-4">{t('footer.contact')}</h4>
            <ul className="space-y-3">
              <li className="flex items-start gap-2 text-white text-sm">
                <MapPin className="w-4 h-4 mt-0.5 flex-shrink-0 text-sun-400" />
                {t('footer.calviaMallorcaSpain')}
              </li>
              <li className="flex items-start gap-2 text-white text-sm">
                <Mail className="w-4 h-4 mt-0.5 flex-shrink-0 text-sun-400" />
                contact@calvia.app
              </li>
            </ul>
          </div>
        </div>

        <div className="border-t border-ocean-700 mt-12 pt-8 flex flex-col sm:flex-row items-center justify-between gap-4">
          <p className="text-white text-sm">
            &copy; {new Date().getFullYear()} Calvia<span className="text-sun-500">.app</span>. {t('footer.allRightsReserved')}
          </p>
          <div className="flex items-center gap-4 flex-wrap justify-center">
            <Link to={l('/privacy')} className="text-white hover:text-sun-400 transition-colors text-sm">
              {t('footer.privacyPolicy')}
            </Link>
            <Link to={l('/terms')} className="text-white hover:text-sun-400 transition-colors text-sm">
              {t('footer.termsOfService')}
            </Link>
            <Link to={l('/impressum')} className="text-white hover:text-sun-400 transition-colors text-sm">
              {t('footer.impressum')}
            </Link>
          </div>
        </div>
      </div>
    </footer>
  );
}
