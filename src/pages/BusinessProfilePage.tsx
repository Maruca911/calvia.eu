import { useState } from 'react';
import { useParams, Link } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import {
  Phone, Mail, Globe, MapPin, Star, ArrowLeft, ExternalLink,
  Clock, Tag, Share2, ChevronLeft, ChevronRight, X, Navigation,
} from 'lucide-react';
import { useBusiness } from '../hooks/useBusiness';
import { useLocalizedPath } from '../hooks/useLanguage';
import { getIcon } from '../lib/icons';
import type { SocialLinks, OpeningHours } from '../types/database';
import SocialLinksBar from '../components/businesses/SocialLinksBar';
import ReviewSection from '../components/reviews/ReviewSection';
import BusinessProfileSchema from '../components/seo/BusinessProfileSchema';
import BreadcrumbSchema from '../components/seo/BreadcrumbSchema';

const DAY_KEYS: (keyof OpeningHours)[] = [
  'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday',
];

function ProfileSkeleton() {
  return (
    <div className="pt-24 pb-16">
      <div className="container-wide py-12">
        <div className="animate-pulse space-y-6">
          <div className="h-6 w-32 bg-gray-200 rounded" />
          <div className="h-64 bg-gray-200 rounded-2xl" />
          <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
            <div className="lg:col-span-2 space-y-4">
              <div className="h-10 w-3/4 bg-gray-200 rounded" />
              <div className="h-4 w-full bg-gray-200 rounded" />
              <div className="h-4 w-2/3 bg-gray-200 rounded" />
            </div>
            <div className="space-y-4">
              <div className="h-48 bg-gray-200 rounded-xl" />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

function ImageGallery({ images, businessName }: { images: string[]; businessName: string }) {
  const [lightboxOpen, setLightboxOpen] = useState(false);
  const [activeIndex, setActiveIndex] = useState(0);

  if (images.length === 0) return null;

  function openLightbox(index: number) {
    setActiveIndex(index);
    setLightboxOpen(true);
  }

  function navigate(dir: 1 | -1) {
    setActiveIndex((prev) => (prev + dir + images.length) % images.length);
  }

  return (
    <>
      <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3">
        {images.map((url, i) => (
          <button
            key={i}
            onClick={() => openLightbox(i)}
            className="relative aspect-[4/3] rounded-xl overflow-hidden group cursor-pointer"
          >
            <img
              src={url}
              alt={`${businessName} ${i + 1}`}
              loading="lazy"
              className="absolute inset-0 w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
            />
            <div className="absolute inset-0 bg-black/0 group-hover:bg-black/20 transition-colors" />
          </button>
        ))}
      </div>

      {lightboxOpen && (
        <div
          className="fixed inset-0 z-[100] bg-black/90 flex items-center justify-center"
          onClick={() => setLightboxOpen(false)}
        >
          <button
            onClick={() => setLightboxOpen(false)}
            className="absolute top-4 right-4 text-white/80 hover:text-white p-2"
          >
            <X className="w-8 h-8" />
          </button>
          {images.length > 1 && (
            <>
              <button
                onClick={(e) => { e.stopPropagation(); navigate(-1); }}
                className="absolute left-4 text-white/80 hover:text-white p-2"
              >
                <ChevronLeft className="w-10 h-10" />
              </button>
              <button
                onClick={(e) => { e.stopPropagation(); navigate(1); }}
                className="absolute right-4 text-white/80 hover:text-white p-2"
              >
                <ChevronRight className="w-10 h-10" />
              </button>
            </>
          )}
          <img
            src={images[activeIndex]}
            alt={`${businessName} ${activeIndex + 1}`}
            className="max-w-[90vw] max-h-[85vh] object-contain rounded-lg"
            onClick={(e) => e.stopPropagation()}
          />
          <div className="absolute bottom-6 text-white/60 text-sm">
            {activeIndex + 1} / {images.length}
          </div>
        </div>
      )}
    </>
  );
}

function OpeningHoursCard({ hours, t }: { hours: OpeningHours; t: (k: string) => string }) {
  const hasHours = DAY_KEYS.some((d) => hours[d]);
  if (!hasHours) return null;

  return (
    <div className="card p-6 space-y-3">
      <h3 className="font-display text-lg font-semibold text-ocean-800 flex items-center gap-2">
        <Clock className="w-5 h-5 text-ocean-500" />
        {t('profile.openingHours')}
      </h3>
      <div className="space-y-2 text-sm">
        {DAY_KEYS.map((day) => (
          <div key={day} className="flex justify-between">
            <span className="text-gray-500 capitalize">{t(`days.${day}`)}</span>
            <span className={hours[day] ? 'text-ocean-800 font-medium' : 'text-gray-400'}>
              {hours[day] || t('profile.closed')}
            </span>
          </div>
        ))}
      </div>
    </div>
  );
}

export default function BusinessProfilePage() {
  const { slug } = useParams<{ slug: string }>();
  const { business, loading } = useBusiness(slug);
  const { t } = useTranslation();
  const { l, lang } = useLocalizedPath();

  if (loading) return <ProfileSkeleton />;

  if (!business) {
    return (
      <div className="pt-24 pb-16">
        <div className="container-wide py-20 text-center">
          <h1 className="font-display text-3xl font-bold text-ocean-800 mb-4">
            {t('profile.businessNotFound')}
          </h1>
          <p className="text-gray-500 mb-8">
            {t('profile.businessNotFoundDesc')}
          </p>
          <Link to={l('/businesses')} className="btn-primary inline-flex items-center gap-2">
            <ArrowLeft className="w-4 h-4" /> {t('profile.backToBusinesses')}
          </Link>
        </div>
      </div>
    );
  }

  const CategoryIcon = business.categories ? getIcon(business.categories.icon_name) : Tag;
  const websiteUrl = business.website?.startsWith('http')
    ? business.website
    : `https://${business.website}`;
  const socialLinks: SocialLinks = business.social_links || {};
  const hasSocials = Object.values(socialLinks).some(Boolean);
  const galleryImages: string[] = Array.isArray(business.images) ? business.images : [];
  const openingHours: OpeningHours = business.opening_hours || {};

  function buildGoogleMapsDirectionsUrl(): string {
    if (business!.latitude && business!.longitude && business!.latitude !== 0 && business!.longitude !== 0) {
      return `https://www.google.com/maps/dir/?api=1&destination=${business!.latitude},${business!.longitude}&destination_place_id=`;
    }
    const dest = [business!.name, business!.address, business!.areas?.name, 'Calvia Mallorca']
      .filter(Boolean)
      .join(', ');
    return `https://www.google.com/maps/dir/?api=1&destination=${encodeURIComponent(dest)}`;
  }

  function buildGoogleMapsSearchUrl(): string {
    if (business!.latitude && business!.longitude && business!.latitude !== 0 && business!.longitude !== 0) {
      return `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(business!.name)}&center=${business!.latitude},${business!.longitude}`;
    }
    const query = [business!.name, business!.address, business!.areas?.name, 'Calvia Mallorca']
      .filter(Boolean)
      .join(', ');
    return `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(query)}`;
  }

  const hasLocation = !!(business.address || (business.latitude && business.latitude !== 0));

  function handleShare() {
    if (navigator.share) {
      navigator.share({
        title: business!.name,
        text: business!.description,
        url: window.location.href,
      });
    } else {
      navigator.clipboard.writeText(window.location.href);
    }
  }

  return (
    <div className="pt-24 pb-16">
      <BusinessProfileSchema business={business} />
      <BreadcrumbSchema crumbs={[
        { name: 'Home', path: `/${lang || 'en'}` },
        { name: t('nav.businesses'), path: `/${lang || 'en'}/businesses` },
        ...(business.categories ? [{ name: business.categories.name, path: `/${lang || 'en'}/businesses/${business.categories.slug}` }] : []),
        { name: business.name, path: `/${lang || 'en'}/profile/${business.slug}` },
      ]} />

      {business.image_url ? (
        <section className="relative">
          <div className="h-64 sm:h-80 lg:h-96 overflow-hidden">
            <img
              src={business.image_url}
              alt={business.name}
              className="w-full h-full object-cover"
            />
            <div className="absolute inset-0 bg-gradient-to-t from-ocean-900/80 via-ocean-900/30 to-ocean-900/20" />
          </div>
          <div className="absolute inset-0 flex items-end">
            <div className="container-wide pb-8 lg:pb-10">
              <Link
                to={l('/businesses')}
                className="inline-flex items-center gap-1.5 text-white/80 hover:text-white text-sm font-medium mb-4 transition-colors"
              >
                <ArrowLeft className="w-4 h-4" /> {t('profile.allBusinesses')}
              </Link>
              <div className="flex flex-col lg:flex-row lg:items-end lg:justify-between gap-4">
                <div>
                  <h1 className="font-display text-3xl lg:text-4xl font-bold text-white mb-3"
                    style={{ textShadow: '0 2px 8px rgba(0,0,0,0.4)' }}
                  >
                    {business.name}
                  </h1>
                  <div className="flex flex-wrap items-center gap-3">
                    {business.categories && (
                      <Link
                        to={l(`/businesses/${business.categories.slug}`)}
                        className="inline-flex items-center gap-1.5 bg-white/15 backdrop-blur-sm text-white
                                   text-sm px-3 py-1 rounded-full hover:bg-white/25 transition-colors"
                      >
                        <Tag className="w-3.5 h-3.5" />
                        {business.categories.name}
                      </Link>
                    )}
                    {business.areas && (
                      <Link
                        to={l(`/areas/${business.areas.slug}`)}
                        className="inline-flex items-center gap-1.5 bg-white/15 backdrop-blur-sm text-white
                                   text-sm px-3 py-1 rounded-full hover:bg-white/25 transition-colors"
                      >
                        <MapPin className="w-3.5 h-3.5" />
                        {business.areas.name}
                      </Link>
                    )}
                    {business.rating && (
                      <span className="inline-flex items-center gap-1 bg-sun-500/80 text-white text-sm px-3 py-1 rounded-full">
                        <Star className="w-3.5 h-3.5 fill-current" />
                        {business.rating}
                      </span>
                    )}
                  </div>
                </div>
                <button
                  onClick={handleShare}
                  className="self-start lg:self-auto inline-flex items-center gap-2 bg-white/15 backdrop-blur-sm
                             text-white text-sm font-medium px-4 py-2.5 rounded-lg hover:bg-white/25 transition-colors"
                >
                  <Share2 className="w-4 h-4" /> {t('profile.share')}
                </button>
              </div>
            </div>
          </div>
        </section>
      ) : (
        <section className="bg-gradient-to-br from-ocean-500 to-ocean-700 py-12 lg:py-16">
          <div className="container-wide">
            <Link
              to={l('/businesses')}
              className="inline-flex items-center gap-1.5 text-ocean-200 hover:text-white text-sm font-medium mb-6 transition-colors"
            >
              <ArrowLeft className="w-4 h-4" /> {t('profile.allBusinesses')}
            </Link>

            <div className="flex flex-col lg:flex-row lg:items-end lg:justify-between gap-6">
              <div className="flex items-start gap-5">
                <div className="w-20 h-20 lg:w-24 lg:h-24 rounded-2xl bg-white/10 backdrop-blur-sm
                                flex items-center justify-center flex-shrink-0 border border-white/20">
                  <CategoryIcon className="w-10 h-10 lg:w-12 lg:h-12 text-white" />
                </div>
                <div>
                  <h1 className="font-display text-3xl lg:text-4xl font-bold text-white mb-2">
                    {business.name}
                  </h1>
                  <div className="flex flex-wrap items-center gap-3">
                    {business.categories && (
                      <Link
                        to={l(`/businesses/${business.categories.slug}`)}
                        className="inline-flex items-center gap-1.5 bg-white/15 backdrop-blur-sm text-white
                                   text-sm px-3 py-1 rounded-full hover:bg-white/25 transition-colors"
                      >
                        <Tag className="w-3.5 h-3.5" />
                        {business.categories.name}
                      </Link>
                    )}
                    {business.areas && (
                      <Link
                        to={l(`/areas/${business.areas.slug}`)}
                        className="inline-flex items-center gap-1.5 bg-white/15 backdrop-blur-sm text-white
                                   text-sm px-3 py-1 rounded-full hover:bg-white/25 transition-colors"
                      >
                        <MapPin className="w-3.5 h-3.5" />
                        {business.areas.name}
                      </Link>
                    )}
                    {business.rating && (
                      <span className="inline-flex items-center gap-1 bg-sun-500/80 text-white text-sm px-3 py-1 rounded-full">
                        <Star className="w-3.5 h-3.5 fill-current" />
                        {business.rating}
                      </span>
                    )}
                  </div>
                </div>
              </div>

              <button
                onClick={handleShare}
                className="self-start lg:self-auto inline-flex items-center gap-2 bg-white/15 backdrop-blur-sm
                           text-white text-sm font-medium px-4 py-2.5 rounded-lg hover:bg-white/25 transition-colors"
              >
                <Share2 className="w-4 h-4" /> {t('profile.share')}
              </button>
            </div>
          </div>
        </section>
      )}

      <section className="container-wide py-10 lg:py-14">
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8 lg:gap-12">
          <div className="lg:col-span-2 space-y-8">
            {business.description && (
              <div>
                <h2 className="font-display text-xl font-semibold text-ocean-800 mb-3">{t('profile.about')}</h2>
                <p className="text-gray-600 leading-relaxed text-lg">{business.description}</p>
              </div>
            )}

            {galleryImages.length > 0 && (
              <div>
                <h2 className="font-display text-xl font-semibold text-ocean-800 mb-4">{t('profile.photos')}</h2>
                <ImageGallery images={galleryImages} businessName={business.name} />
              </div>
            )}

            {business.notes && (
              <div>
                <h2 className="font-display text-xl font-semibold text-ocean-800 mb-3">{t('profile.details')}</h2>
                <p className="text-gray-600 leading-relaxed">{business.notes}</p>
              </div>
            )}

            {hasLocation && (
              <div>
                <h2 className="font-display text-xl font-semibold text-ocean-800 mb-3">{t('profile.locationTitle')}</h2>
                <div className="card p-5">
                  <div className="flex items-start gap-3">
                    <MapPin className="w-5 h-5 text-ocean-500 mt-0.5 flex-shrink-0" />
                    <div className="flex-1">
                      {business.address && (
                        <p className="text-ocean-800 font-medium">{business.address}</p>
                      )}
                      {business.areas && (
                        <p className="text-gray-500 text-sm mt-1">{business.areas.name}, Calvia, Mallorca</p>
                      )}
                      {business.location_confidence === 'area' && (
                        <p className="text-amber-600 text-xs mt-2 flex items-center gap-1">
                          <MapPin className="w-3 h-3" />
                          {t('profile.approximateLocation')}
                        </p>
                      )}
                    </div>
                  </div>
                  <div className="flex gap-3 mt-4 pt-4 border-t border-gray-100">
                    <a
                      href={buildGoogleMapsDirectionsUrl()}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="flex-1 flex items-center justify-center gap-2 bg-ocean-500 text-white text-sm font-medium
                                 px-4 py-2.5 rounded-lg hover:bg-ocean-600 transition-colors"
                    >
                      <Navigation className="w-4 h-4" />
                      {t('profile.getDirections')}
                    </a>
                    <a
                      href={buildGoogleMapsSearchUrl()}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="flex-1 flex items-center justify-center gap-2 border border-gray-200 text-gray-600 text-sm font-medium
                                 px-4 py-2.5 rounded-lg hover:bg-gray-50 transition-colors"
                    >
                      <ExternalLink className="w-4 h-4" />
                      {t('profile.viewOnGoogleMaps')}
                    </a>
                  </div>
                </div>
              </div>
            )}

            {hasSocials && (
              <div>
                <h2 className="font-display text-xl font-semibold text-ocean-800 mb-3">{t('profile.followUs')}</h2>
                <SocialLinksBar links={socialLinks} size="lg" />
              </div>
            )}

            <ReviewSection businessId={business.id} />
          </div>

          <aside className="space-y-5">
            <div className="card p-6 space-y-4">
              <h3 className="font-display text-lg font-semibold text-ocean-800">{t('profile.contact')}</h3>

              {business.phone && (
                <a
                  href={`tel:${business.phone}`}
                  className="flex items-center gap-3 w-full bg-ocean-500 text-white font-medium
                             px-4 py-3 rounded-lg hover:bg-ocean-600 transition-colors"
                >
                  <Phone className="w-5 h-5 flex-shrink-0" />
                  <span className="text-sm">{business.phone}</span>
                </a>
              )}

              {business.email && (
                <a
                  href={`mailto:${business.email}`}
                  className="flex items-center gap-3 w-full bg-sun-500 text-white font-medium
                             px-4 py-3 rounded-lg hover:bg-sun-600 transition-colors"
                >
                  <Mail className="w-5 h-5 flex-shrink-0" />
                  <span className="text-sm truncate">{business.email}</span>
                </a>
              )}

              {business.website && (
                <a
                  href={websiteUrl}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center gap-3 w-full border-2 border-ocean-500 text-ocean-600 font-medium
                             px-4 py-3 rounded-lg hover:bg-ocean-50 transition-colors"
                >
                  <Globe className="w-5 h-5 flex-shrink-0" />
                  <span className="text-sm truncate flex-1">{business.website}</span>
                  <ExternalLink className="w-4 h-4 flex-shrink-0" />
                </a>
              )}

              {hasLocation && (
                <a
                  href={buildGoogleMapsDirectionsUrl()}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center gap-3 w-full border-2 border-gray-200 text-gray-600 font-medium
                             px-4 py-3 rounded-lg hover:bg-gray-50 hover:border-gray-300 transition-colors"
                >
                  <Navigation className="w-5 h-5 flex-shrink-0" />
                  <span className="text-sm">{t('profile.getDirections')}</span>
                  <ExternalLink className="w-4 h-4 flex-shrink-0 ml-auto" />
                </a>
              )}

              {!business.phone && !business.email && !business.website && !hasLocation && (
                <p className="text-gray-400 text-sm italic">{t('businesses.contactSoon')}</p>
              )}
            </div>

            <OpeningHoursCard hours={openingHours} t={t} />

            <div className="card p-6 space-y-3">
              <h3 className="font-display text-lg font-semibold text-ocean-800">{t('profile.quickInfo')}</h3>
              <div className="space-y-3 text-sm">
                {business.categories && (
                  <div className="flex items-center gap-3">
                    <CategoryIcon className="w-4 h-4 text-ocean-500 flex-shrink-0" />
                    <span className="text-gray-600">{business.categories.name}</span>
                  </div>
                )}
                {business.areas && (
                  <div className="flex items-center gap-3">
                    <MapPin className="w-4 h-4 text-sun-500 flex-shrink-0" />
                    <span className="text-gray-600">{business.areas.name}</span>
                  </div>
                )}
                <div className="flex items-center gap-3">
                  <Clock className="w-4 h-4 text-gray-400 flex-shrink-0" />
                  <span className="text-gray-500">
                    {t('profile.listedSince')} {new Date(business.created_at).toLocaleDateString(lang === 'en' ? 'en-GB' : lang, { month: 'long', year: 'numeric' })}
                  </span>
                </div>
              </div>
            </div>

            {hasSocials && (
              <div className="card p-6">
                <h3 className="font-display text-lg font-semibold text-ocean-800 mb-3">{t('profile.social')}</h3>
                <SocialLinksBar links={socialLinks} />
              </div>
            )}
          </aside>
        </div>
      </section>
    </div>
  );
}
