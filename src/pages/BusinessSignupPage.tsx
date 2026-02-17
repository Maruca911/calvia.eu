import { useState } from 'react';
import { Link } from 'react-router-dom';
import { Building, CheckCircle, ArrowLeft } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../hooks/useLanguage';
import { supabase } from '../lib/supabase';
import { useCategories } from '../hooks/useCategories';
import { usePageMeta } from '../hooks/usePageMeta';

const businessSizes = [
  'Solo / Freelancer',
  '2-5 employees',
  '6-20 employees',
  '21-50 employees',
  '50+ employees',
];

export default function BusinessSignupPage() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  usePageMeta(
    t('seo.businessSignupTitle'),
    t('seo.businessSignupDesc')
  );
  const { categories } = useCategories();
  const [form, setForm] = useState({
    full_name: '',
    email: '',
    business_name: '',
    business_category: '',
    business_size: '',
  });
  const [submitting, setSubmitting] = useState(false);
  const [success, setSuccess] = useState(false);
  const [error, setError] = useState('');

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!form.email || !form.full_name || !form.business_name) {
      setError(t('signup.nameEmailBusinessRequired'));
      return;
    }
    setSubmitting(true);
    setError('');

    const { error: dbError } = await supabase.from('early_bird_signups').insert({
      signup_type: 'business',
      full_name: form.full_name,
      email: form.email,
      business_name: form.business_name,
      business_category: form.business_category,
      business_size: form.business_size,
    });

    if (dbError) {
      setError(t('signup.somethingWrong'));
      setSubmitting(false);
      return;
    }

    setSuccess(true);
    setSubmitting(false);
  }

  if (success) {
    return (
      <div className="pt-24 pb-16 min-h-screen flex items-center justify-center">
        <div className="text-center max-w-md mx-auto px-4">
          <div className="w-20 h-20 rounded-full bg-green-100 flex items-center justify-center mx-auto mb-6">
            <CheckCircle className="w-10 h-10 text-green-500" />
          </div>
          <h2 className="font-display text-3xl font-bold text-ocean-800 mb-3">{t('signup.youreIn')}</h2>
          <p className="text-gray-500 mb-8">
            {t('signup.businessSuccess')}
          </p>
          <Link to={l('/')} className="btn-secondary inline-flex items-center gap-2">
            <ArrowLeft className="w-4 h-4" /> {t('signup.backToHome')}
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className="pt-24 pb-16">
      <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-16">
        <div className="container-wide text-center">
          <Building className="w-12 h-12 text-white mx-auto mb-4" />
          <h1 className="font-display text-4xl font-bold text-white mb-3">
            {t('signup.businessTitle')}
          </h1>
          <p className="text-ocean-200 max-w-lg mx-auto">
            {t('signup.businessDesc')}
          </p>
        </div>
      </section>

      <section className="container-wide py-12">
        <form onSubmit={handleSubmit} className="max-w-lg mx-auto">
          <div className="card p-8 space-y-5">
            <div>
              <label htmlFor="biz-name" className="block text-sm font-medium text-ocean-800 mb-1.5">{t('signup.contactName')} *</label>
              <input
                id="biz-name"
                type="text"
                value={form.full_name}
                onChange={(e) => setForm({ ...form, full_name: e.target.value })}
                className="w-full px-4 py-3 rounded-lg border border-gray-200 text-ocean-800
                           focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all text-sm"
                placeholder={t('signup.yourFullName')}
              />
            </div>

            <div>
              <label htmlFor="biz-email" className="block text-sm font-medium text-ocean-800 mb-1.5">{t('signup.emailAddress')} *</label>
              <input
                id="biz-email"
                type="email"
                value={form.email}
                onChange={(e) => setForm({ ...form, email: e.target.value })}
                className="w-full px-4 py-3 rounded-lg border border-gray-200 text-ocean-800
                           focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all text-sm"
                placeholder="business@example.com"
              />
            </div>

            <div>
              <label htmlFor="biz-business-name" className="block text-sm font-medium text-ocean-800 mb-1.5">{t('signup.businessName')} *</label>
              <input
                id="biz-business-name"
                type="text"
                value={form.business_name}
                onChange={(e) => setForm({ ...form, business_name: e.target.value })}
                className="w-full px-4 py-3 rounded-lg border border-gray-200 text-ocean-800
                           focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all text-sm"
                placeholder={t('signup.yourBusinessName')}
              />
            </div>

            <div>
              <label htmlFor="biz-category" className="block text-sm font-medium text-ocean-800 mb-1.5">{t('signup.businessCategory')}</label>
              <select
                id="biz-category"
                value={form.business_category}
                onChange={(e) => setForm({ ...form, business_category: e.target.value })}
                className="w-full px-4 py-3 rounded-lg border border-gray-200 text-ocean-800
                           focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all text-sm"
              >
                <option value="">{t('signup.selectCategory')}</option>
                {categories.map((c) => (
                  <option key={c.id} value={c.name}>{c.name}</option>
                ))}
              </select>
            </div>

            <div>
              <label htmlFor="biz-size" className="block text-sm font-medium text-ocean-800 mb-1.5">{t('signup.businessSize')}</label>
              <select
                id="biz-size"
                value={form.business_size}
                onChange={(e) => setForm({ ...form, business_size: e.target.value })}
                className="w-full px-4 py-3 rounded-lg border border-gray-200 text-ocean-800
                           focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all text-sm"
              >
                <option value="">{t('signup.selectSize')}</option>
                {businessSizes.map((s) => (
                  <option key={s} value={s}>{s}</option>
                ))}
              </select>
            </div>

            {error && (
              <div className="bg-red-50 text-red-600 text-sm px-4 py-3 rounded-lg">{error}</div>
            )}

            <button
              type="submit"
              disabled={submitting}
              className="btn-secondary w-full flex items-center justify-center gap-2 disabled:opacity-50"
            >
              {submitting ? (
                <div className="w-5 h-5 border-2 border-white/30 border-t-white rounded-full animate-spin" />
              ) : (
                <>
                  {t('signup.registerBusiness')}
                  <ArrowLeft className="w-4 h-4 rotate-180" />
                </>
              )}
            </button>
          </div>

          <p className="text-center text-xs text-gray-400 mt-4">
            {t('signup.notBusiness')}{' '}
            <Link to={l('/signup/consumer')} className="text-ocean-500 hover:text-sun-500">
              {t('signup.signUpConsumer')}
            </Link>
          </p>
        </form>
      </section>
    </div>
  );
}
