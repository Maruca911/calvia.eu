import { lazy, Suspense } from 'react';
import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom';
import Layout from './components/layout/Layout';
import ScrollToTop from './components/layout/ScrollToTop';
import HomePage from './pages/HomePage';
import NotFoundPage from './pages/NotFoundPage';
import { detectBrowserLanguage } from './i18n/languages';

const BusinessesPage = lazy(() => import('./pages/BusinessesPage'));
const CategoryPage = lazy(() => import('./pages/CategoryPage'));
const AreasPage = lazy(() => import('./pages/AreasPage'));
const AreaDetailPage = lazy(() => import('./pages/AreaDetailPage'));
const AboutPage = lazy(() => import('./pages/AboutPage'));
const ConsumerSignupPage = lazy(() => import('./pages/ConsumerSignupPage'));
const BusinessSignupPage = lazy(() => import('./pages/BusinessSignupPage'));
const PrivacyPage = lazy(() => import('./pages/PrivacyPage'));
const ImpressumPage = lazy(() => import('./pages/ImpressumPage'));
const TermsPage = lazy(() => import('./pages/TermsPage'));
const ProfilePage = lazy(() => import('./pages/ProfilePage'));
const BusinessProfilePage = lazy(() => import('./pages/BusinessProfilePage'));
const GuidesPage = lazy(() => import('./pages/GuidesPage'));
const GuidePage = lazy(() => import('./pages/GuidePage'));

function PageLoader() {
  return (
    <div className="flex items-center justify-center min-h-[60vh]">
      <div className="w-8 h-8 border-4 border-ocean-200 border-t-ocean-500 rounded-full animate-spin" />
    </div>
  );
}

function LanguageRedirect() {
  const lang = detectBrowserLanguage();
  return <Navigate to={`/${lang}`} replace />;
}

function LocalizedRoutes() {
  return (
    <Route element={<Layout />}>
      <Route index element={<HomePage />} />
      <Route path="businesses" element={<Suspense fallback={<PageLoader />}><BusinessesPage /></Suspense>} />
      <Route path="businesses/:slug" element={<Suspense fallback={<PageLoader />}><CategoryPage /></Suspense>} />
      <Route path="profile/:slug" element={<Suspense fallback={<PageLoader />}><BusinessProfilePage /></Suspense>} />
      <Route path="areas" element={<Suspense fallback={<PageLoader />}><AreasPage /></Suspense>} />
      <Route path="areas/:slug" element={<Suspense fallback={<PageLoader />}><AreaDetailPage /></Suspense>} />
      <Route path="guides" element={<Suspense fallback={<PageLoader />}><GuidesPage /></Suspense>} />
      <Route path="guides/:slug" element={<Suspense fallback={<PageLoader />}><GuidePage /></Suspense>} />
      <Route path="about" element={<Suspense fallback={<PageLoader />}><AboutPage /></Suspense>} />
      <Route path="signup/consumer" element={<Suspense fallback={<PageLoader />}><ConsumerSignupPage /></Suspense>} />
      <Route path="signup/business" element={<Suspense fallback={<PageLoader />}><BusinessSignupPage /></Suspense>} />
      <Route path="privacy" element={<Suspense fallback={<PageLoader />}><PrivacyPage /></Suspense>} />
      <Route path="impressum" element={<Suspense fallback={<PageLoader />}><ImpressumPage /></Suspense>} />
      <Route path="terms" element={<Suspense fallback={<PageLoader />}><TermsPage /></Suspense>} />
      <Route path="account" element={<Suspense fallback={<PageLoader />}><ProfilePage /></Suspense>} />
    </Route>
  );
}

export default function App() {
  return (
    <BrowserRouter>
      <ScrollToTop />
      <Routes>
        <Route path="/" element={<LanguageRedirect />} />
        <Route path=":lang">{LocalizedRoutes()}</Route>
        <Route path="*" element={<Layout />}>
          <Route path="*" element={<NotFoundPage />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}
