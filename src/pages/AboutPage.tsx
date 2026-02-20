import { Link } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import {
  ArrowRight, Gift, Lightbulb, Users, Briefcase, Crown,
  Tag, Heart, Calendar, Eye, TrendingUp, Monitor, Snowflake,
  Megaphone, BarChart3, Globe, BookOpen, Home,
  Download, ExternalLink, Mail, Stethoscope, Building2,
} from 'lucide-react';
import ScrollReveal from '../components/ui/ScrollReveal';
import ContactForm from '../components/about/ContactForm';
import { usePageMeta } from '../hooks/usePageMeta';
import { useLocalizedPath } from '../hooks/useLanguage';

function HeroBanner() {
  const { t } = useTranslation();

  return (
    <section className="relative bg-gradient-to-br from-ocean-500 to-ocean-700 py-20 overflow-hidden">
      <div className="absolute top-10 right-[10%] w-64 h-64 rounded-full bg-sun-500/10 animate-float" />
      <div className="absolute bottom-10 left-[5%] w-48 h-48 rounded-full bg-ocean-300/10 animate-float-slow" />
      <div className="container-wide text-center relative z-10">
        <ScrollReveal>
          <h1 className="font-display text-4xl lg:text-5xl font-bold text-white mb-4">
            {t('about.title')}
          </h1>
          <p className="text-ocean-100 max-w-2xl mx-auto text-lg">
            {t('about.heroDesc')}
          </p>
        </ScrollReveal>
      </div>
    </section>
  );
}

