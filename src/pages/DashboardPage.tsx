import { useState, useEffect, useCallback } from 'react';
import { Link } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import {
  Building2, Star, Eye, Edit3, Save, X, Mail,
  Phone, Globe, MapPin, MessageSquare, ArrowRight, LogIn,
} from 'lucide-react';
import { useAuth } from '../contexts/AuthContext';
import { useLocalizedPath } from '../hooks/useLanguage';
import { supabase } from '../lib/supabase';
import AuthModal from '../components/auth/AuthModal';
import type { BusinessWithRelations, ReviewWithProfile } from '../types/database';

interface DashboardBusiness extends BusinessWithRelations {
  owner_id: string | null;
  claimed: boolean;
  view_count: number;
}

function ClaimForm({ userId, onClaimed }: { userId: string; onClaimed: () => void }) {
  const { t } = useTranslation();
  const [email, setEmail] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  async function handleClaim(e: React.FormEvent) {
    e.preventDefault();
    setError('');
    setLoading(true);

    const { data, error: fetchErr } = await supabase
      .from('businesses')
      .select('id')
      .eq('email', email.trim().toLowerCase())
      .eq('claimed', false);

    if (fetchErr || !data || data.length === 0) {
      setError(t('dashboard.noMatch'));
      setLoading(false);
      return;
    }

    const ids = data.map((b) => b.id);
    const { error: updateErr } = await supabase
      .from('businesses')
      .update({ owner_id: userId, claimed: true })
      .in('id', ids);

    if (updateErr) {
      setError(t('dashboard.noMatch'));
    } else {
      onClaimed();
    }
    setLoading(false);
  }

  return (
    <div className="card p-8 max-w-lg mx-auto text-center">
      <div className="w-16 h-16 rounded-2xl bg-ocean-50 flex items-center justify-center mx-auto mb-4">
        <Building2 className="w-8 h-8 text-ocean-500" />
      </div>
      <h2 className="font-display text-2xl font-bold text-ocean-800 mb-2">{t('dashboard.claimBusiness')}</h2>
      <p className="text-gray-500 text-sm mb-6">{t('dashboard.claimDesc')}</p>
      <form onSubmit={handleClaim} className="space-y-4">
        <div className="relative">
          <Mail className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" />
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder={t('dashboard.businessEmail')}
            required
            className="w-full pl-11 pr-4 py-3 border border-gray-200 rounded-lg focus:ring-2 focus:ring-ocean-500 focus:border-ocean-500 text-sm"
          />
        </div>
        {error && <p className="text-red-500 text-sm">{error}</p>}
        <button
          type="submit"
          disabled={loading}
          className="btn-primary w-full flex items-center justify-center gap-2"
        >
          {loading ? (
            <div className="w-5 h-5 border-2 border-white/30 border-t-white rounded-full animate-spin" />
          ) : (
            <>{t('dashboard.verifyClaim')}</>
          )}
        </button>
      </form>
    </div>
  );
}

function EditListingForm({
  business,
  onSave,
  onCancel,
}: {
  business: DashboardBusiness;
  onSave: () => void;
  onCancel: () => void;
}) {
  const { t } = useTranslation();
  const [form, setForm] = useState({
    name: business.name,
    description: business.description,
    phone: business.phone,
    email: business.email,
    website: business.website,
    address: business.address,
  });
  const [saving, setSaving] = useState(false);
  const [success, setSuccess] = useState(false);

  function handleChange(field: string, value: string) {
    setForm((prev) => ({ ...prev, [field]: value }));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setSaving(true);
    const { error } = await supabase
      .from('businesses')
      .update(form)
      .eq('id', business.id);

    if (!error) {
      setSuccess(true);
      setTimeout(() => {
        onSave();
      }, 1000);
    }
    setSaving(false);
  }

  const fields: { key: string; label: string; icon: typeof Phone; type?: string; textarea?: boolean }[] = [
    { key: 'name', label: t('dashboard.businessName'), icon: Building2 },
    { key: 'description', label: t('dashboard.description'), icon: Edit3, textarea: true },
    { key: 'phone', label: t('dashboard.phone'), icon: Phone, type: 'tel' },
    { key: 'email', label: t('dashboard.email'), icon: Mail, type: 'email' },
    { key: 'website', label: t('dashboard.website'), icon: Globe },
    { key: 'address', label: t('dashboard.address'), icon: MapPin },
  ];

  return (
    <form onSubmit={handleSubmit} className="card p-6 space-y-5">
      {fields.map(({ key, label, icon: Icon, type, textarea }) => (
        <div key={key}>
          <label className="flex items-center gap-2 text-sm font-medium text-ocean-800 mb-1.5">
            <Icon className="w-4 h-4 text-ocean-500" />
            {label}
          </label>
          {textarea ? (
            <textarea
              value={form[key as keyof typeof form]}
              onChange={(e) => handleChange(key, e.target.value)}
              rows={4}
              className="w-full px-4 py-2.5 border border-gray-200 rounded-lg focus:ring-2 focus:ring-ocean-500 focus:border-ocean-500 text-sm resize-none"
            />
          ) : (
            <input
              type={type || 'text'}
              value={form[key as keyof typeof form]}
              onChange={(e) => handleChange(key, e.target.value)}
              className="w-full px-4 py-2.5 border border-gray-200 rounded-lg focus:ring-2 focus:ring-ocean-500 focus:border-ocean-500 text-sm"
            />
          )}
        </div>
      ))}
      {success && (
        <p className="text-green-600 text-sm font-medium">{t('dashboard.saved')}</p>
      )}
      <div className="flex items-center gap-3 pt-2">
        <button
          type="submit"
          disabled={saving}
          className="btn-primary flex items-center gap-2"
        >
          <Save className="w-4 h-4" />
          {t('dashboard.saveListing')}
        </button>
        <button
          type="button"
          onClick={onCancel}
          className="btn-secondary flex items-center gap-2"
        >
          <X className="w-4 h-4" />
          {t('dashboard.cancel')}
        </button>
      </div>
    </form>
  );
}

