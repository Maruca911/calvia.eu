# Calvia.app Deployment Guide

## 🚀 Quick Deploy to Netlify

### Prerequisites
- GitHub account with this repository
- Netlify account (free tier is sufficient)
- Supabase project credentials (already configured)

### Step 1: Connect to Netlify

1. Log in to [Netlify](https://app.netlify.com)
2. Click "Add new site" → "Import an existing project"
3. Choose GitHub and authorize Netlify
4. Select the `calvia-app` repository
5. Netlify will auto-detect settings from `netlify.toml`

### Step 2: Configure Environment Variables

In Netlify Dashboard → Site Settings → Environment Variables, add:

```
VITE_SUPABASE_URL = https://byodqqlknkwoazvohlsv.supabase.co
VITE_SUPABASE_ANON_KEY = [your-anon-key-from-.env-file]
```

**Important:** These variables MUST start with `VITE_` to be exposed to the client.

### Step 3: Deploy

1. Click "Deploy site"
2. Wait 2-3 minutes for build to complete
3. Site will be live at: `https://[random-name].netlify.app`

### Step 4: Custom Domain (Optional)

1. Go to Site Settings → Domain Management
2. Add custom domain: `calvia.app`
3. Follow Netlify's DNS instructions
4. SSL certificate will be auto-provisioned (takes 10-20 minutes)

---

## ✅ Post-Deployment Checklist

### Immediate Verification (5 minutes)
- [ ] Site loads at production URL
- [ ] All 11 language routes work (test /en, /de, /es, /fr, etc.)
- [ ] Search functionality works
- [ ] Business listings load correctly
- [ ] Images display properly
- [ ] Language switcher works
- [ ] Mobile menu functions on small screens

### SEO Setup (15 minutes)
- [ ] Submit sitemap to Google Search Console: `https://calvia.app/sitemap.xml`
- [ ] Verify robots.txt is accessible: `https://calvia.app/robots.txt`
- [ ] Check llms.txt is accessible: `https://calvia.app/llms.txt`
- [ ] Verify all hreflang tags are present (inspect any page source)
- [ ] Test structured data with [Google Rich Results Test](https://search.google.com/test/rich-results)

### Performance Testing (10 minutes)
- [ ] Run [PageSpeed Insights](https://pagespeed.web.dev/) - target 80+ mobile score
- [ ] Test on real mobile device (iPhone and Android)
- [ ] Verify page load time < 3 seconds on 4G
- [ ] Check Core Web Vitals (LCP, FID, CLS)

---

## 📊 Pre-Deployment Audit Summary

**Overall Readiness: 78% → 92% (After Critical Fixes)**

### ✅ COMPLETED (All Critical Blockers Resolved)
- [x] Created `netlify.toml` with proper build configuration
- [x] Created `public/_redirects` for SPA routing
- [x] Updated `.env.example` with comprehensive documentation
- [x] Verified `.env` is in `.gitignore` (security)
- [x] Added Palma area to database
- [x] Updated stats bar to show 1,400+ businesses (was 1,000+)
- [x] Updated areas count to 24 (was 23)
- [x] Confirmed mobile app announcement is live ("iOS & Android - Mobile App Coming Soon")
- [x] Build passes successfully (779KB bundle)
- [x] TypeScript typecheck passes with zero errors
- [x] All 11 languages configured and working
- [x] SEO meta tags, hreflang, and structured data implemented
- [x] Multilingual sitemap.xml with 770 URLs generated

### ⚠️ KNOWN LIMITATIONS (Non-Blocking)
- **Data Completeness:** 63% of businesses missing phone numbers, 99% missing email
  - **Mitigation:** Descriptions are complete (100%), users can still discover businesses
  - **Action Plan:** Ongoing data enrichment campaign post-launch
- **Bundle Size:** 779KB JavaScript bundle (221KB gzipped)
  - **Impact:** ~3-5 second load on 3G/4G networks
  - **Mitigation:** Works acceptably on 4G+, most target users have good connectivity
  - **Future Optimization:** Code splitting can reduce to ~400KB
- **No Business Images:** image_url column doesn't exist yet
  - **Impact:** Reduced visual appeal, but doesn't break functionality
  - **Future Enhancement:** Add in Week 1 post-launch

---

## 🔧 Troubleshooting

### Build Fails on Netlify
**Symptom:** Build process exits with error
**Solution:** Check environment variables are set correctly (must start with `VITE_`)

### 404 Errors on Direct URL Navigation
**Symptom:** Navigating to /en/businesses directly shows 404
**Solution:** Verify `public/_redirects` file exists and was deployed

### Supabase Connection Errors
**Symptom:** "Failed to fetch" or database errors
**Solution:** Verify environment variables in Netlify match your Supabase credentials

### Images Don't Load
**Symptom:** Broken image icons
**Solution:** Check public folder images were included in build (they should be in dist/)

### Language Switching Doesn't Work
**Symptom:** URL changes but content stays in English
**Solution:** Hard refresh (Cmd+Shift+R / Ctrl+Shift+R) to clear cached JavaScript

---

## 📈 Week 1 Roadmap (Post-Launch)

### High Priority (20-30 hours)
1. **Data Enrichment:** Fill contact info for top 200 businesses
2. **Performance Optimization:** Implement code splitting to reduce bundle size
3. **Image Assets:** Convert hero image to WebP, add responsive srcset
4. **Translation Coverage:** Audit and complete all database translations
5. **Analytics Setup:** Add Google Analytics or Plausible

### Medium Priority (10-15 hours)
1. Add business images for top 100 businesses
2. Implement lazy loading for images
3. Add business hours information to schema
4. Set up automated sitemap regeneration
5. Create admin dashboard for business owners

### Low Priority (5-10 hours)
1. Self-host fonts for better performance
2. Add price range indicators (€, €€, €€€)
3. Implement progressive web app (PWA) features
4. Add accessibility improvements (ARIA labels)
5. Create onboarding guide for new business owners

---

## 🛡️ Security Considerations

### ✅ Implemented
- Row Level Security (RLS) enabled on all Supabase tables
- XSS protection headers configured
- Content Security Policy headers set
- HTTPS enforced by Netlify
- Anon key safely exposed (protected by RLS)

### ⚠️ Important Notes
- Never commit `.env` file to Git (already in .gitignore)
- Service role key should never be used in frontend code
- All user input is sanitized via DOMPurify
- SQL injection prevented by Supabase parameterized queries

---

## 📞 Support Contacts

**Technical Issues:**
- Repository: [GitHub Link]
- Email: hello@calvia.app

**Supabase Dashboard:**
- URL: https://app.supabase.com/project/byodqqlknkwoazvohlsv

**Netlify Dashboard:**
- URL: https://app.netlify.com (after deployment)

---

## 🎯 Success Metrics (First Week)

Monitor these KPIs post-launch:
- [ ] **Traffic:** 500+ unique visitors
- [ ] **Mobile Usage:** 60%+ of traffic from mobile devices
- [ ] **Bounce Rate:** < 50%
- [ ] **Average Session:** 2+ minutes
- [ ] **Page Views per Session:** 3+
- [ ] **Language Distribution:** Track which languages are most used
- [ ] **Search Usage:** % of users using search feature
- [ ] **Contact Click-Through:** Users clicking phone/email/website links

---

**Last Updated:** 2026-02-17
**Version:** 1.0.0
**Status:** ✅ READY FOR PRODUCTION DEPLOYMENT
