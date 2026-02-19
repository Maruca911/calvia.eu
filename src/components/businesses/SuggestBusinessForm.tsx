import { useState } from 'react';
import { Send, CheckCircle, AlertCircle, Loader2, Lightbulb, X } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { supabase } from '../../lib/supabase';
import type { BusinessSuggestion } from '../../types/database';

interface SuggestBusinessFormProps {
  onClose?: () => void;
}

type FormState = Omit<BusinessSuggestion, 'id' | 'status' | 'created_at'>;

const EMPTY: FormState = {
  business_name: '',
  category: '',
  area: '',
  address: '',
  phone: '',
  website: '',
  description: '',
  submitter_name: '',
  submitter_email: '',
};

export default function SuggestBusinessForm({ onClose }: SuggestBusinessFormProps) {
  const { t } = useTranslation();
  const [form, setForm] = useState<FormState>(EMPTY);
  const [status, setStatus] = useState<'idle' | 'submitting' | 'success' | 'error'>('idle');
  const [errors, setErrors] = useState<Partial<FormState>>({});

  function validate(): Partial<FormState> {
    const e: Partial<FormState> = {};
    if (!form.business_name.trim()) e.business_name = t('suggest.nameRequired');
    if (!form.submitter_name.trim()) e.submitter_name = t('suggest.yourNameRequired');
    if (!form.submitter_email.trim() || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(form.submitter_email)) {
      e.submitter_email = t('suggest.validEmail');
    }
    return e;
  }

  function handleChange(field: keyof FormState, value: string) {
    setForm((prev) => ({ ...prev, [field]: value }));
    if (errors[field]) setErrors((prev) => ({ ...prev, [field]: undefined }));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const errs = validate();
    if (Object.keys(errs).length > 0) {
      setErrors(errs);
      return;
    }
    setStatus('submitting');

    const { error } = await supabase.from('business_suggestions').insert({
      business_name: form.business_name.trim(),
      category: form.category.trim(),
      area: form.area.trim(),
      address: form.address.trim(),
      phone: form.phone.trim(),
      website: form.website.trim(),
      description: form.description.trim(),
      submitter_name: form.submitter_name.trim(),
      submitter_email: form.submitter_email.trim(),
    });

    if (error) {
      setStatus('error');
    } else {
      setStatus('success');
    }
  }

  if (status === 'success') {
    return (
      <div className="text-center py-8">
        <div className="w-14 h-14 rounded-full bg-green-100 flex items-center justify-center mx-auto mb-4">
          <CheckCircle className="w-7 h-7 text-green-600" />
        </div>
        <h3 className="font-display text-xl font-bold text-ocean-800 mb-2">{t('suggest.thankYou')}</h3>
        <p className="text-gray-500 text-sm mb-5">{t('suggest.successMsg')}</p>
        {onClose && (
          <button onClick={onClose} className="text-ocean-500 hover:text-ocean-700 font-medium text-sm transition-colors">
            {t('suggest.close')}
          </button>
        )}
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} noValidate className="space-y-4">
      <div className="flex items-start gap-3 mb-4 p-3 bg-ocean-50 rounded-lg">
        <Lightbulb className="w-5 h-5 text-ocean-500 flex-shrink-0 mt-0.5" />
        <p className="text-sm text-ocean-700">{t('suggest.intro')}</p>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <div>
          <label className="block text-xs font-medium text-gray-600 mb-1.5">
            {t('suggest.businessName')} <span className="text-red-400">*</span>
          </label>
          <input
            type="text"
            value={form.business_name}
            onChange={(e) => handleChange('business_name', e.target.value)}
            className={`w-full px-3 py-2.5 rounded-lg border text-sm text-ocean-800 bg-white
              focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all
              ${errors.business_name ? 'border-red-300' : 'border-gray-200 hover:border-gray-300'}`}
            placeholder={t('suggest.businessNamePlaceholder')}
          />
          {errors.business_name && (
            <p className="mt-1 text-xs text-red-500 flex items-center gap-1">
              <AlertCircle className="w-3 h-3" /> {errors.business_name}
            </p>
          )}
        </div>

        <div>
          <label className="block text-xs font-medium text-gray-600 mb-1.5">
            {t('suggest.category')}
          </label>
          <input
            type="text"
            value={form.category}
            onChange={(e) => handleChange('category', e.target.value)}
            className="w-full px-3 py-2.5 rounded-lg border border-gray-200 hover:border-gray-300 text-sm text-ocean-800 bg-white focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all"
            placeholder={t('suggest.categoryPlaceholder')}
          />
        </div>

        <div>
          <label className="block text-xs font-medium text-gray-600 mb-1.5">
            {t('suggest.area')}
          </label>
          <input
            type="text"
            value={form.area}
            onChange={(e) => handleChange('area', e.target.value)}
            className="w-full px-3 py-2.5 rounded-lg border border-gray-200 hover:border-gray-300 text-sm text-ocean-800 bg-white focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all"
            placeholder={t('suggest.areaPlaceholder')}
          />
        </div>

        <div>
          <label className="block text-xs font-medium text-gray-600 mb-1.5">
            {t('suggest.phone')}
          </label>
          <input
            type="tel"
            value={form.phone}
            onChange={(e) => handleChange('phone', e.target.value)}
            className="w-full px-3 py-2.5 rounded-lg border border-gray-200 hover:border-gray-300 text-sm text-ocean-800 bg-white focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all"
            placeholder="+34 971 000 000"
          />
        </div>

        <div className="sm:col-span-2">
          <label className="block text-xs font-medium text-gray-600 mb-1.5">
            {t('suggest.address')}
          </label>
          <input
            type="text"
            value={form.address}
            onChange={(e) => handleChange('address', e.target.value)}
            className="w-full px-3 py-2.5 rounded-lg border border-gray-200 hover:border-gray-300 text-sm text-ocean-800 bg-white focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all"
            placeholder={t('suggest.addressPlaceholder')}
          />
        </div>

        <div className="sm:col-span-2">
          <label className="block text-xs font-medium text-gray-600 mb-1.5">
            {t('suggest.website')}
          </label>
          <input
            type="url"
            value={form.website}
            onChange={(e) => handleChange('website', e.target.value)}
            className="w-full px-3 py-2.5 rounded-lg border border-gray-200 hover:border-gray-300 text-sm text-ocean-800 bg-white focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all"
            placeholder="https://..."
          />
        </div>

        <div className="sm:col-span-2">
          <label className="block text-xs font-medium text-gray-600 mb-1.5">
            {t('suggest.description')}
          </label>
          <textarea
            rows={3}
            value={form.description}
            onChange={(e) => handleChange('description', e.target.value)}
            className="w-full px-3 py-2.5 rounded-lg border border-gray-200 hover:border-gray-300 text-sm text-ocean-800 bg-white focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all resize-none"
            placeholder={t('suggest.descriptionPlaceholder')}
          />
        </div>
      </div>

      <div className="border-t border-gray-100 pt-4">
        <p className="text-xs font-medium text-gray-500 uppercase tracking-wider mb-3">{t('suggest.yourDetails')}</p>
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <div>
            <label className="block text-xs font-medium text-gray-600 mb-1.5">
              {t('suggest.yourName')} <span className="text-red-400">*</span>
            </label>
            <input
              type="text"
              value={form.submitter_name}
              onChange={(e) => handleChange('submitter_name', e.target.value)}
              className={`w-full px-3 py-2.5 rounded-lg border text-sm text-ocean-800 bg-white
                focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all
                ${errors.submitter_name ? 'border-red-300' : 'border-gray-200 hover:border-gray-300'}`}
              placeholder={t('contact.yourName')}
            />
            {errors.submitter_name && (
              <p className="mt-1 text-xs text-red-500 flex items-center gap-1">
                <AlertCircle className="w-3 h-3" /> {errors.submitter_name}
              </p>
            )}
          </div>

          <div>
            <label className="block text-xs font-medium text-gray-600 mb-1.5">
              {t('suggest.yourEmail')} <span className="text-red-400">*</span>
            </label>
            <input
              type="email"
              value={form.submitter_email}
              onChange={(e) => handleChange('submitter_email', e.target.value)}
              className={`w-full px-3 py-2.5 rounded-lg border text-sm text-ocean-800 bg-white
                focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all
                ${errors.submitter_email ? 'border-red-300' : 'border-gray-200 hover:border-gray-300'}`}
              placeholder="you@example.com"
            />
            {errors.submitter_email && (
              <p className="mt-1 text-xs text-red-500 flex items-center gap-1">
                <AlertCircle className="w-3 h-3" /> {errors.submitter_email}
              </p>
            )}
          </div>
        </div>
      </div>

      {status === 'error' && (
        <div className="flex items-center gap-2 text-red-600 bg-red-50 px-4 py-3 rounded-lg text-sm">
          <AlertCircle className="w-4 h-4 flex-shrink-0" />
          {t('contact.submitError')}
        </div>
      )}

      <div className="flex items-center gap-3 pt-1">
        <button
          type="submit"
          disabled={status === 'submitting'}
          className="btn-primary flex items-center gap-2 disabled:opacity-60 disabled:cursor-not-allowed"
        >
          {status === 'submitting' ? (
            <>
              <Loader2 className="w-4 h-4 animate-spin" />
              {t('contact.sending')}
            </>
          ) : (
            <>
              <Send className="w-4 h-4" />
              {t('suggest.submit')}
            </>
          )}
        </button>
        {onClose && (
          <button
            type="button"
            onClick={onClose}
            className="text-sm text-gray-500 hover:text-gray-700 font-medium transition-colors flex items-center gap-1"
          >
            <X className="w-4 h-4" />
            {t('suggest.cancel')}
          </button>
        )}
      </div>
    </form>
  );
}