function BusinessReviews({ businessId }: { businessId: string }) {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const [reviews, setReviews] = useState<ReviewWithProfile[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      const { data } = await supabase
        .from('reviews')
        .select('*, user_profiles(*)')
        .eq('business_id', businessId)
        .order('created_at', { ascending: false })
        .limit(10);
      setReviews((data || []) as ReviewWithProfile[]);
      setLoading(false);
    }
    load();
  }, [businessId]);

  if (loading) {
    return <div className="animate-pulse h-20 bg-gray-100 rounded-xl" />;
  }

  if (reviews.length === 0) {
    return (
      <p className="text-gray-400 text-sm italic py-4">{t('dashboard.noReviewsYet')}</p>
    );
  }

  return (
    <div className="space-y-3">
      {reviews.map((review) => (
        <div key={review.id} className="border border-gray-100 rounded-lg p-4">
          <div className="flex items-center justify-between mb-2">
            <span className="text-sm font-medium text-ocean-800">
              {review.user_profiles?.display_name || 'Anonymous'}
            </span>
            <div className="flex items-center gap-1 text-sun-500">
              <Star className="w-3.5 h-3.5 fill-current" />
              <span className="text-xs font-semibold">{review.rating}</span>
            </div>
          </div>
          {review.title && <p className="text-sm font-medium text-ocean-700 mb-1">{review.title}</p>}
          <p className="text-sm text-gray-500">{review.content}</p>
        </div>
      ))}
      <Link
        to={l(`/profile/${businessId}`)}
        className="inline-flex items-center gap-1 text-sm text-ocean-500 hover:text-sun-500 font-medium transition-colors"
      >
        {t('dashboard.viewAllOnProfile')} <ArrowRight className="w-3 h-3" />
      </Link>
    </div>
  );
}

