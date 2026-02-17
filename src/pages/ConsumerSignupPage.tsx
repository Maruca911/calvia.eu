import { useState } from 'react';
import { Link } from 'react-router-dom';
import { UserPlus, CheckCircle, ArrowLeft } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../hooks/useLanguage';
import { supabase } from '../lib/supabase';
import { usePageMeta } from '../hooks/usePageMeta';

const nationalities = [
  'German', 'British', 'Swedish', 'Norwegian', 'Danish', 'Finnish', 'Dutch',
  'French', 'Swiss', 'Austrian', 'Belgian', 'Spanish', 'American', 'Other',
];

const propertyTypes = [
  'Apartment / Flat', 'Villa / House', 'Finca / Country House',
  'Townhouse', 'Penthouse', 'Rental (long-term)', 'Rental (short-term)',
  'Looking to buy', 'Other',
];

export default function ConsumerSignupPage() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  usePageMeta(
    t('seo.consumerSignupTitle'),
    t('seo.consumerSignupDesc')
  );
  const [form, setForm] = useState({
    full_name: '',
    email: '',
    nationality: '',
    property_type: '',
  });
  const [submitting, setSubmitting] = useState(false);
  const [success, setSuccess] = useState(false);
  const [error, setError] = useState('');

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!form.email || !form.full_name) {
      setError(t('signup.nameEmailRequired'));
      return;
    }
    setSubmitting(true);
    setError('');

    const { error: dbError } = await supabase.from('early_bird_signups').insert({
      signup_type: 'consumer',
      full_name: form.full_name,
      email: form.email,
      nationality: form.nationality,
      property_type: form.property_type,
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
          <h2 className="font-display text-3xl font-bold text-ocean-800 mb-3">{t('signup.welcomeAboard')}</h2>
          <p className="text-gray-500 mb-8">
            {t('signup.consumerSuccess')}
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
      <section className="bg-gradient-to-br from-sun-500 to-sun-600 py-16">
        <div className="container-wide text-center">
          <UserPlus className="w-12 h-12 text-white mx-auto mb-4" />
          <h1 className="font-display text-4xl font-bold text-white mb-3">
            {t('signup.consumerTitle')}
          </h1>
          <p className="text-white/80 max-w-lg mx-auto">
            {t('signup.consumerDesc')}
          </p>
        </div>
      </section>

      <section className="container-wide py-12">
        <form onSubmit={handleSubmit} className="max-w-lg mx-auto">
          <div className="card p-8 space-y-5">
            <div>
              <label htmlFor="consumer-name" className="block text-sm font-medium text-ocean-800 mb-1.5">{t('signup.fullName')} *</label>
              <input
                id="consumer-name"
                type="text"
                value={form.full_name}
                onChange={(e) => setForm({ ...form, full_name: e.target.value })}
                className="w-full px-4 py-3 rounded-lg border border-gray-200 text-ocean-800
                           focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all text-sm"
                placeholder={t('signup.yourFullName')}
              />
            </div>

            <div>
              <label htmlFor="consumer-email" className="block text-sm font-medium text-ocean-800 mb-1.5">{t('signup.emailAddress')} *</label>
              <input
                id="consumer-email"
                type="email"
                value={form.email}
                onChange={(e) => setForm({ ...form, email: e.target.value })}
                className="w-full px-4 py-3 rounded-lg border border-gray-200 text-ocean-800
                           focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all text-sm"
                placeholder="you@example.com"
              />
            </div>

            <div>
              <label htmlFor="consumer-nationality" className="block text-sm font-medium text-ocean-800 mb-1.5">{t('signup.nationality')}</label>
              <select
                id="consumer-nationality"
                value={form.nationality}
                onChange={(e) => setForm({ ...form, nationality: e.target.value })}
                className="w-full px-4 py-3 rounded-lg border border-gray-200 text-ocean-800
                           focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all text-sm"
              >
                <option value="">{t('signup.selectNationality')}</option>
                {nationalities.map((n) => (
                  <option key={n} value={n}>{n}</option>
                ))}
              </select>
            </div>

            <div>
              <label htmlFor="consumer-property" className="block text-sm font-medium text-ocean-800 mb-1.5">{t('signup.propertyType')}</label>
              <select
                id="consumer-property"
                value={form.property_type}
                onChange={(e) => setForm({ ...form, property_type: e.target.value })}
                className="w-full px-4 py-3 rounded-lg border border-gray-200 text-ocean-800
                           focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all text-sm"
              >
                <option value="">{t('signup.selectPropertyType')}</option>
                {propertyTypes.map((p) => (
                  <option key={p} value={p}>{p}</option>
                ))}
              </select>
            </div>

            {error && (
              <div className="bg-red-50 text-red-600 text-sm px-4 py-3 rounded-lg">{error}</div>
            )}

            <button
              type="submit"
              disabled={submitting}
              className="btn-primary w-full flex items-center justify-center gap-2 disabled:opacity-50"
            >
              {submitting ? (
                <div className="w-5 h-5 border-2 border-white/30 border-t-white rounded-full animate-spin" />
              ) : (
                <>
                  {t('signup.joinEarlyBird')}
                  <ArrowLeft className="w-4 h-4 rotate-180" />
                </>
              )}
            </button>
          </div>

          <p className="text-center text-xs text-gray-400 mt-4">
            {t('signup.alreadyBusiness')}{' '}
            <Link to={l('/signup/business')} className="text-ocean-500 hover:text-sun-500">
              {t('signup.signUpBusiness')}
            </Link>
          </p>
        </form>
      </section>
    </div>
  );
}
