import { useState, useEffect, useRef } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { Menu, X, ChevronDown, LogIn, LogOut, User, Waves, Mountain, Bike, BookOpen, MapPin, LayoutDashboard } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../../hooks/useLanguage';
import LanguageSwitcher from './LanguageSwitcher';
import { useCategories } from '../../hooks/useCategories';
import { useAreas } from '../../hooks/useAreas';
import { useAuth } from '../../contexts/AuthContext';
import AuthModal from '../auth/AuthModal';
import SearchBar from './SearchBar';

const GUIDE_SUBCATEGORIES = [
  { labelKey: 'nav.allGuides', path: '/guides', icon: BookOpen },
  { labelKey: 'nav.beaches', path: '/guides#beaches', icon: Waves },
  { labelKey: 'nav.hikingTrails', path: '/guides#hiking-trails', icon: Mountain },
  { labelKey: 'nav.bikeTrails', path: '/guides#bike-trails', icon: Bike },
];

export default function Header() {
  const [mobileOpen, setMobileOpen] = useState(false);
  const [scrolled, setScrolled] = useState(false);
  const [catDropdown, setCatDropdown] = useState(false);
  const [areaDropdown, setAreaDropdown] = useState(false);
  const [guidesDropdown, setGuidesDropdown] = useState(false);
  const [mobileGuidesOpen, setMobileGuidesOpen] = useState(false);
  const [authModalOpen, setAuthModalOpen] = useState(false);
  const { categories } = useCategories();
  const { areas } = useAreas();
  const { user, signOut } = useAuth();
  const location = useLocation();
  const catRef = useRef<HTMLDivElement>(null);
  const areaRef = useRef<HTMLDivElement>(null);
  const guidesRef = useRef<HTMLDivElement>(null);
  const { t } = useTranslation();
  const { l } = useLocalizedPath();

  const isHome = location.pathname === '/';

  useEffect(() => {
    function onScroll() {
      setScrolled(window.scrollY > 20);
    }
    window.addEventListener('scroll', onScroll);
    return () => window.removeEventListener('scroll', onScroll);
  }, []);

  useEffect(() => {
    setMobileOpen(false);
    setCatDropdown(false);
    setAreaDropdown(false);
    setGuidesDropdown(false);
    setMobileGuidesOpen(false);
  }, [location]);

  useEffect(() => {
    function handleClickOutside(e: MouseEvent) {
      if (catRef.current && !catRef.current.contains(e.target as Node)) setCatDropdown(false);
      if (areaRef.current && !areaRef.current.contains(e.target as Node)) setAreaDropdown(false);
      if (guidesRef.current && !guidesRef.current.contains(e.target as Node)) setGuidesDropdown(false);
    }
    function handleEscape(e: KeyboardEvent) {
      if (e.key === 'Escape') {
        setCatDropdown(false);
        setAreaDropdown(false);
        setGuidesDropdown(false);
        setMobileOpen(false);
      }
    }
    document.addEventListener('mousedown', handleClickOutside);
    document.addEventListener('keydown', handleEscape);
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
      document.removeEventListener('keydown', handleEscape);
    };
  }, []);

  const headerBg = scrolled || !isHome
    ? 'bg-white/95 backdrop-blur-md shadow-sm'
    : 'bg-transparent';

  const textColor = scrolled || !isHome ? 'text-ocean-800' : 'text-white';

  return (
    <header className={`fixed top-0 left-0 right-0 z-50 transition-all duration-300 ${headerBg}`}>
      <div className="container-wide">
        <div className="flex items-center justify-between h-18 lg:h-20">
          <Link to={l('/')} className="flex items-center gap-2 flex-shrink-0">
            <img
              src="/logo-calvia.jpeg"
              alt="Calvia.app"
              className="w-10 h-10 lg:w-12 lg:h-12 rounded-full object-cover"
            />
            <div className="hidden sm:block">
              <span className={`font-display text-xl font-bold ${textColor} transition-colors`}>
                CALVIA<span className="text-sun-500">.APP</span>
              </span>
            </div>
          </Link>

          <div className="hidden lg:block flex-1 max-w-md mx-6">
            <SearchBar />
          </div>

          <nav className="hidden lg:flex items-center gap-1">
            <div ref={catRef} className="relative">
              <button
                onClick={() => {
                  setCatDropdown(!catDropdown);
                  setAreaDropdown(false);
                  setGuidesDropdown(false);
                }}
                className={`flex items-center gap-1 px-3 py-2 rounded-lg text-sm font-medium
                           ${textColor} hover:bg-black/5 transition-all`}
              >
                {t('nav.businesses')}
                <ChevronDown className={`w-4 h-4 transition-transform ${catDropdown ? 'rotate-180' : ''}`} />
              </button>
              {catDropdown && (
                <div className="absolute top-full mt-1 left-0 w-72 bg-white rounded-xl shadow-lg border border-gray-100 overflow-hidden animate-slide-down">
                  <div className="max-h-96 overflow-y-auto py-2">
                    <Link
                      to={l('/businesses')}
                      className="block px-4 py-2.5 text-sm text-ocean-800 hover:bg-ocean-50 font-medium"
                    >
                      {t('nav.allCategories')}
                    </Link>
                    <div className="border-t border-gray-100 my-1" />
                    {categories.map((cat) => (
                      <Link
                        key={cat.id}
                        to={l(`/businesses/${cat.slug}`)}
                        className="block px-4 py-2 text-sm text-ocean-700 hover:bg-ocean-50 transition-colors"
                      >
                        {cat.name}
                      </Link>
                    ))}
                  </div>
                </div>
              )}
            </div>

            <div ref={areaRef} className="relative">
              <button
                onClick={() => {
                  setAreaDropdown(!areaDropdown);
                  setCatDropdown(false);
                  setGuidesDropdown(false);
                }}
                className={`flex items-center gap-1 px-3 py-2 rounded-lg text-sm font-medium
                           ${textColor} hover:bg-black/5 transition-all`}
              >
                {t('nav.areas')}
                <ChevronDown className={`w-4 h-4 transition-transform ${areaDropdown ? 'rotate-180' : ''}`} />
              </button>
              {areaDropdown && (
                <div className="absolute top-full mt-1 left-0 w-64 bg-white rounded-xl shadow-lg border border-gray-100 overflow-hidden animate-slide-down">
                  <div className="max-h-96 overflow-y-auto py-2">
                    <Link
                      to={l('/areas')}
                      className="block px-4 py-2.5 text-sm text-ocean-800 hover:bg-ocean-50 font-medium"
                    >
                      {t('nav.allAreas')}
                    </Link>
                    <div className="border-t border-gray-100 my-1" />
                    {areas.map((area) => (
                      <Link
                        key={area.id}
                        to={l(`/areas/${area.slug}`)}
                        className="block px-4 py-2 text-sm text-ocean-700 hover:bg-ocean-50 transition-colors"
                      >
                        {area.name}
                      </Link>
                    ))}
                  </div>
                </div>
              )}
            </div>

            <div ref={guidesRef} className="relative">
              <button
                onClick={() => {
                  setGuidesDropdown(!guidesDropdown);
                  setCatDropdown(false);
                  setAreaDropdown(false);
                }}
                className={`flex items-center gap-1 px-3 py-2 rounded-lg text-sm font-medium
                           ${textColor} hover:bg-black/5 transition-all`}
              >
                {t('nav.guides')}
                <ChevronDown className={`w-4 h-4 transition-transform ${guidesDropdown ? 'rotate-180' : ''}`} />
              </button>
              {guidesDropdown && (
                <div className="absolute top-full mt-1 left-0 w-56 bg-white rounded-xl shadow-lg border border-gray-100 overflow-hidden animate-slide-down">
                  <div className="py-2">
                    {GUIDE_SUBCATEGORIES.map((item) => {
                      const Icon = item.icon;
                      return (
                        <Link
                          key={item.path}
                          to={l(item.path)}
                          className="flex items-center gap-3 px-4 py-2.5 text-sm text-ocean-700 hover:bg-ocean-50 transition-colors"
                        >
                          <Icon className="w-4 h-4 text-ocean-400" />
                          {t(item.labelKey)}
                        </Link>
                      );
                    })}
                  </div>
                </div>
              )}
            </div>

            <Link
              to={l('/map')}
              className={`flex items-center gap-1 px-3 py-2 rounded-lg text-sm font-medium ${textColor} hover:bg-black/5 transition-all`}
            >
              <MapPin className="w-4 h-4" />
              {t('nav.map')}
            </Link>

            <Link
              to={l('/about')}
              className={`px-3 py-2 rounded-lg text-sm font-medium ${textColor} hover:bg-black/5 transition-all`}
            >
              {t('nav.about')}
            </Link>

            <div className="flex items-center gap-2 ml-3">
              <LanguageSwitcher />
              {user ? (
                <div className="flex items-center gap-1">
                  <Link
                    to={l('/dashboard')}
                    aria-label={t('nav.dashboard')}
                    className={`flex items-center gap-1.5 px-3 py-2 rounded-lg text-sm font-medium
                               ${textColor} hover:bg-black/5 transition-all`}
                  >
                    <LayoutDashboard className="w-4 h-4" />
                  </Link>
                  <Link
                    to={l('/account')}
                    aria-label={t('account.title')}
                    className={`flex items-center gap-1.5 px-3 py-2 rounded-lg text-sm font-medium
                               ${textColor} hover:bg-black/5 transition-all`}
                  >
                    <User className="w-4 h-4" />
                  </Link>
                  <button
                    onClick={() => signOut()}
                    aria-label={t('nav.signOut')}
                    className={`flex items-center px-2 py-2 rounded-lg text-sm font-medium
                               ${textColor} hover:bg-black/5 transition-all`}
                  >
                    <LogOut className="w-4 h-4" />
                  </button>
                </div>
              ) : (
                <button
                  onClick={() => setAuthModalOpen(true)}
                  className="btn-primary flex items-center gap-2 text-sm !py-2 !px-4"
                >
                  <LogIn className="w-4 h-4" />
                  {t('nav.signIn')}
                </button>
              )}
            </div>
          </nav>

          <button
            onClick={() => setMobileOpen(!mobileOpen)}
            aria-label={mobileOpen ? 'Close menu' : 'Open menu'}
            aria-expanded={mobileOpen}
            className={`lg:hidden p-2 rounded-lg ${textColor} hover:bg-black/5 transition-all`}
          >
            {mobileOpen ? <X className="w-6 h-6" /> : <Menu className="w-6 h-6" />}
          </button>
        </div>
      </div>

      {mobileOpen && (
        <div className="lg:hidden bg-white border-t border-gray-100 animate-slide-down">
          <div className="container-wide py-4 space-y-4">
            <SearchBar onClose={() => setMobileOpen(false)} />

            <div>
              <button
                onClick={() => setCatDropdown(!catDropdown)}
                className="flex items-center justify-between w-full py-2 text-sm font-medium text-ocean-800"
              >
                {t('nav.localBusinessProfiles')}
                <ChevronDown className={`w-4 h-4 transition-transform ${catDropdown ? 'rotate-180' : ''}`} />
              </button>
              {catDropdown && (
                <div className="pl-4 space-y-1 mt-1">
                  <Link to={l('/businesses')} className="block py-1.5 text-sm text-ocean-600">
                    {t('nav.allCategories')}
                  </Link>
                  {categories.map((cat) => (
                    <Link
                      key={cat.id}
                      to={l(`/businesses/${cat.slug}`)}
                      className="block py-1.5 text-sm text-ocean-600"
                    >
                      {cat.name}
                    </Link>
                  ))}
                </div>
              )}
            </div>

            <div>
              <button
                onClick={() => setAreaDropdown(!areaDropdown)}
                className="flex items-center justify-between w-full py-2 text-sm font-medium text-ocean-800"
              >
                {t('nav.areas')}
                <ChevronDown className={`w-4 h-4 transition-transform ${areaDropdown ? 'rotate-180' : ''}`} />
              </button>
              {areaDropdown && (
                <div className="pl-4 space-y-1 mt-1">
                  <Link to={l('/areas')} className="block py-1.5 text-sm text-ocean-600">
                    {t('nav.allAreas')}
                  </Link>
                  {areas.map((area) => (
                    <Link
                      key={area.id}
                      to={l(`/areas/${area.slug}`)}
                      className="block py-1.5 text-sm text-ocean-600"
                    >
                      {area.name}
                    </Link>
                  ))}
                </div>
              )}
            </div>

            <div>
              <button
                onClick={() => setMobileGuidesOpen(!mobileGuidesOpen)}
                className="flex items-center justify-between w-full py-2 text-sm font-medium text-ocean-800"
              >
                {t('nav.guidesAndTips')}
                <ChevronDown className={`w-4 h-4 transition-transform ${mobileGuidesOpen ? 'rotate-180' : ''}`} />
              </button>
              {mobileGuidesOpen && (
                <div className="pl-4 space-y-1 mt-1">
                  {GUIDE_SUBCATEGORIES.map((item) => {
                    const Icon = item.icon;
                    return (
                      <Link
                        key={item.path}
                        to={l(item.path)}
                        className="flex items-center gap-2 py-1.5 text-sm text-ocean-600"
                      >
                        <Icon className="w-3.5 h-3.5" />
                        {t(item.labelKey)}
                      </Link>
                    );
                  })}
                </div>
              )}
            </div>

            <Link to={l('/map')} className="flex items-center gap-2 py-2 text-sm font-medium text-ocean-800">
              <MapPin className="w-4 h-4 text-ocean-500" />
              {t('nav.map')}
            </Link>

            <Link to={l('/about')} className="block py-2 text-sm font-medium text-ocean-800">
              {t('nav.aboutTheConcept')}
            </Link>

            <div className="flex flex-col gap-2 pt-2 border-t border-gray-100">
              <LanguageSwitcher />
              {user ? (
                <>
                  <Link
                    to={l('/dashboard')}
                    className="btn-secondary text-center text-sm flex items-center justify-center gap-2"
                  >
                    <LayoutDashboard className="w-4 h-4" />
                    {t('nav.dashboard')}
                  </Link>
                  <Link
                    to={l('/account')}
                    className="btn-secondary text-center text-sm flex items-center justify-center gap-2"
                  >
                    <User className="w-4 h-4" />
                    {t('account.title')}
                  </Link>
                  <button
                    onClick={() => signOut()}
                    className="text-center text-sm flex items-center justify-center gap-2 px-6 py-3 rounded-lg font-semibold text-gray-600 hover:bg-gray-100 transition-all"
                  >
                    <LogOut className="w-4 h-4" />
                    {t('nav.signOut')}
                  </button>
                </>
              ) : (
                <button
                  onClick={() => { setAuthModalOpen(true); setMobileOpen(false); }}
                  className="btn-primary text-center text-sm flex items-center justify-center gap-2"
                >
                  <LogIn className="w-4 h-4" />
                  {t('nav.signIn')}
                </button>
              )}
            </div>
          </div>
        </div>
      )}

      <AuthModal isOpen={authModalOpen} onClose={() => setAuthModalOpen(false)} />
    </header>
  );
}