function YourBenefits() {
  const { t } = useTranslation();

  const benefits = [
    { icon: Tag, title: t('about.exclusiveDeals'), desc: t('about.exclusiveDealsDesc') },
    { icon: Heart, title: t('about.loyaltyRewards'), desc: t('about.loyaltyRewardsDesc') },
    { icon: Calendar, title: t('about.eventsNews'), desc: t('about.eventsNewsDesc') },
    { icon: Eye, title: t('about.verifiedTrusted'), desc: t('about.verifiedTrustedDesc') },
  ];

  return (
    <section className="section-padding bg-white">
      <div className="container-wide">
        <ScrollReveal>
          <div className="text-center mb-14">
            <div className="inline-flex items-center gap-2 bg-sun-50 text-sun-600 px-4 py-2 rounded-full text-sm font-medium mb-4">
              <Gift className="w-4 h-4" />
              {t('about.yourBenefits')}
            </div>
            <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-4">
              {t('about.whyChoose')}
            </h2>
            <p className="text-gray-500 max-w-2xl mx-auto">
              {t('about.whyChooseDesc')}
            </p>
          </div>
        </ScrollReveal>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 max-w-5xl mx-auto">
          {benefits.map((b, i) => (
            <ScrollReveal key={i} variant="scale" delay={i * 0.06}>
              <div className="card p-6 text-center group hover:-translate-y-1 transition-all duration-300">
                <div className="w-14 h-14 rounded-2xl bg-ocean-50 flex items-center justify-center mx-auto mb-4
                                group-hover:bg-sun-500 group-hover:scale-110 transition-all duration-300">
                  <b.icon className="w-7 h-7 text-ocean-500 group-hover:text-white transition-colors" />
                </div>
                <h3 className="font-display text-lg font-semibold text-ocean-800 mb-2">{b.title}</h3>
                <p className="text-gray-500 text-sm leading-relaxed">{b.desc}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </div>
    </section>
  );
}

function TheConcept() {
  const { t } = useTranslation();

  const CALVIA_DOMAINS = [
    { name: 'calvia.app', url: 'https://calvia.app', desc: t('about.domainApp'), icon: Globe, color: 'bg-ocean-500' },
    { name: 'calvia.group', url: 'https://calvia.group', desc: t('about.domainGroup'), icon: Building2, color: 'bg-ocean-700' },
    { name: 'calvia.digital', url: 'https://calvia.digital', desc: t('about.domainDigital'), icon: Monitor, color: 'bg-sun-500' },
    { name: 'calvia.health', url: 'https://calvia.health', desc: t('about.domainHealth'), icon: Stethoscope, color: 'bg-green-600' },
    { name: 'calvia.marketing', url: 'https://calvia.marketing', desc: t('about.domainMarketing'), icon: Megaphone, color: 'bg-rose-500' },
    { name: 'calvia.blog', url: 'https://calvia.blog', desc: t('about.domainBlog'), icon: BookOpen, color: 'bg-sky-500' },
    { name: 'calvia.realestate', url: 'https://calvia.realestate', desc: t('about.domainRealestate'), icon: Home, color: 'bg-amber-600' },
    { name: 'calvia.jobs', url: 'https://calvia.jobs', desc: 'Local jobs and talent network', icon: Briefcase, color: 'bg-indigo-600' },
  ];

  return (
    <section className="section-padding bg-sand-50">
      <div className="container-wide">
        <ScrollReveal>
          <div className="text-center mb-14">
            <div className="inline-flex items-center gap-2 bg-ocean-50 text-ocean-600 px-4 py-2 rounded-full text-sm font-medium mb-4">
              <Lightbulb className="w-4 h-4" />
              {t('about.theConcept')}
            </div>
            <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-4">
              {t('about.heartOfGroup')}
            </h2>
            <p className="text-gray-500 max-w-3xl mx-auto">
              {t('about.heartOfGroupDesc')}
            </p>
          </div>
        </ScrollReveal>

        <div className="max-w-5xl mx-auto">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-12">
            <ScrollReveal variant="left">
              <div className="card p-8 h-full group hover:-translate-y-1 transition-all duration-300">
                <div className="w-12 h-12 rounded-xl bg-ocean-500 flex items-center justify-center mb-4
                                group-hover:scale-110 transition-transform duration-300">
                  <Globe className="w-6 h-6 text-white" />
                </div>
                <h3 className="font-display text-xl font-semibold text-ocean-800 mb-3">
                  <a href="https://calvia.group" target="_blank" rel="noopener noreferrer"
                     className="hover:text-sun-500 transition-colors inline-flex items-center gap-2">
                    calvia.group <ExternalLink className="w-4 h-4" />
                  </a>
                </h3>
                <p className="text-gray-500 leading-relaxed">
                  {t('about.groupDesc')}
                </p>
              </div>
            </ScrollReveal>
            <ScrollReveal variant="right">
              <div className="card p-8 h-full group hover:-translate-y-1 transition-all duration-300">
                <div className="w-12 h-12 rounded-xl bg-sun-500 flex items-center justify-center mb-4
                                group-hover:scale-110 transition-transform duration-300">
                  <Monitor className="w-6 h-6 text-white" />
                </div>
                <h3 className="font-display text-xl font-semibold text-ocean-800 mb-3">
                  <a href="https://calvia.digital" target="_blank" rel="noopener noreferrer"
                     className="hover:text-sun-500 transition-colors inline-flex items-center gap-2">
                    calvia.digital <ExternalLink className="w-4 h-4" />
                  </a>
                </h3>
                <p className="text-gray-500 leading-relaxed">
                  {t('about.digitalDesc')}
                </p>
              </div>
            </ScrollReveal>
          </div>

          <ScrollReveal>
            <h3 className="font-display text-xl font-semibold text-ocean-800 mb-6 text-center">
              {t('about.ecosystem')}
            </h3>
          </ScrollReveal>
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
            {CALVIA_DOMAINS.map((domain, i) => {
              const Icon = domain.icon;
              return (
                <ScrollReveal key={domain.name} variant="scale" delay={i * 0.04}>
                  <a
                    href={domain.url}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="flex items-center gap-4 bg-white rounded-xl p-5 border border-gray-100
                               hover:shadow-lg hover:-translate-y-1 transition-all duration-300 group"
                  >
                    <div className={`w-10 h-10 rounded-lg ${domain.color} flex items-center justify-center flex-shrink-0
                                    group-hover:scale-110 transition-transform duration-300`}>
                      <Icon className="w-5 h-5 text-white" />
                    </div>
                    <div className="flex-1 min-w-0">
                      <h4 className="font-semibold text-ocean-800 text-sm group-hover:text-sun-500 transition-colors flex items-center gap-1.5">
                        {domain.name}
                        <ExternalLink className="w-3 h-3 opacity-0 group-hover:opacity-100 transition-opacity" />
                      </h4>
                      <p className="text-xs text-gray-500 truncate">{domain.desc}</p>
                    </div>
                  </a>
                </ScrollReveal>
              );
            })}
          </div>
        </div>
      </div>
    </section>
  );
}

function UserBenefits() {
  const { t } = useTranslation();

  const items = [
    {
      icon: Tag,
      title: t('about.userExclusiveDeals'),
      desc: t('about.userExclusiveDealsDesc'),
    },
    {
      icon: Heart,
      title: t('about.userLoyaltyProgram'),
      desc: t('about.userLoyaltyProgramDesc'),
    },
    {
      icon: Calendar,
      title: t('about.userEventsNews'),
      desc: t('about.userEventsNewsDesc'),
    },
  ];

  return (
    <section className="section-padding bg-white">
      <div className="container-wide">
        <ScrollReveal>
          <div className="text-center mb-14">
            <div className="inline-flex items-center gap-2 bg-green-50 text-green-600 px-4 py-2 rounded-full text-sm font-medium mb-4">
              <Users className="w-4 h-4" />
              {t('about.userBenefits')}
            </div>
            <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-4">
              {t('about.whatYouGet')}
            </h2>
            <p className="text-gray-500 max-w-2xl mx-auto">
              {t('about.whatYouGetDesc')}
            </p>
          </div>
        </ScrollReveal>

        <div className="max-w-4xl mx-auto space-y-6">
          {items.map((item, i) => (
            <ScrollReveal key={i} delay={i * 0.08}>
              <div className="card p-8 flex flex-col sm:flex-row items-start gap-6
                              hover:-translate-y-0.5 transition-all duration-300 group">
                <div className="w-14 h-14 rounded-2xl bg-green-50 flex items-center justify-center flex-shrink-0
                                group-hover:bg-green-500 group-hover:scale-110 transition-all duration-300">
                  <item.icon className="w-7 h-7 text-green-600 group-hover:text-white transition-colors" />
                </div>
                <div>
                  <h3 className="font-display text-xl font-semibold text-ocean-800 mb-2">{item.title}</h3>
                  <p className="text-gray-500 leading-relaxed">{item.desc}</p>
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </div>
    </section>
  );
}

function BusinessBenefits() {
  const { t } = useTranslation();

  const items = [
    {
      icon: Eye,
      title: t('about.betterVisibility'),
      desc: t('about.betterVisibilityDesc'),
    },
    {
      icon: TrendingUp,
      title: t('about.moreClients'),
      desc: t('about.moreClientsDesc'),
    },
    {
      icon: Monitor,
      title: t('about.digitalFuture'),
      desc: t('about.digitalFutureDesc'),
    },
    {
      icon: Snowflake,
      title: t('about.winterSupport'),
      desc: t('about.winterSupportDesc'),
    },
  ];

  return (
    <section className="section-padding bg-sand-50">
      <div className="container-wide">
        <ScrollReveal>
          <div className="text-center mb-14">
            <div className="inline-flex items-center gap-2 bg-sun-50 text-sun-600 px-4 py-2 rounded-full text-sm font-medium mb-4">
              <Briefcase className="w-4 h-4" />
              {t('about.businessBenefits')}
            </div>
            <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-4">
              {t('about.growBusiness')}
            </h2>
            <p className="text-gray-500 max-w-2xl mx-auto">
              {t('about.growBusinessDesc')}
            </p>
          </div>
        </ScrollReveal>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-6 max-w-5xl mx-auto">
          {items.map((item, i) => (
            <ScrollReveal key={i} variant="scale" delay={i * 0.06}>
              <div className="card p-8 group hover:-translate-y-1 transition-all duration-300">
                <div className="w-12 h-12 rounded-xl bg-sun-50 flex items-center justify-center mb-4
                                group-hover:bg-sun-500 group-hover:scale-110 transition-all duration-300">
                  <item.icon className="w-6 h-6 text-sun-500 group-hover:text-white transition-colors" />
                </div>
                <h3 className="font-display text-lg font-semibold text-ocean-800 mb-2">{item.title}</h3>
                <p className="text-gray-500 text-sm leading-relaxed">{item.desc}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </div>
    </section>
  );
}

const checkIcon = (
  <div className="w-5 h-5 rounded-full bg-green-100 flex items-center justify-center flex-shrink-0 mt-0.5">
    <svg className="w-3 h-3 text-green-600" viewBox="0 0 20 20" fill="currentColor">
      <path fillRule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clipRule="evenodd" />
    </svg>
  </div>
);

function PremiumPartners() {
  const { t } = useTranslation();

  const visibilityFeatures = [
    t('about.visibilityFeature1'),
    t('about.visibilityFeature2'),
    t('about.visibilityFeature3'),
    t('about.visibilityFeature4'),
  ];

  const consultingFeatures = [
    t('about.consultingFeature1'),
    t('about.consultingFeature2'),
    t('about.consultingFeature3'),
    t('about.consultingFeature4'),
  ];

  return (
    <section className="section-padding bg-white">
      <div className="container-wide">
        <ScrollReveal>
          <div className="text-center mb-14">
            <div className="inline-flex items-center gap-2 bg-ocean-50 text-ocean-600 px-4 py-2 rounded-full text-sm font-medium mb-4">
              <Crown className="w-4 h-4" />
              {t('about.premiumPartners')}
            </div>
            <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-4">
              {t('about.elevatePresence')}
            </h2>
            <p className="text-gray-500 max-w-2xl mx-auto">
              {t('about.elevatePresenceDesc')}
            </p>
          </div>
        </ScrollReveal>

        <div className="max-w-4xl mx-auto grid grid-cols-1 lg:grid-cols-2 gap-8">
          <ScrollReveal variant="left">
            <div className="card p-8 border-2 border-ocean-100 relative overflow-hidden h-full group hover:-translate-y-1 transition-all duration-300">
              <div className="absolute top-0 right-0 bg-ocean-500 text-white text-xs font-semibold px-3 py-1 rounded-bl-lg">
                {t('about.featured')}
              </div>
              <div className="w-12 h-12 rounded-xl bg-ocean-50 flex items-center justify-center mb-4
                              group-hover:scale-110 transition-transform duration-300">
                <BarChart3 className="w-6 h-6 text-ocean-500" />
              </div>
              <h3 className="font-display text-xl font-semibold text-ocean-800 mb-3">
                {t('about.enhancedVisibility')}
              </h3>
              <ul className="space-y-2.5 text-gray-500 text-sm">
                {visibilityFeatures.map((f, i) => (
                  <li key={i} className="flex items-start gap-2">
                    {checkIcon}
                    {f}
                  </li>
                ))}
              </ul>
            </div>
          </ScrollReveal>

          <ScrollReveal variant="right">
            <div className="card p-8 border-2 border-sun-100 relative overflow-hidden h-full group hover:-translate-y-1 transition-all duration-300">
              <div className="absolute top-0 right-0 bg-sun-500 text-white text-xs font-semibold px-3 py-1 rounded-bl-lg">
                {t('about.pro')}
              </div>
              <div className="w-12 h-12 rounded-xl bg-sun-50 flex items-center justify-center mb-4
                              group-hover:scale-110 transition-transform duration-300">
                <Monitor className="w-6 h-6 text-sun-500" />
              </div>
              <h3 className="font-display text-xl font-semibold text-ocean-800 mb-3">
                {t('about.digitalConsulting')}{' '}
                <a href="https://calvia.digital" target="_blank" rel="noopener noreferrer"
                   className="text-sun-500 hover:text-sun-600 transition-colors">
                  calvia.digital
                </a>
              </h3>
              <ul className="space-y-2.5 text-gray-500 text-sm">
                {consultingFeatures.map((f, i) => (
                  <li key={i} className="flex items-start gap-2">
                    {checkIcon}
                    {f}
                  </li>
                ))}
              </ul>
            </div>
          </ScrollReveal>
        </div>
      </div>
    </section>
  );
}

function BrandSection() {
  const { t } = useTranslation();

  return (
    <section className="section-padding bg-sand-50">
      <div className="container-wide">
        <ScrollReveal>
          <div className="max-w-3xl mx-auto text-center">
            <h2 className="font-display text-2xl font-bold text-ocean-800 mb-6">{t('about.brandAndLogo')}</h2>
            <p className="text-gray-500 mb-8">
              {t('about.brandDesc')}
            </p>
            <div className="flex items-center justify-center gap-8 mb-8">
              <div className="bg-white p-6 rounded-2xl shadow-sm hover:shadow-lg transition-shadow duration-300">
                <img
                  src="/logo-calvia.jpeg"
                  alt="Calvia.app Logo"
                  loading="lazy"
                  className="w-24 h-24 rounded-full object-cover"
                />
                <p className="text-xs text-gray-400 mt-3">{t('about.logoMark')}</p>
              </div>
              <div className="bg-ocean-800 p-6 rounded-2xl hover:shadow-lg transition-shadow duration-300">
                <img
                  src="/logo-calvia.jpeg"
                  alt="Calvia.app Logo on dark"
                  loading="lazy"
                  className="w-24 h-24 rounded-full object-cover"
                />
                <p className="text-xs text-ocean-300 mt-3">{t('about.onDark')}</p>
              </div>
            </div>
            <a
              href="/logo-calvia.jpeg"
              download="calvia-app-logo.jpeg"
              className="inline-flex items-center gap-2 text-ocean-500 hover:text-sun-500 font-medium transition-colors"
            >
              <Download className="w-4 h-4" />
              {t('about.downloadLogo')}
            </a>
          </div>
        </ScrollReveal>
      </div>
    </section>
  );
}

function ContactSection() {
  const { t } = useTranslation();

  return (
    <section id="contact" className="section-padding bg-white scroll-mt-24">
      <div className="container-wide">
        <div className="max-w-5xl mx-auto">
          <div className="grid grid-cols-1 lg:grid-cols-5 gap-12 lg:gap-16">
            <div className="lg:col-span-2">
              <ScrollReveal variant="left">
                <div className="inline-flex items-center gap-2 bg-ocean-50 text-ocean-600 px-4 py-2 rounded-full text-sm font-medium mb-4">
                  <Mail className="w-4 h-4" />
                  {t('about.getInTouch')}
                </div>
                <h2 className="font-display text-3xl lg:text-4xl font-bold text-ocean-800 mb-4">
                  {t('about.contactUs')}
                </h2>
                <p className="text-gray-500 leading-relaxed mb-8">
                  {t('about.contactDesc')}
                </p>
                <div className="space-y-4">
                  <div className="flex items-center gap-3">
                    <div className="w-10 h-10 rounded-lg bg-ocean-50 flex items-center justify-center flex-shrink-0">
                      <Mail className="w-5 h-5 text-ocean-500" />
                    </div>
                    <div>
                      <p className="text-sm font-medium text-ocean-800">{t('about.email')}</p>
                      <p className="text-sm text-gray-500">contact@calvia.app</p>
                    </div>
                  </div>
                  <div className="flex items-center gap-3">
                    <div className="w-10 h-10 rounded-lg bg-ocean-50 flex items-center justify-center flex-shrink-0">
                      <Globe className="w-5 h-5 text-ocean-500" />
                    </div>
                    <div>
                      <p className="text-sm font-medium text-ocean-800">{t('about.network')}</p>
                      <p className="text-sm text-gray-500">
                        <a href="https://calvia.group" target="_blank" rel="noopener noreferrer"
                           className="hover:text-sun-500 transition-colors">calvia.group</a>
                      </p>
                    </div>
                  </div>
                </div>
              </ScrollReveal>
            </div>

            <div className="lg:col-span-3">
              <ScrollReveal variant="right">
                <div className="card p-6 sm:p-8">
                  <ContactForm />
                </div>
              </ScrollReveal>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}

function CallToAction() {
  const { t } = useTranslation();
  const { l } = useLocalizedPath();

  return (
    <section className="relative overflow-hidden">
      <div className="absolute inset-0 bg-gradient-to-br from-ocean-600 to-ocean-800" />
      <div className="absolute top-10 left-10 w-40 h-40 rounded-full bg-sun-500/10 animate-float" />
      <div className="absolute bottom-10 right-20 w-32 h-32 rounded-full bg-ocean-300/10 animate-float-slow" />
      <div className="relative section-padding">
        <div className="container-wide text-center">
          <ScrollReveal>
            <h2 className="font-display text-3xl font-bold text-white mb-4">
              {t('about.readyToJoin')}
            </h2>
            <p className="text-ocean-200 max-w-xl mx-auto mb-8">
              {t('about.readyToJoinDesc')}
            </p>
            <div className="flex flex-col sm:flex-row items-center justify-center gap-4">
              <Link to={l('/signup/consumer')} className="btn-primary flex items-center gap-2">
                {t('home.consumerSignup')} <ArrowRight className="w-4 h-4" />
              </Link>
              <Link
                to={l('/signup/business')}
                className="bg-white text-ocean-700 font-semibold px-6 py-3 rounded-lg
                           hover:bg-ocean-50 transition-all duration-200 flex items-center gap-2"
              >
                {t('home.businessSignup')} <ArrowRight className="w-4 h-4" />
              </Link>
            </div>
          </ScrollReveal>
        </div>
      </div>
    </section>
  );
}

export default function AboutPage() {
  const { t } = useTranslation();

  usePageMeta(t('seo.aboutTitle'), t('seo.aboutDesc'));

  return (
    <div className="pt-24 pb-16">
      <HeroBanner />
      <YourBenefits />
      <TheConcept />
      <UserBenefits />
      <BusinessBenefits />
      <PremiumPartners />
      <BrandSection />
      <ContactSection />
      <CallToAction />
    </div>
  );
}
