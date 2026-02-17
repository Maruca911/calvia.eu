import { useState, useEffect, useRef } from 'react';
import { Link } from 'react-router-dom';
import { Search, ArrowRight, Clock, Shield, Compass, Zap, MapPin, Smartphone, Building2, Star } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useLocalizedPath } from '../hooks/useLanguage';
import { useCategories } from '../hooks/useCategories';
import { useAreas } from '../hooks/useAreas';
import { getIcon } from '../lib/icons';
import SearchBar from '../components/layout/SearchBar';
import ScrollReveal from '../components/ui/ScrollReveal';
import AnimatedCounter from '../components/ui/AnimatedCounter';
import HomePageSchema from '../components/seo/HomePageSchema';
import { usePageMeta } from '../hooks/usePageMeta';

function HeroSection() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const [mouseX, setMouseX] = useState(0);
  const [mouseY, setMouseY] = useState(0);
  const heroRef = useRef<HTMLElement>(null);

  useEffect(() => {
    function handleMove(e: MouseEvent) {
      if (!heroRef.current) return;
      const rect = heroRef.current.getBoundingClientRect();
      setMouseX((e.clientX - rect.left) / rect.width - 0.5);
      setMouseY((e.clientY - rect.top) / rect.height - 0.5);
    }
    const el = heroRef.current;
    el?.addEventListener('mousemove', handleMove);
    return () => el?.removeEventListener('mousemove', handleMove);
  }, []);

  return (
    <section ref={heroRef} className="relative min-h-[92vh] flex items-center justify-center overflow-hidden">
      <div
        className="absolute inset-0"
        style={{
          backgroundImage: 'url(/hero-calvia-coast.jpeg)',
          backgroundSize: 'cover',
          backgroundPosition: 'center 40%',
          transform: `translate(${mouseX * -8}px, ${mouseY * -8}px) scale(1.05)`,
          transition: 'transform 0.3s ease-out',
        }}
      />

      <div className="absolute inset-0 bg-gradient-to-t from-ocean-900/80 via-ocean-900/40 to-ocean-900/50" />

      <div
        className="absolute top-20 left-[10%] w-72 h-72 rounded-full opacity-20"
        style={{
          background: 'radial-gradient(circle, rgba(255, 116, 2, 0.4) 0%, transparent 70%)',
          transform: `translate(${mouseX * 20}px, ${mouseY * 20}px)`,
          transition: 'transform 0.5s ease-out',
        }}
      />
      <div
        className="absolute bottom-32 right-[15%] w-96 h-96 rounded-full opacity-15"
        style={{
          background: 'radial-gradient(circle, rgba(1, 75, 181, 0.5) 0%, transparent 70%)',
          transform: `translate(${mouseX * -15}px, ${mouseY * -15}px)`,
          transition: 'transform 0.5s ease-out',
        }}
      />

      <div className="relative z-10 text-center px-4 max-w-4xl mx-auto">
        <div className="mb-8 animate-fade-in">
          <div className="relative inline-block mb-6">
            <img
              src="/logo-calvia.jpeg"
              alt="Calvia.app"
              className="w-20 h-20 lg:w-24 lg:h-24 rounded-full mx-auto shadow-2xl border-2 border-white/30 animate-pulse-glow"
            />
            <div className="absolute -inset-3 rounded-full border border-white/10 animate-float-slow" />
          </div>
          <h1
            className="font-display text-4xl md:text-5xl lg:text-7xl font-bold text-white mb-4 leading-tight"
            style={{ textShadow: '0 2px 16px rgba(0,0,0,0.5)' }}
          >
            CALVIA<span className="text-sun-400">.APP</span>
          </h1>
          <p
            className="text-lg md:text-xl text-white font-body max-w-2xl mx-auto leading-relaxed font-medium"
            style={{ textShadow: '0 2px 12px rgba(0,0,0,0.6), 0 1px 3px rgba(0,0,0,0.4)' }}
          >
            {t('home.heroTagline')}
          </p>
        </div>

        <div className="max-w-xl mx-auto mb-10 animate-slide-up">
          <SearchBar />
        </div>

        <div className="flex flex-col sm:flex-row items-center justify-center gap-4 animate-slide-up" style={{ animationDelay: '0.2s' }}>
          <Link to={l('/businesses')} className="btn-primary flex items-center gap-2 text-base">
            <Search className="w-5 h-5" />
            {t('home.exploreBusinesses')}
          </Link>
          <Link to={l('/areas')} className="btn-outline !border-white !text-white hover:!bg-white hover:!text-ocean-700 flex items-center gap-2 text-base">
            <Compass className="w-5 h-5" />
            {t('home.discoverAreas')}
          </Link>
        </div>
      </div>

      <div className="absolute bottom-0 left-0 right-0 h-24 bg-gradient-to-t from-white to-transparent" />
    </section>
  );
}

