import { useState } from 'react';
import { Send, CheckCircle, AlertCircle, Loader2 } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { supabase } from '../../lib/supabase';

interface FormData {
  name: string;
  email: string;
  subject: string;
  message: string;
}

interface FormErrors {
  name?: string;
  email?: string;
  subject?: string;
  message?: string;
}

export default function ContactForm() {
  const { t } = useTranslation();

  function validate(data: FormData): FormErrors {
    const errors: FormErrors = {};
    if (!data.name.trim()) errors.name = t('contact.nameRequired');
    if (!data.email.trim()) {
      errors.email = t('contact.emailRequired');
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(data.email)) {
      errors.email = t('contact.validEmail');
    }
    if (!data.subject.trim()) errors.subject = t('contact.subjectRequired');
    if (!data.message.trim()) {
      errors.message = t('contact.messageRequired');
    } else if (data.message.trim().length < 10) {
      errors.message = t('contact.messageMin');
    }
    return errors;
  }

  const [formData, setFormData] = useState<FormData>({
    name: '',
    email: '',
    subject: '',
    message: '',
  });
  const [errors, setErrors] = useState<FormErrors>({});
  const [status, setStatus] = useState<'idle' | 'submitting' | 'success' | 'error'>('idle');
  const [touched, setTouched] = useState<Record<string, boolean>>({});

  function handleChange(field: keyof FormData, value: string) {
    setFormData(prev => ({ ...prev, [field]: value }));
    if (touched[field]) {
      const newErrors = validate({ ...formData, [field]: value });
      setErrors(prev => ({ ...prev, [field]: newErrors[field] }));
    }
  }

  function handleBlur(field: keyof FormData) {
    setTouched(prev => ({ ...prev, [field]: true }));
    const newErrors = validate(formData);
    setErrors(prev => ({ ...prev, [field]: newErrors[field] }));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const validationErrors = validate(formData);
    setErrors(validationErrors);
    setTouched({ name: true, email: true, subject: true, message: true });

    if (Object.keys(validationErrors).length > 0) return;

    setStatus('submitting');
    const { error } = await supabase
      .from('contact_submissions')
      .insert({
        name: formData.name.trim(),
        email: formData.email.trim(),
        subject: formData.subject.trim(),
        message: formData.message.trim(),
      });

    if (error) {
      setStatus('error');
    } else {
      setStatus('success');
      setFormData({ name: '', email: '', subject: '', message: '' });
      setTouched({});
      setErrors({});
    }
  }

  if (status === 'success') {
    return (
      <div className="text-center py-12">
        <div className="w-16 h-16 rounded-full bg-green-100 flex items-center justify-center mx-auto mb-4 animate-fade-in">
          <CheckCircle className="w-8 h-8 text-green-600" />
        </div>
        <h3 className="font-display text-2xl font-bold text-ocean-800 mb-2">{t('contact.messageSent')}</h3>
        <p className="text-gray-500 mb-6">{t('contact.willGetBack')}</p>
        <button
          onClick={() => setStatus('idle')}
          className="text-ocean-500 hover:text-sun-500 font-medium transition-colors"
        >
          {t('contact.sendAnother')}
        </button>
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} noValidate className="space-y-5">
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-5">
        <div>
          <label htmlFor="contact-name" className="block text-sm font-medium text-ocean-800 mb-1.5">
            {t('contact.name')} <span className="text-red-400">*</span>
          </label>
          <input
            id="contact-name"
            type="text"
            value={formData.name}
            onChange={e => handleChange('name', e.target.value)}
            onBlur={() => handleBlur('name')}
            className={`w-full px-4 py-3 rounded-lg border bg-white text-ocean-800
              focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all
              ${errors.name && touched.name ? 'border-red-300' : 'border-gray-200 hover:border-gray-300'}`}
            placeholder={t('contact.yourName')}
          />
          {errors.name && touched.name && (
            <p className="mt-1 text-xs text-red-500 flex items-center gap-1">
              <AlertCircle className="w-3 h-3" /> {errors.name}
            </p>
          )}
        </div>

        <div>
          <label htmlFor="contact-email" className="block text-sm font-medium text-ocean-800 mb-1.5">
            {t('contact.email')} <span className="text-red-400">*</span>
          </label>
          <input
            id="contact-email"
            type="email"
            value={formData.email}
            onChange={e => handleChange('email', e.target.value)}
            onBlur={() => handleBlur('email')}
            className={`w-full px-4 py-3 rounded-lg border bg-white text-ocean-800
              focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all
              ${errors.email && touched.email ? 'border-red-300' : 'border-gray-200 hover:border-gray-300'}`}
            placeholder={t('contact.yourEmail')}
          />
          {errors.email && touched.email && (
            <p className="mt-1 text-xs text-red-500 flex items-center gap-1">
              <AlertCircle className="w-3 h-3" /> {errors.email}
            </p>
          )}
        </div>
      </div>

      <div>
        <label htmlFor="contact-subject" className="block text-sm font-medium text-ocean-800 mb-1.5">
          {t('contact.subject')} <span className="text-red-400">*</span>
        </label>
        <input
          id="contact-subject"
          type="text"
          value={formData.subject}
          onChange={e => handleChange('subject', e.target.value)}
          onBlur={() => handleBlur('subject')}
          className={`w-full px-4 py-3 rounded-lg border bg-white text-ocean-800
            focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all
            ${errors.subject && touched.subject ? 'border-red-300' : 'border-gray-200 hover:border-gray-300'}`}
          placeholder={t('contact.howCanWeHelp')}
        />
        {errors.subject && touched.subject && (
          <p className="mt-1 text-xs text-red-500 flex items-center gap-1">
            <AlertCircle className="w-3 h-3" /> {errors.subject}
          </p>
        )}
      </div>

      <div>
        <label htmlFor="contact-message" className="block text-sm font-medium text-ocean-800 mb-1.5">
          {t('contact.message')} <span className="text-red-400">*</span>
        </label>
        <textarea
          id="contact-message"
          rows={5}
          value={formData.message}
          onChange={e => handleChange('message', e.target.value)}
          onBlur={() => handleBlur('message')}
          className={`w-full px-4 py-3 rounded-lg border bg-white text-ocean-800 resize-none
            focus:outline-none focus:ring-2 focus:ring-ocean-300 transition-all
            ${errors.message && touched.message ? 'border-red-300' : 'border-gray-200 hover:border-gray-300'}`}
          placeholder={t('contact.tellUsMore')}
        />
        {errors.message && touched.message && (
          <p className="mt-1 text-xs text-red-500 flex items-center gap-1">
            <AlertCircle className="w-3 h-3" /> {errors.message}
          </p>
        )}
      </div>

      {status === 'error' && (
        <div className="flex items-center gap-2 text-red-600 bg-red-50 px-4 py-3 rounded-lg text-sm">
          <AlertCircle className="w-4 h-4 flex-shrink-0" />
          {t('contact.submitError')}
        </div>
      )}

      <button
        type="submit"
        disabled={status === 'submitting'}
        className="btn-primary w-full sm:w-auto flex items-center justify-center gap-2 disabled:opacity-60 disabled:cursor-not-allowed"
      >
        {status === 'submitting' ? (
          <>
            <Loader2 className="w-4 h-4 animate-spin" />
            {t('contact.sending')}
          </>
        ) : (
          <>
            <Send className="w-4 h-4" />
            {t('contact.sendMessage')}
          </>
        )}
      </button>
    </form>
  );
}
