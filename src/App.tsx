import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom';
import Layout from './components/layout/Layout';
import ScrollToTop from './components/layout/ScrollToTop';
import HomePage from './pages/HomePage';
import BusinessesPage from './pages/BusinessesPage';
import CategoryPage from './pages/CategoryPage';
import AreasPage from './pages/AreasPage';
import AreaDetailPage from './pages/AreaDetailPage';
import AboutPage from './pages/AboutPage';
import ConsumerSignupPage from './pages/ConsumerSignupPage';
import BusinessSignupPage from './pages/BusinessSignupPage';
import PrivacyPage from './pages/PrivacyPage';
import BusinessProfilePage from './pages/BusinessProfilePage';
import GuidesPage from './pages/GuidesPage';
import GuidePage from './pages/GuidePage';
import NotFoundPage from './pages/NotFoundPage';
import { detectBrowserLanguage } from './i18n/languages';

function LanguageRedirect() {
  const lang = detectBrowserLanguage();
  return <Navigate to={`/${lang}`} replace />;
}

function LocalizedRoutes() {
  return (
    <Route element={<Layout />}>
      <Route index element={<HomePage />} />
      <Route path="businesses" element={<BusinessesPage />} />
      <Route path="businesses/:slug" element={<CategoryPage />} />
      <Route path="profile/:slug" element={<BusinessProfilePage />} />
      <Route path="areas" element={<AreasPage />} />
      <Route path="areas/:slug" element={<AreaDetailPage />} />
      <Route path="guides" element={<GuidesPage />} />
      <Route path="guides/:slug" element={<GuidePage />} />
      <Route path="about" element={<AboutPage />} />
      <Route path="signup/consumer" element={<ConsumerSignupPage />} />
      <Route path="signup/business" element={<BusinessSignupPage />} />
      <Route path="privacy" element={<PrivacyPage />} />
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