function StatsBar() {
  const { t } = useTranslation();

  return (
    <section className="relative -mt-12 z-10">
      <div className="container-wide">
        <ScrollReveal variant="scale">
          <div className="bg-white rounded-2xl shadow-lg border border-gray-100 p-6 lg:p-8">
            <div className="grid grid-cols-2 lg:grid-cols-4 gap-6 lg:gap-8">
              {[
                { icon: Building2, value: 1400, suffix: '+', label: t('home.localBusinesses'), color: 'text-ocean-500 bg-ocean-50' },
                { icon: MapPin, value: 24, suffix: '', label: t('home.villagesAndAreas'), color: 'text-sun-500 bg-sun-50' },
                { icon: Star, value: 30, suffix: '', label: t('home.categories'), color: 'text-green-600 bg-green-50' },
              ].map((stat, i) => (
                <div key={i} className="text-center">
                  <div className={`w-12 h-12 rounded-xl ${stat.color} flex items-center justify-center mx-auto mb-3`}>
                    <stat.icon className="w-6 h-6" />
                  </div>
                  <div className="font-display text-2xl lg:text-3xl font-bold text-ocean-800">
                    <AnimatedCounter end={stat.value} suffix={stat.suffix} duration={2200} />
                  </div>
                  <p className="text-sm text-gray-500 mt-1">{stat.label}</p>
                </div>
              ))}
              <div className="text-center">
                <div className="w-12 h-12 rounded-xl text-sun-500 bg-sun-50 flex items-center justify-center mx-auto mb-3">
                  <Smartphone className="w-6 h-6" />
                </div>
                <div className="font-display text-lg lg:text-xl font-bold text-ocean-800 leading-tight">
                  {t('home.mobileApp')}
                </div>
                <p className="text-sm text-sun-500 font-medium mt-1">{t('home.mobileAppSoon')}</p>
              </div>
            </div>
          </div>
        </ScrollReveal>
      </div>
    </section>
  );
}