export default function DashboardPage() {
  const { t } = useTranslation();
  const { user } = useAuth();
  const { l } = useLocalizedPath();
  const [businesses, setBusinesses] = useState<DashboardBusiness[]>([]);
  const [loading, setLoading] = useState(true);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [authModalOpen, setAuthModalOpen] = useState(false);

  const [totalReviews, setTotalReviews] = useState(0);

  const fetchBusinesses = useCallback(async () => {
    if (!user) {
      setLoading(false);
      return;
    }
    setLoading(true);
    const { data } = await supabase
      .from('businesses')
      .select('*, categories(*), areas(*)')
      .eq('owner_id', user.id);

    const biz = (data || []) as DashboardBusiness[];
    setBusinesses(biz);

    if (biz.length > 0) {
      const ids = biz.map((b) => b.id);
      const { count } = await supabase
        .from('reviews')
        .select('id', { count: 'exact', head: true })
        .in('business_id', ids);
      setTotalReviews(count || 0);
    }

    setLoading(false);
  }, [user]);

  useEffect(() => {
    fetchBusinesses();
  }, [fetchBusinesses]);

  if (!user) {
    return (
      <div className="pt-24 pb-16">
        <div className="container-wide py-20 text-center">
          <div className="w-16 h-16 rounded-2xl bg-ocean-50 flex items-center justify-center mx-auto mb-4">
            <LogIn className="w-8 h-8 text-ocean-500" />
          </div>
          <h1 className="font-display text-2xl font-bold text-ocean-800 mb-2">
            {t('dashboard.signInRequired')}
          </h1>
          <button
            onClick={() => setAuthModalOpen(true)}
            className="btn-primary mt-4 inline-flex items-center gap-2"
          >
            <LogIn className="w-4 h-4" />
            {t('nav.signIn')}
          </button>
          <AuthModal isOpen={authModalOpen} onClose={() => setAuthModalOpen(false)} />
        </div>
      </div>
    );
  }

  return (
    <div className="pt-24 pb-16">
      <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-10 lg:py-14">
        <div className="container-wide">
          <h1 className="font-display text-3xl lg:text-4xl font-bold text-white mb-2">
            {t('dashboard.title')}
          </h1>
          <p className="text-ocean-200 text-lg">
            {t('dashboard.claimDesc')}
          </p>
        </div>
      </section>

      <section className="container-wide py-10">
        {loading ? (
          <div className="space-y-4">
            {[1, 2].map((i) => (
              <div key={i} className="animate-pulse h-32 bg-gray-100 rounded-xl" />
            ))}
          </div>
        ) : businesses.length === 0 ? (
          <ClaimForm userId={user.id} onClaimed={fetchBusinesses} />
        ) : (
          <div className="space-y-8">
            <div className="grid grid-cols-1 sm:grid-cols-3 gap-5">
              <div className="card p-6 text-center">
                <div className="w-12 h-12 rounded-xl bg-ocean-50 flex items-center justify-center mx-auto mb-3">
                  <Building2 className="w-6 h-6 text-ocean-500" />
                </div>
                <p className="text-3xl font-bold text-ocean-800">{businesses.length}</p>
                <p className="text-sm text-gray-500 mt-1">{t('dashboard.yourListings')}</p>
              </div>
              <div className="card p-6 text-center">
                <div className="w-12 h-12 rounded-xl bg-sun-50 flex items-center justify-center mx-auto mb-3">
                  <Eye className="w-6 h-6 text-sun-500" />
                </div>
                <p className="text-3xl font-bold text-ocean-800">
                  {businesses.reduce((sum, b) => sum + (b.view_count || 0), 0)}
                </p>
                <p className="text-sm text-gray-500 mt-1">{t('dashboard.profileViews')}</p>
              </div>
              <div className="card p-6 text-center">
                <div className="w-12 h-12 rounded-xl bg-green-50 flex items-center justify-center mx-auto mb-3">
                  <MessageSquare className="w-6 h-6 text-green-600" />
                </div>
                <p className="text-3xl font-bold text-ocean-800">{totalReviews}</p>
                <p className="text-sm text-gray-500 mt-1">{t('dashboard.reviewsReceived')}</p>
              </div>
            </div>

            <div>
              <h2 className="font-display text-xl font-semibold text-ocean-800 mb-4">
                {t('dashboard.yourListings')}
              </h2>
              <div className="space-y-6">
                {businesses.map((biz) => (
                  <div key={biz.id}>
                    {editingId === biz.id ? (
                      <EditListingForm
                        business={biz}
                        onSave={() => {
                          setEditingId(null);
                          fetchBusinesses();
                        }}
                        onCancel={() => setEditingId(null)}
                      />
                    ) : (
                      <div className="card p-6">
                        <div className="flex items-start justify-between gap-4">
                          <div className="flex items-start gap-4">
                            {biz.image_url ? (
                              <img
                                src={biz.image_url}
                                alt={biz.name}
                                className="w-20 h-20 rounded-xl object-cover flex-shrink-0"
                              />
                            ) : (
                              <div className="w-20 h-20 rounded-xl bg-ocean-50 flex items-center justify-center flex-shrink-0">
                                <Building2 className="w-8 h-8 text-ocean-200" />
                              </div>
                            )}
                            <div>
                              <Link
                                to={l(`/profile/${biz.slug || biz.id}`)}
                                className="font-semibold text-ocean-800 text-lg hover:text-ocean-500 transition-colors"
                              >
                                {biz.name}
                              </Link>
                              <p className="text-sm text-gray-500 line-clamp-2 mt-1">{biz.description}</p>
                              <div className="flex items-center gap-3 mt-2">
                                {biz.categories && (
                                  <span className="text-xs font-medium text-ocean-600 bg-ocean-50 px-2 py-0.5 rounded-md">
                                    {biz.categories.name}
                                  </span>
                                )}
                                {biz.areas && (
                                  <span className="text-xs font-medium text-sun-600 bg-sun-50 px-2 py-0.5 rounded-md">
                                    {biz.areas.name}
                                  </span>
                                )}
                                {biz.rating && (
                                  <span className="flex items-center gap-1 text-xs text-sun-600">
                                    <Star className="w-3 h-3 fill-current" /> {biz.rating}
                                  </span>
                                )}
                              </div>
                            </div>
                          </div>
                          <button
                            onClick={() => setEditingId(biz.id)}
                            className="btn-secondary flex items-center gap-2 text-sm flex-shrink-0"
                          >
                            <Edit3 className="w-4 h-4" />
                            {t('dashboard.editListing')}
                          </button>
                        </div>

                        <div className="mt-6 pt-4 border-t border-gray-100">
                          <h3 className="font-display text-sm font-semibold text-ocean-800 flex items-center gap-2 mb-3">
                            <MessageSquare className="w-4 h-4 text-ocean-500" />
                            {t('dashboard.reviewsReceived')}
                          </h3>
                          <BusinessReviews businessId={biz.id} />
                        </div>
                      </div>
                    )}
                  </div>
                ))}
              </div>
            </div>

            <ClaimForm userId={user.id} onClaimed={fetchBusinesses} />
          </div>
        )}
      </section>
    </div>
  );
}
