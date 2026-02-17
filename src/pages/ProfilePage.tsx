import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { User, Star, Calendar, Pencil, Check, X, LogIn } from 'lucide-react';
import { useAuth } from '../contexts/AuthContext';
import { usePageMeta } from '../hooks/usePageMeta';
import { useLocalizedPath } from '../hooks/useLanguage';
import { supabase } from '../lib/supabase';
import type { ReviewWithProfile } from '../types/database';

interface UserReview extends ReviewWithProfile {
  businesses?: { name: string; slug: string };
}

export default function ProfilePage() {
  const { t } = useTranslation();
  const { user, loading: authLoading } = useAuth();
  const { l } = useLocalizedPath();
  usePageMeta(t('account.title'), '');

  const [displayName, setDisplayName] = useState('');
  const [editingName, setEditingName] = useState(false);
  const [nameInput, setNameInput] = useState('');
  const [nameSaving, setNameSaving] = useState(false);
  const [nameSuccess, setNameSuccess] = useState('');
  const [reviews, setReviews] = useState<UserReview[]>([]);
  const [loadingProfile, setLoadingProfile] = useState(true);

  useEffect(() => {
    if (!user) {
      setLoadingProfile(false);
      return;
    }

    async function loadProfile() {
      const { data: profile } = await supabase
        .from('user_profiles')
        .select('display_name')
        .eq('id', user!.id)
        .maybeSingle();

      if (profile) {
        setDisplayName(profile.display_name || '');
        setNameInput(profile.display_name || '');
      }

      const { data: userReviews } = await supabase
        .from('reviews')
        .select('*, user_profiles(*), businesses(name, slug)')
        .eq('user_id', user!.id)
        .order('created_at', { ascending: false });

      if (userReviews) setReviews(userReviews as UserReview[]);
      setLoadingProfile(false);
    }

    loadProfile();
  }, [user]);

  async function handleSaveName() {
    if (!user || !nameInput.trim()) return;
    setNameSaving(true);
    setNameSuccess('');

    const { error } = await supabase
      .from('user_profiles')
      .update({ display_name: nameInput.trim() })
      .eq('id', user.id);

    if (!error) {
      setDisplayName(nameInput.trim());
      setEditingName(false);
      setNameSuccess(t('account.nameUpdated'));
      setTimeout(() => setNameSuccess(''), 3000);
    }
    setNameSaving(false);
  }

  if (authLoading || loadingProfile) {
    return (
      <div className="pt-24 pb-16 flex items-center justify-center min-h-[60vh]">
        <div className="w-8 h-8 border-4 border-ocean-200 border-t-ocean-500 rounded-full animate-spin" />
      </div>
    );
  }

  if (!user) {
    return (
      <div className="pt-24 pb-16">
        <div className="container-wide py-20 text-center">
          <div className="w-16 h-16 rounded-full bg-ocean-50 flex items-center justify-center mx-auto mb-4">
            <LogIn className="w-8 h-8 text-ocean-400" />
          </div>
          <h1 className="font-display text-2xl font-bold text-ocean-800 mb-2">{t('account.signInRequired')}</h1>
          <Link to={l('/')} className="btn-primary inline-block mt-4">
            {t('notFound.goHome')}
          </Link>
        </div>
      </div>
    );
  }

  const memberSince = new Date(user.created_at).toLocaleDateString(undefined, {
    year: 'numeric',
    month: 'long',
  });

  return (
    <div className="pt-24 pb-16">
      <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-12">
        <div className="container-wide">
          <div className="flex items-center gap-4">
            <div className="w-16 h-16 rounded-full bg-white/20 flex items-center justify-center">
              <User className="w-8 h-8 text-white" />
            </div>
            <div>
              <h1 className="font-display text-2xl font-bold text-white">
                {displayName || user.email}
              </h1>
              <p className="text-ocean-200 text-sm flex items-center gap-1.5">
                <Calendar className="w-3.5 h-3.5" />
                {t('account.memberSince')} {memberSince}
              </p>
            </div>
          </div>
        </div>
      </section>

      <section className="container-wide py-10">
        <div className="max-w-2xl mx-auto space-y-8">
          <div className="bg-white rounded-xl border border-gray-100 shadow-sm p-6">
            <h2 className="font-display text-lg font-bold text-ocean-800 mb-4">{t('profile.details')}</h2>

            <div className="space-y-4">
              <div>
                <label className="block text-sm font-medium text-gray-500 mb-1">{t('account.email')}</label>
                <p className="text-ocean-800">{user.email}</p>
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-500 mb-1">{t('account.displayName')}</label>
                {editingName ? (
                  <div className="flex items-center gap-2">
                    <input
                      type="text"
                      value={nameInput}
                      onChange={(e) => setNameInput(e.target.value)}
                      className="flex-1 px-3 py-2 border border-gray-200 rounded-lg text-sm
                                 focus:outline-none focus:ring-2 focus:ring-ocean-300 focus:border-ocean-400 transition-all"
                      autoFocus
                    />
                    <button
                      onClick={handleSaveName}
                      disabled={nameSaving}
                      className="p-2 rounded-lg bg-green-50 text-green-600 hover:bg-green-100 transition-colors"
                    >
                      <Check className="w-4 h-4" />
                    </button>
                    <button
                      onClick={() => { setEditingName(false); setNameInput(displayName); }}
                      className="p-2 rounded-lg bg-gray-50 text-gray-400 hover:bg-gray-100 transition-colors"
                    >
                      <X className="w-4 h-4" />
                    </button>
                  </div>
                ) : (
                  <div className="flex items-center gap-2">
                    <p className="text-ocean-800">{displayName || '-'}</p>
                    <button
                      onClick={() => setEditingName(true)}
                      className="p-1.5 rounded-lg text-ocean-400 hover:text-ocean-600 hover:bg-ocean-50 transition-colors"
                    >
                      <Pencil className="w-3.5 h-3.5" />
                    </button>
                  </div>
                )}
                {nameSuccess && (
                  <p className="text-green-600 text-sm mt-1">{nameSuccess}</p>
                )}
              </div>
            </div>
          </div>

          <div className="bg-white rounded-xl border border-gray-100 shadow-sm p-6">
            <h2 className="font-display text-lg font-bold text-ocean-800 mb-4">
              {t('account.yourReviews')} ({reviews.length})
            </h2>

            {reviews.length === 0 ? (
              <p className="text-gray-500 text-sm">{t('account.noReviews')}</p>
            ) : (
              <div className="space-y-4">
                {reviews.map((review) => (
                  <div key={review.id} className="border-b border-gray-100 last:border-0 pb-4 last:pb-0">
                    <div className="flex items-center justify-between mb-1">
                      {review.businesses ? (
                        <Link
                          to={l(`/profile/${review.businesses.slug}`)}
                          className="font-medium text-ocean-700 hover:text-sun-500 transition-colors text-sm"
                        >
                          {review.businesses.name}
                        </Link>
                      ) : (
                        <span className="font-medium text-ocean-700 text-sm">-</span>
                      )}
                      <div className="flex items-center gap-0.5">
                        {Array.from({ length: 5 }).map((_, i) => (
                          <Star
                            key={i}
                            className={`w-3.5 h-3.5 ${i < review.rating ? 'text-sun-500 fill-sun-500' : 'text-gray-200'}`}
                          />
                        ))}
                      </div>
                    </div>
                    {review.title && (
                      <p className="font-medium text-ocean-800 text-sm">{review.title}</p>
                    )}
                    <p className="text-gray-600 text-sm mt-0.5">{review.content}</p>
                    <p className="text-gray-400 text-xs mt-1">
                      {new Date(review.created_at).toLocaleDateString()}
                    </p>
                  </div>
                ))}
              </div>
            )}
          </div>
        </div>
      </section>
    </div>
  );
}
