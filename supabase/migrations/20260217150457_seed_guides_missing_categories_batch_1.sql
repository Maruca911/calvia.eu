/*
  # Seed Guides for Categories With Zero Guides (Batch 1)

  1. New Data
    - Adds comprehensive guides for 5 categories that had no guides:
      - Accountants & Tax Advisors
      - Financial Advisors
      - Health Clinics
      - Beauty Salons
      - Professional Services
    - Each guide has full HTML content, SEO metadata, and is published

  2. Notes
    - Guides are informational, helping expats and residents find services
    - Content covers practical advice relevant to the Calvia/Mallorca area
*/

INSERT INTO guides (title, slug, description, content, category_slug, meta_title, meta_description, image_url, published)
VALUES
(
  'Tax and Accounting Services in Calvia: A Complete Expat Guide',
  'tax-accounting-services-calvia-guide',
  'Everything you need to know about finding an accountant or tax advisor in Calvia, Mallorca. Covers Spanish tax obligations, NIE requirements, Modelo 720, and choosing the right gestor or asesor fiscal.',
  '<h2>Understanding Your Tax Obligations in Mallorca</h2>
<p>Moving to or investing in the Calvia region of Mallorca comes with specific tax obligations that differ significantly from those in other European countries. Whether you are a full-time resident, a seasonal inhabitant, or a property owner, understanding the Spanish tax system is essential to avoid penalties and maximise your financial position.</p>

<h3>Who Needs a Tax Advisor in Calvia?</h3>
<p>If you earn income in Spain, own property in the Balearic Islands, or have been resident for more than 183 days in a calendar year, you are likely required to file a Spanish tax return. The most common scenarios requiring professional tax advice include:</p>
<ul>
<li><strong>New residents</strong> needing to register for tax purposes and obtain an NIE (Numero de Identidad de Extranjero)</li>
<li><strong>Property owners</strong> who must file annual non-resident income tax returns (Modelo 210) even if the property generates no rental income</li>
<li><strong>Self-employed professionals</strong> (autonomos) requiring quarterly VAT and income tax filings</li>
<li><strong>Retirees</strong> receiving pensions from abroad who need to understand double taxation treaties</li>
<li><strong>Business owners</strong> operating in the tourism, hospitality, or services sectors</li>
</ul>

<h3>Gestor vs Asesor Fiscal: What is the Difference?</h3>
<p>In Spain, a <strong>gestor administrativo</strong> handles general administrative tasks including vehicle registration, residency applications, and basic tax filings. An <strong>asesor fiscal</strong> is a qualified tax advisor who provides strategic tax planning, handles complex returns, and represents clients before the Agencia Tributaria (Spanish tax authority). For straightforward matters, a gestor may suffice, but for complex international tax situations common among the expat community in Calvia, a qualified asesor fiscal is recommended.</p>

<h3>Key Tax Deadlines in Spain</h3>
<p>Spain operates on a calendar tax year. Key deadlines to be aware of include:</p>
<ul>
<li><strong>April-June:</strong> Annual income tax return (Renta/IRPF) filing period</li>
<li><strong>January 20:</strong> Modelo 303 (quarterly VAT) for Q4</li>
<li><strong>March 31:</strong> Modelo 720 (overseas asset declaration) for assets exceeding 50,000 euros</li>
<li><strong>December 31:</strong> Non-resident property tax (Modelo 210) for the previous year</li>
</ul>

<h3>Choosing an Accountant in Calvia</h3>
<p>The Calvia municipality has a strong community of multilingual accountants and tax advisors who specialise in serving the international community. When selecting a professional, consider:</p>
<ul>
<li>Language capabilities - many firms in Santa Ponsa, Palmanova, and Portals Nous operate in English, German, and Scandinavian languages</li>
<li>Experience with your specific situation (property ownership, business, retirement)</li>
<li>Professional qualifications and membership of recognised bodies</li>
<li>Transparent fee structures - most firms charge annual fixed fees rather than hourly rates</li>
<li>Digital capabilities for remote access to your financial documents</li>
</ul>

<h3>Common Tax Issues for Expats in Mallorca</h3>
<p>The international nature of Calvia''s population means tax advisors here regularly handle cross-border tax issues including UK post-Brexit tax implications, German-Spanish double taxation treaties, Scandinavian pension taxation, and wealth tax obligations specific to the Balearic Islands. The Balearic Islands have their own wealth tax rates which are among the highest in Spain, making professional advice particularly valuable for high-net-worth individuals.</p>',
  'accountants-tax',
  'Tax & Accounting Services in Calvia, Mallorca | Expat Tax Guide',
  'Find qualified accountants and tax advisors in Calvia, Mallorca. Guide to Spanish tax obligations, NIE, Modelo 720, and choosing the right gestor or asesor fiscal for expats.',
  'https://images.pexels.com/photos/6863183/pexels-photo-6863183.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
),
(
  'Financial Planning in Mallorca: Investment and Wealth Management Guide',
  'financial-planning-mallorca-guide',
  'Guide to financial advisory services in Calvia, Mallorca. Covers wealth management, retirement planning, cross-border investments, and finding a regulated financial advisor.',
  '<h2>Financial Advisory Services in Calvia</h2>
<p>Calvia is home to one of the largest international communities in the Balearic Islands, and with it comes a sophisticated financial services sector. Whether you are planning for retirement, managing cross-border investments, or seeking wealth preservation strategies, the financial advisors in this region offer expertise tailored to the needs of an international clientele.</p>

<h3>Why You Need a Financial Advisor in Mallorca</h3>
<p>Managing finances across borders is inherently complex. Currency exchange risk, differing tax regimes, pension transfers, and estate planning across multiple jurisdictions all require professional guidance. The financial advisors operating in the Calvia area typically specialise in:</p>
<ul>
<li><strong>Cross-border wealth management</strong> for residents with assets in multiple countries</li>
<li><strong>Retirement planning</strong> including QROPS (Qualifying Recognised Overseas Pension Schemes) and Spanish pension optimization</li>
<li><strong>Investment management</strong> using compliant structures suitable for Spanish tax residents</li>
<li><strong>Estate planning</strong> considering both Spanish succession law and the laws of your country of origin</li>
<li><strong>Currency management</strong> for those receiving income or pensions in currencies other than euros</li>
</ul>

<h3>Regulation and Qualifications</h3>
<p>Financial advisors operating in Spain must be registered with the CNMV (Comision Nacional del Mercado de Valores) or operate under the licence of a regulated firm. When choosing an advisor, verify their regulatory status and professional qualifications. Many advisors in Calvia hold international qualifications such as Chartered Financial Planner (CFP), Diploma in Financial Planning (DipPFS), or equivalent European certifications.</p>

<h3>Spanish-Compliant Investment Structures</h3>
<p>Investments held by Spanish tax residents must be reported and are subject to Spanish capital gains tax. Common compliant investment structures include Spanish-compliant investment bonds, SICAV vehicles, and regulated unit trusts. Your financial advisor should ensure all recommended products are tax-efficient within the Spanish fiscal framework and reportable on your annual tax return.</p>

<h3>Finding the Right Advisor in Calvia</h3>
<p>The financial advisory community in Calvia is concentrated around Palmanova, Santa Ponsa, and Portals Nous. Many firms offer initial consultations free of charge. Look for advisors who understand your specific nationality''s tax treaty with Spain, have experience with the Balearic Islands'' specific tax rules, and operate with transparent fee disclosure. Independent fee-based advisors (rather than commission-based) often provide more objective recommendations.</p>',
  'financial-advisors',
  'Financial Advisors in Calvia, Mallorca | Wealth Management Guide',
  'Find regulated financial advisors in Calvia, Mallorca. Guide to wealth management, retirement planning, QROPS, and cross-border investments for expats.',
  'https://images.pexels.com/photos/7821486/pexels-photo-7821486.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
),
(
  'Health Clinics in Calvia: Your Guide to Medical Services in Southwest Mallorca',
  'health-clinics-calvia-guide',
  'Comprehensive guide to health clinics and medical services in Calvia, Mallorca. Covers public and private healthcare, emergency services, specialist clinics, and health insurance for residents and visitors.',
  '<h2>Healthcare in the Calvia Municipality</h2>
<p>The Calvia region benefits from excellent healthcare infrastructure serving both its resident population and the millions of tourists who visit annually. From state-of-the-art private clinics to the well-regarded Spanish public health system, finding quality medical care in southwest Mallorca is straightforward once you understand how the system works.</p>

<h3>Public vs Private Healthcare</h3>
<p>Spain''s public healthcare system (Sistema Nacional de Salud) is highly regarded internationally. EU citizens can access emergency public healthcare with a European Health Insurance Card (EHIC/GHIC). Registered residents contribute to the social security system and receive a Tarjeta Sanitaria (health card) providing full access to public services. Private healthcare offers shorter waiting times, English-speaking doctors, and more flexible appointment scheduling, which is why many international residents in Calvia opt for a combination of both.</p>

<h3>Types of Health Clinics in Calvia</h3>
<ul>
<li><strong>Centros de Salud (Public Health Centres):</strong> Located in Santa Ponsa, Palmanova, and Peguera, these provide general practitioner services, nursing, vaccinations, and referrals to specialists</li>
<li><strong>Private Medical Clinics:</strong> Multi-specialty clinics offering GP consultations, diagnostics, minor surgery, and specialist referrals. Often staffed by multilingual doctors</li>
<li><strong>Specialist Clinics:</strong> Focused practices for dermatology, physiotherapy, psychology, ophthalmology, and other specialties</li>
<li><strong>Urgent Care Clinics:</strong> For non-emergency medical needs outside standard hours</li>
</ul>

<h3>Health Insurance for Residents</h3>
<p>Private health insurance is widely available in Mallorca. Major providers include Sanitas, Adeslas, Asisa, and DKV. Many international residents choose comprehensive private coverage which typically costs between 80 and 200 euros per month depending on age and coverage level. For non-EU residents, private health insurance is a requirement for obtaining a residence visa. Several brokers in the Calvia area specialise in finding the right health insurance for the international community.</p>

<h3>Medical Services Available Locally</h3>
<p>Within the Calvia municipality, you can access general practitioners, paediatrics, gynaecology, cardiology, dermatology, physiotherapy, mental health services, diagnostics (X-ray, ultrasound, blood tests), and minor surgical procedures without needing to travel to Palma. For major surgery and emergency admissions, Son Espases University Hospital in Palma (approximately 20 minutes from Palmanova) is the main reference hospital for the area.</p>

<h3>Tips for Accessing Healthcare in Calvia</h3>
<p>Register with a local GP as soon as you settle in the area. Keep your EHIC/GHIC or insurance documents accessible at all times. For non-emergencies, the public health centre appointment system (via the IB-Salut app or phone) is the standard route. Private clinics generally accept walk-ins or same-day appointments. Many pharmacies in the area can provide initial health advice and over-the-counter medications for minor conditions.</p>',
  'health-clinics',
  'Health Clinics in Calvia, Mallorca | Medical Services Guide',
  'Find health clinics and medical services in Calvia, Mallorca. Guide to public and private healthcare, insurance, specialists, and emergency services for residents and visitors.',
  'https://images.pexels.com/photos/4386467/pexels-photo-4386467.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
),
(
  'Beauty Salons in Calvia: Treatments, Trends, and Top Picks',
  'beauty-salons-calvia-guide',
  'Guide to beauty salons and aesthetic treatments in Calvia, Mallorca. Covers popular treatments, what to expect, pricing, and tips for finding the best beauty professionals.',
  '<h2>Beauty and Aesthetics in Calvia</h2>
<p>The beauty and aesthetics industry in Calvia reflects the area''s cosmopolitan character. From traditional Mediterranean beauty rituals to the latest non-invasive aesthetic treatments, the salons and clinics in southwest Mallorca cater to an international clientele with diverse beauty needs and expectations.</p>

<h3>Popular Beauty Treatments</h3>
<p>Beauty salons across Calvia offer a comprehensive range of services:</p>
<ul>
<li><strong>Facial treatments:</strong> Deep cleansing, hydrating facials, chemical peels, microdermabrasion, and LED light therapy</li>
<li><strong>Body treatments:</strong> Body wraps, exfoliation, lymphatic drainage massage, and body contouring</li>
<li><strong>Nail services:</strong> Manicures, pedicures, gel nails, and nail art</li>
<li><strong>Hair removal:</strong> Waxing, threading, laser hair removal, and IPL treatments</li>
<li><strong>Aesthetic treatments:</strong> Microneedling, radiofrequency skin tightening, and professional-grade skincare consultations</li>
<li><strong>Makeup services:</strong> Special occasion makeup, wedding packages, and makeup lessons</li>
</ul>

<h3>What to Expect and Pricing</h3>
<p>Beauty salons in Calvia range from budget-friendly neighbourhood salons to high-end aesthetic clinics. A standard facial treatment typically costs between 50 and 120 euros, while more advanced aesthetic procedures can range from 150 to 500 euros per session. Manicures start from around 20 euros for basic treatments. Most salons accept walk-ins for simple services but recommend booking in advance for treatments lasting over 30 minutes, especially during the busy summer months.</p>

<h3>Choosing a Beauty Salon</h3>
<p>When selecting a beauty salon in Calvia, consider the qualifications of the practitioners, the brands and products used, hygiene standards, and reviews from the local community. Many salons cater to specific language communities, so you will find German-speaking, English-speaking, and Scandinavian-friendly salons throughout the area. The salons around Santa Ponsa and Palmanova tend to serve the international community, while Calvia Vila and Son Ferrer have more locally oriented establishments.</p>

<h3>Seasonal Considerations</h3>
<p>The summer season (June-September) is peak time for beauty services, with many visitors seeking pre-beach grooming, event makeup, and skin treatments. Booking well in advance is recommended during this period. Winter months often see salons offering promotional packages and special rates, making it an excellent time for course-based treatments that require multiple sessions.</p>',
  'beauty-salons',
  'Beauty Salons in Calvia, Mallorca | Treatments & Aesthetic Guide',
  'Find beauty salons in Calvia, Mallorca. Guide to facial treatments, body care, nail services, aesthetic treatments, pricing, and choosing the right salon.',
  'https://images.pexels.com/photos/3985329/pexels-photo-3985329.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
),
(
  'Professional Services in Calvia: Consultants, IT, and Business Support',
  'professional-services-calvia-guide',
  'Guide to professional services in Calvia, Mallorca. Covers IT support, business consulting, translation services, marketing agencies, and other professional support for businesses and individuals.',
  '<h2>Professional Services in the Calvia Region</h2>
<p>As Calvia continues to attract entrepreneurs, remote workers, and international businesses, the demand for high-quality professional services has grown significantly. From IT support to business consulting, translation services to marketing agencies, the professional services sector in southwest Mallorca serves both the established business community and the growing digital nomad population.</p>

<h3>Types of Professional Services Available</h3>
<ul>
<li><strong>IT Support and Web Development:</strong> Local IT firms providing computer repair, network setup, web design, and managed IT services for businesses. Many cater specifically to the hospitality and tourism sectors.</li>
<li><strong>Translation and Interpretation:</strong> Professional translators covering Spanish, English, German, Swedish, and other languages. Essential for legal documents, property transactions, and business communications.</li>
<li><strong>Marketing and Digital Agencies:</strong> Social media management, SEO, content creation, and branding services tailored to tourism businesses and the Mallorca property market.</li>
<li><strong>Business Consulting:</strong> Strategic advice for businesses operating in the Balearic tourism economy, including licensing, staffing, and market analysis.</li>
<li><strong>Virtual Office and Administrative Services:</strong> Registered business addresses, mail handling, phone answering, and administrative support for remote businesses.</li>
</ul>

<h3>The Business Environment in Calvia</h3>
<p>Calvia''s economy is predominantly driven by tourism and real estate, but the professional services sector is diversifying. The municipality actively supports business development through its economic development office. The coworking spaces in Palmanova, Santa Ponsa, and Port Adriano have created hubs where professionals network and collaborate. The annual Calvia Business Forum brings together local entrepreneurs and service providers.</p>

<h3>Finding the Right Professional</h3>
<p>Word of mouth remains powerful in the Calvia business community. LinkedIn, local business groups on social media, and the various expat associations are good starting points. For regulated services (legal, financial, medical), always verify professional registrations and qualifications. For creative and digital services, review portfolios and ask for references from local businesses in similar sectors.</p>',
  'professional-services',
  'Professional Services in Calvia, Mallorca | Business Support Guide',
  'Find professional services in Calvia, Mallorca. IT support, translation, marketing, consulting, and business services for companies and individuals.',
  'https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
)
ON CONFLICT (slug) DO NOTHING;