function HowItWorks() {
  const { t } = useTranslation();

  const steps = [
    { icon: Search, title: t('home.stepSearchTitle'), desc: t('home.stepSearchDesc') },
    { icon: Compass, title: t('home.stepDiscoverTitle'), desc: t('home.stepDiscoverDesc') },
    { icon: Shield, title: t('home.stepTrustTitle'), desc: t('home.stepTrustDesc') },
    { icon: Clock, title: t('home.stepSaveTimeTitle'), desc: t('home.stepSaveTimeDesc') },
  ];

  return (
    <section className="section-padding bg-white">
      <div className="container-wide">
        <ScrollReveal>
          <div className="text-center mb-14">
            <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-4">
              {t('home.howItWorks')}
            </h2>
            <p className="text-gray-500 max-w-2xl mx-auto">
              {t('home.howItWorksDesc')}
            </p>
          </div>
        </ScrollReveal>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
          {steps.map((step, i) => (
            <ScrollReveal key={i} delay={i * 0.08}>
              <div className="text-center group">
                <div className="relative mx-auto mb-5">
                  <div className="w-16 h-16 rounded-2xl bg-ocean-50 flex items-center justify-center mx-auto
                                  group-hover:bg-sun-500 group-hover:scale-110 transition-all duration-300">
                    <step.icon className="w-7 h-7 text-ocean-500 group-hover:text-white transition-colors" />
                  </div>
                  {i < steps.length - 1 && (
                    <div className="hidden lg:block absolute top-1/2 left-full w-full h-px bg-gradient-to-r from-ocean-200 to-transparent -translate-y-1/2" />
                  )}
                </div>
                <h3 className="font-display text-xl font-semibold text-ocean-800 mb-2">{step.title}</h3>
                <p className="text-gray-500 text-sm leading-relaxed">{step.desc}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </div>
    </section>
  );
}

function CategoriesGrid() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const { categories, loading } = useCategories();

  if (loading) return null;

  return (
    <section className="section-padding bg-sand-50">
      <div className="container-wide">
        <ScrollReveal>
          <div className="text-center mb-14">
            <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-4">
              {t('home.browseByCategory')}
            </h2>
            <p className="text-gray-500 max-w-2xl mx-auto">
              {t('home.browseByCategoryDesc')}
            </p>
          </div>
        </ScrollReveal>

        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-4">
          {categories.map((cat, i) => {
            const Icon = getIcon(cat.icon_name);
            return (
              <ScrollReveal key={cat.id} variant="scale" delay={i * 0.03}>
                <Link
                  to={l(`/businesses/${cat.slug}`)}
                  className="card p-5 text-center group hover:-translate-y-1 transition-all duration-300"
                >
                  <div className="w-12 h-12 rounded-xl bg-ocean-50 flex items-center justify-center mx-auto mb-3
                                  group-hover:bg-sun-500 transition-colors duration-300">
                    <Icon className="w-6 h-6 text-ocean-500 group-hover:text-white transition-colors" />
                  </div>
                  <h3 className="text-sm font-semibold text-ocean-800 leading-tight">{cat.name}</h3>
                </Link>
              </ScrollReveal>
            );
          })}
        </div>

        <ScrollReveal>
          <div className="text-center mt-10">
            <Link
              to={l('/businesses')}
              className="inline-flex items-center gap-2 text-ocean-500 hover:text-sun-500 font-medium transition-colors"
            >
              {t('home.viewAllCategories')} <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </ScrollReveal>
      </div>
    </section>
  );
}

function AreasPreview() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();
  const { areas, loading } = useAreas();

  if (loading) return null;

  const featured = areas.slice(0, 8);

  return (
    <section className="section-padding bg-white">
      <div className="container-wide">
        <ScrollReveal>
          <div className="text-center mb-14">
            <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-4">
              {t('home.discoverVillages')}
            </h2>
            <p className="text-gray-500 max-w-2xl mx-auto">
              {t('home.discoverVillagesDesc')}
            </p>
          </div>
        </ScrollReveal>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5">
          {featured.map((area, i) => (
            <ScrollReveal key={area.id} delay={i * 0.06}>
              <Link
                to={l(`/areas/${area.slug}`)}
                className="group relative overflow-hidden rounded-2xl aspect-[4/3]"
              >
                <img
                  src={area.image_url}
                  alt={area.name}
                  loading="lazy"
                  className="absolute inset-0 w-full h-full object-cover group-hover:scale-110 transition-transform duration-700"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent" />
                <div className="absolute bottom-0 left-0 right-0 p-4">
                  <h3 className="font-display text-lg font-semibold text-white mb-1">{area.name}</h3>
                  <p className="text-white/70 text-xs line-clamp-2">{area.description}</p>
                </div>
              </Link>
            </ScrollReveal>
          ))}
        </div>

        <ScrollReveal>
          <div className="text-center mt-10">
            <Link
              to={l('/areas')}
              className="inline-flex items-center gap-2 text-ocean-500 hover:text-sun-500 font-medium transition-colors"
            >
              {t('home.exploreAllAreas')} <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </ScrollReveal>
      </div>
    </section>
  );
}

function ValueProposition() {
  const { t } = useTranslation();

  return (
    <section className="section-padding bg-sand-50 overflow-hidden">
      <div className="container-wide">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 lg:gap-16 items-center">
          <ScrollReveal variant="left">
            <div>
              <div className="inline-flex items-center gap-2 bg-ocean-50 text-ocean-600 px-4 py-2 rounded-full text-sm font-medium mb-6">
                <Shield className="w-4 h-4" />
                {t('home.whyCalviaApp')}
              </div>
              <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-6">
                {t('home.trustedGuide')}
              </h2>
              <p className="text-gray-500 leading-relaxed mb-8 text-lg">
                {t('home.trustedGuideDesc')}
              </p>
              <div className="space-y-4">
                {[
                  t('home.valueProp1'),
                  t('home.valueProp2'),
                  t('home.valueProp3'),
                  t('home.valueProp4'),
                ].map((item, i) => (
                  <div key={i} className="flex items-center gap-3">
                    <div className="w-6 h-6 rounded-full bg-green-100 flex items-center justify-center flex-shrink-0">
                      <svg className="w-3.5 h-3.5 text-green-600" viewBox="0 0 20 20" fill="currentColor">
                        <path fillRule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clipRule="evenodd" />
                      </svg>
                    </div>
                    <span className="text-ocean-800 font-medium">{item}</span>
                  </div>
                ))}
              </div>
            </div>
          </ScrollReveal>

          <ScrollReveal variant="right">
            <div className="relative">
              <div className="relative rounded-2xl overflow-hidden shadow-2xl">
                <img
                  src="https://images.pexels.com/photos/2549018/pexels-photo-2549018.jpeg?auto=compress&cs=tinysrgb&w=800"
                  alt={t('home.calviaCoastlineAlt')}
                  loading="lazy"
                  className="w-full aspect-[4/3] object-cover"
                />
                <div className="absolute inset-0 bg-gradient-to-tr from-ocean-600/20 to-transparent" />
              </div>

              <div className="absolute -bottom-6 -left-6 bg-white rounded-xl shadow-lg p-4 animate-float-slow">
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 rounded-lg bg-sun-50 flex items-center justify-center">
                    <Star className="w-5 h-5 text-sun-500" />
                  </div>
                  <div>
                    <p className="text-sm font-semibold text-ocean-800">{t('home.trustedPlatform')}</p>
                    <p className="text-xs text-gray-500">{t('home.trustedPlatformDesc')}</p>
                  </div>
                </div>
              </div>

              <div className="absolute -top-4 -right-4 bg-white rounded-xl shadow-lg p-4 animate-float">
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 rounded-lg bg-ocean-50 flex items-center justify-center">
                    <MapPin className="w-5 h-5 text-ocean-500" />
                  </div>
                  <div>
                    <p className="text-sm font-semibold text-ocean-800">{t('home.areasCount')}</p>
                    <p className="text-xs text-gray-500">{t('home.completeCoverage')}</p>
                  </div>
                </div>
              </div>
            </div>
          </ScrollReveal>
        </div>
      </div>
    </section>
  );
}

function EarlyBirdCTA() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();

  return (
    <section className="relative overflow-hidden">
      <div className="absolute inset-0 bg-gradient-to-br from-ocean-600 to-ocean-800 animate-gradient" />
      <div className="absolute inset-0 opacity-10"
        style={{
          backgroundImage: 'url(https://images.pexels.com/photos/2549018/pexels-photo-2549018.jpeg?auto=compress&cs=tinysrgb&w=1920)',
          backgroundSize: 'cover',
          backgroundPosition: 'center',
        }}
      />

      <div className="absolute top-10 left-10 w-40 h-40 rounded-full bg-sun-500/10 animate-float" />
      <div className="absolute bottom-10 right-20 w-32 h-32 rounded-full bg-ocean-300/10 animate-float-slow" />

      <div className="relative section-padding">
        <div className="container-wide text-center">
          <ScrollReveal>
            <div className="inline-flex items-center gap-2 bg-sun-500/20 text-sun-300 px-4 py-2 rounded-full text-sm font-medium mb-6">
              <Zap className="w-4 h-4" />
              {t('home.earlyBirdAccess')}
            </div>
            <h2 className="font-display text-3xl lg:text-4xl font-bold text-white mb-4">
              {t('home.earlyBirdTitle')}
            </h2>
            <p className="text-ocean-200 max-w-2xl mx-auto mb-10">
              {t('home.earlyBirdDesc')}
            </p>
            <div className="flex flex-col sm:flex-row items-center justify-center gap-4">
              <Link to={l('/signup/consumer')} className="btn-primary text-base flex items-center gap-2">
                {t('home.consumerSignup')}
                <ArrowRight className="w-4 h-4" />
              </Link>
              <Link
                to={l('/signup/business')}
                className="bg-white text-ocean-700 font-semibold px-6 py-3 rounded-lg
                           hover:bg-ocean-50 transition-all duration-200 text-base flex items-center gap-2"
              >
                {t('home.businessSignup')}
                <ArrowRight className="w-4 h-4" />
              </Link>
            </div>
          </ScrollReveal>
        </div>
      </div>
    </section>
  );
}

function MissionTeaser() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();

  return (
    <section className="section-padding bg-sand-50">
      <div className="container-wide">
        <ScrollReveal>
          <div className="max-w-3xl mx-auto text-center">
            <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-6">
              {t('home.theConcept')}
            </h2>
            <p className="text-gray-600 text-lg leading-relaxed mb-8">
              {t('home.theConceptDesc')}
            </p>
            <Link
              to={l('/about')}
              className="inline-flex items-center gap-2 text-ocean-500 hover:text-sun-500 font-medium transition-colors"
            >
              {t('home.learnMoreVision')} <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </ScrollReveal>
      </div>
    </section>
  );
}

export default function HomePage() {
  const { t } = useTranslation();
  usePageMeta(t('seo.defaultTitle'), t('seo.defaultDesc'));

  return (
    <>
      <HomePageSchema />
      <HeroSection />
      <StatsBar />
      <HowItWorks />
      <CategoriesGrid />
      <AreasPreview />
      <ValueProposition />
      <EarlyBirdCTA />
      <MissionTeaser />
    </>
  );
}
