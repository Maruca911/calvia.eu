/*
  # Fix orphaned guides and seed new guides for empty categories

  1. Fixes
    - Assign 'living-in-calvia-expat-guide' to 'property-management' category
    - Assign 'family-activities-calvia' to 'nature-outdoors' category

  2. New Guides (10 guides for high-value empty categories)
    - Fine Dining, Wellness Spas, Fitness Centers, Shopping & Retail,
      Home Services, Events Planning, Dentists, Lawyers & Legal,
      Supermarkets, Coworking

  3. FAQs
    - 4 FAQs per new guide for SEO coverage
*/

UPDATE guides SET category_slug = 'property-management' WHERE slug = 'living-in-calvia-expat-guide' AND category_slug IS NULL;
UPDATE guides SET category_slug = 'nature-outdoors' WHERE slug = 'family-activities-calvia' AND category_slug IS NULL;

INSERT INTO guides (slug, title, description, content, image_url, category_slug, area_slug, meta_title, meta_description, published)
VALUES
(
  'fine-dining-calvia-guide',
  'Fine Dining in Calvia: A Culinary Journey',
  'Discover the best fine dining experiences across Calvia, from Michelin-worthy restaurants to hidden gourmet gems along the Southwest coast.',
  '<h2>A Region of Gastronomic Excellence</h2>
<p>Calvia has quietly become one of Mallorca''s most exciting dining destinations. From the Philippe Starck-designed terraces of Port Adriano to intimate hillside restaurants in Es Capdella, the region offers a remarkable range of high-end culinary experiences that rival any Mediterranean hotspot.</p>

<h2>Where to Find the Best Fine Dining</h2>
<h3>Port Adriano & El Toro</h3>
<p>The marina district has attracted several acclaimed chefs who bring contemporary Mediterranean cuisine to stunning waterfront settings. Expect tasting menus featuring locally caught seafood, Mallorcan black pig, and seasonal produce from the Tramuntana foothills.</p>

<h3>Bendinat & Portals Nous</h3>
<p>The exclusive corridor between Bendinat and Puerto Portals is home to some of the island''s most celebrated restaurants. Here you will find establishments blending classic European technique with Balearic ingredients -- think red prawn tartare, sobrassada-glazed duck, and almond-milk desserts reimagined by avant-garde pastry chefs.</p>

<h3>Santa Ponca & Peguera</h3>
<p>These resort towns hide several sophisticated dining rooms that cater to a discerning international clientele. Family-run establishments often serve multi-course meals paired with boutique Mallorcan wines from the Binissalem and Pla i Llevant regions.</p>

<h2>What to Expect</h2>
<p>Fine dining in Calvia leans Mediterranean with strong Spanish and Mallorcan influences. Most high-end restaurants offer tasting menus ranging from 5 to 12 courses, with optional wine pairings. Reservations are essential during summer months (June through September), and many restaurants close or reduce hours from November through March.</p>

<h2>Seasonal Highlights</h2>
<p>Spring brings tender artichokes and wild asparagus. Summer is all about red prawns from Soller, fresh almonds, and local tomatoes. Autumn sees mushroom-focused menus and olive oil from the new harvest. Winter offers comforting dishes built around Mallorcan black pig and seasonal citrus.</p>

<h2>Tips for Diners</h2>
<ul>
<li>Book at least a week ahead for weekend dinners during peak season</li>
<li>Ask about the vino de la casa -- many restaurants have partnerships with small local wineries</li>
<li>Dress codes tend to be smart-casual; no flip-flops at upscale venues</li>
<li>Lunch service often offers better value with shorter tasting menus at reduced prices</li>
</ul>',
  'https://images.pexels.com/photos/67468/pexels-photo-67468.jpeg?auto=compress&cs=tinysrgb&w=800',
  'fine-dining', NULL,
  'Fine Dining in Calvia, Mallorca | Best Restaurants Guide',
  'Discover the finest dining experiences in Calvia, Mallorca. From Port Adriano to Portals Nous, explore gourmet restaurants and culinary highlights.',
  true
),
(
  'wellness-spa-guide-calvia',
  'Wellness & Spa Guide to Calvia',
  'Your complete guide to wellness retreats, day spas, and holistic health services across the Southwest coast of Mallorca.',
  '<h2>Calvia: A Natural Wellness Destination</h2>
<p>With its mild Mediterranean climate, pristine coastline, and mountain backdrop, Calvia provides the ideal setting for wellness and relaxation. The region offers everything from luxury hotel spas to intimate boutique wellness centres run by international therapists.</p>

<h2>Types of Wellness Experiences</h2>
<h3>Hotel & Resort Spas</h3>
<p>Several of Calvia''s premium hotels in Ses Illetes, Bendinat, and Palmanova feature full-service spas with thermal circuits, hammams, and treatment rooms. These are often open to non-guests on a day-pass basis, making them accessible to residents and visitors alike.</p>

<h3>Boutique Wellness Centres</h3>
<p>Smaller, independent wellness studios scattered across Santa Ponca, Peguera, and El Toro offer specialized treatments including deep tissue massage, lymphatic drainage, aromatherapy, and traditional Chinese medicine. Many practitioners are multilingual, catering to the international community.</p>

<h3>Outdoor Wellness</h3>
<p>Calvia''s natural environment offers its own form of therapy. Sea swimming at Portals Vells, forest bathing in the Galatzo nature reserve, and sunrise yoga on Palmanova beach are just a few ways residents combine fitness with mindfulness.</p>

<h2>Popular Treatments</h2>
<ul>
<li>Hot stone massage using local volcanic minerals</li>
<li>Thalassotherapy treatments drawing on Mediterranean seawater</li>
<li>Facials using Mallorcan olive oil and almond-based products</li>
<li>Holistic packages combining yoga, nutrition, and bodywork</li>
</ul>

<h2>Planning Your Wellness Experience</h2>
<p>Most spas operate year-round, though summer months see higher demand. Booking 2-3 days in advance is recommended for popular therapists. Many centres offer packages combining multiple treatments at a discount. Ask about loyalty programmes -- several wellness businesses in Calvia reward regular clients.</p>',
  'https://images.pexels.com/photos/3757952/pexels-photo-3757952.jpeg?auto=compress&cs=tinysrgb&w=800',
  'wellness-spas', NULL,
  'Wellness & Spa Guide to Calvia, Mallorca',
  'Find the best spas, wellness centres, and holistic treatments in Calvia, Mallorca. From luxury hotel spas to boutique wellness studios.',
  true
),
(
  'fitness-gym-guide-calvia',
  'Fitness & Gym Guide to Calvia',
  'Find the right gym, personal trainer, or fitness studio in Calvia. From CrossFit boxes to luxury health clubs.',
  '<h2>Staying Fit in Calvia</h2>
<p>Whether you are a year-round resident or spending a few months at your second home, Calvia has a surprisingly strong fitness infrastructure. The region supports everything from no-frills gyms to high-end health clubs with sea views.</p>

<h2>Types of Fitness Facilities</h2>
<h3>Full-Service Health Clubs</h3>
<p>Found primarily in Palmanova, Santa Ponca, and Bendinat, these larger facilities offer weight rooms, group classes, swimming pools, and often tennis or padel courts. Monthly memberships typically range from EUR 50 to EUR 120, with family packages available.</p>

<h3>Boutique Studios</h3>
<p>Specialized studios focusing on Pilates, HIIT, spinning, or functional training are increasingly popular in Portals Nous, El Toro, and Peguera. Class sizes are smaller, and the quality of instruction tends to be high, with many trainers holding international certifications.</p>

<h3>CrossFit & Functional Training</h3>
<p>Several CrossFit-affiliated boxes operate in the Calvia area, particularly around Son Ferrer and Santa Ponca. These attract a community-oriented crowd and often run morning and evening sessions to accommodate different schedules.</p>

<h3>Outdoor Fitness</h3>
<p>Calvia''s climate makes outdoor training viable for most of the year. Boot camp groups meet on Palmanova beach, running clubs tackle the coastal paths between Cas Catala and Portals Vells, and calisthenics parks in several neighbourhoods provide free workout stations.</p>

<h2>Personal Training</h2>
<p>The demand for personal trainers is high among Calvia''s international residents. Many operate independently, meeting clients at home, in parks, or at partner gyms. Expect to pay EUR 40-80 per session, with packages offering discounts for commitment.</p>

<h2>Tips for Newcomers</h2>
<ul>
<li>Most gyms offer free trial sessions or short-term passes -- take advantage before committing</li>
<li>Group classes are a great way to meet people in the community</li>
<li>Some hotel gyms sell external memberships at competitive rates during winter months</li>
<li>Check whether your facility offers flexible summer/winter contracts if you split time between countries</li>
</ul>',
  'https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&w=800',
  'fitness-centers', NULL,
  'Fitness & Gym Guide to Calvia, Mallorca',
  'Find gyms, personal trainers, and fitness studios in Calvia, Mallorca. From health clubs to outdoor bootcamps, your fitness guide.',
  true
),
(
  'shopping-guide-calvia',
  'Shopping Guide to Calvia: From Boutiques to Markets',
  'Where to shop in Calvia, from designer boutiques in Puerto Portals to local markets in Calvia Vila.',
  '<h2>Shopping in Calvia</h2>
<p>Calvia offers a diverse shopping experience that ranges from high-end designer boutiques to traditional weekly markets. Whether you need luxury fashion, artisan crafts, or just everyday groceries, you will find it across the region''s 23 villages.</p>

<h2>Luxury Shopping</h2>
<h3>Puerto Portals</h3>
<p>The marina promenade at Puerto Portals is Mallorca''s premier luxury shopping destination. International fashion brands, jewellery stores, and lifestyle boutiques line the waterfront.</p>

<h3>Port Adriano</h3>
<p>Philippe Starck''s superyacht marina includes a curated selection of fashion and lifestyle stores with contemporary design.</p>

<h2>Local Markets</h2>
<p>The traditional weekly market in Calvia Vila (Monday) features fresh produce, local cheeses, Mallorcan sausages, and handmade goods. Santa Ponca''s Wednesday market is larger and popular with locals and tourists alike.</p>

<h2>Shopping Centres & Commercial Areas</h2>
<p>El Toro and Son Ferrer have commercial zones with practical shops. Magaluf has undergone retail renovation with new mixed-use developments combining dining and shopping.</p>

<h2>Artisan & Specialty Shops</h2>
<p>Throughout Calvia you will discover small specialty shops selling Mallorcan olive oil, local wines, ensaimadas, handcrafted leather sandals (avarcas), and Roba de Llengues textiles.</p>',
  'https://images.pexels.com/photos/1005638/pexels-photo-1005638.jpeg?auto=compress&cs=tinysrgb&w=800',
  'shopping-retail', NULL,
  'Shopping Guide to Calvia, Mallorca',
  'Discover the best shopping in Calvia, Mallorca. From Puerto Portals boutiques to local markets and artisan shops.',
  true
),
(
  'home-services-guide-calvia',
  'Finding Trusted Home Services in Calvia',
  'A practical guide to finding reliable plumbers, electricians, cleaners, gardeners, and other home service providers.',
  '<h2>Managing Your Property in Calvia</h2>
<p>Whether you live in Calvia full-time or manage a second home from abroad, finding reliable home service providers is one of the most common challenges for international residents.</p>

<h2>Essential Home Services</h2>
<h3>Plumbing & Electrical</h3>
<p>Licensed plumbers and electricians are in high demand. For emergency work, expect to pay a premium. Always ask for a presupuesto (written quote) before work begins.</p>

<h3>Cleaning Services</h3>
<p>Regular domestic cleaning is widely available. Rates typically range from EUR 12-18 per hour. Both independent cleaners and agencies operate across the region.</p>

<h3>Garden & Pool Maintenance</h3>
<p>Year-round garden maintenance and weekly pool servicing are standard. Monthly garden contracts include lawn care, pruning, and irrigation checks.</p>

<h3>Air Conditioning</h3>
<p>Have your AC system serviced in spring. Most companies offer annual maintenance contracts with priority summer service.</p>

<h2>How to Find Reliable Providers</h2>
<ul>
<li>Ask neighbours and community groups for recommendations</li>
<li>Check that tradespeople have proper autonomo registration</li>
<li>Get everything in writing, including scope of work and payment terms</li>
<li>For significant works, ensure your contractor has appropriate insurance</li>
</ul>',
  'https://images.pexels.com/photos/5691622/pexels-photo-5691622.jpeg?auto=compress&cs=tinysrgb&w=800',
  'home-services', NULL,
  'Home Services Guide for Calvia, Mallorca',
  'Find trusted plumbers, electricians, cleaners, and gardeners in Calvia, Mallorca. A practical guide for homeowners.',
  true
),
(
  'event-planning-guide-calvia',
  'Event Planning in Calvia: Venues, Caterers & More',
  'Plan your wedding, corporate event, or private celebration in Calvia with this guide to venues and services.',
  '<h2>Calvia as an Event Destination</h2>
<p>Calvia''s combination of stunning coastal scenery, luxury venues, and year-round mild weather makes it one of Mallorca''s top event destinations.</p>

<h2>Popular Event Venues</h2>
<h3>Beachfront & Marina Venues</h3>
<p>Port Adriano and Puerto Portals offer spectacular waterfront event spaces. Sunset ceremonies with the Mediterranean as backdrop are a signature Calvia experience.</p>

<h3>Fincas & Country Estates</h3>
<p>The rural hinterland around Es Capdella and Calvia Vila has beautiful restored fincas available for private hire, popular for weddings and milestone celebrations.</p>

<h3>Hotel Event Spaces</h3>
<p>Premium hotels in Ses Illetes, Bendinat, and Palmanova offer full-service event packages including catering and coordination.</p>

<h2>Key Service Providers</h2>
<ul>
<li><strong>Wedding planners:</strong> Several experienced planners specialize in destination weddings</li>
<li><strong>Catering:</strong> From traditional Mallorcan to international gourmet menus</li>
<li><strong>Entertainment:</strong> Live bands, DJs, flamenco performers available locally</li>
<li><strong>Floristry:</strong> Local florists work with Mediterranean blooms</li>
</ul>

<h2>Planning Timeline</h2>
<p>For summer events, begin planning 12-18 months in advance. The shoulder months of May and October provide excellent weather with less competition for venues.</p>',
  'https://images.pexels.com/photos/169198/pexels-photo-169198.jpeg?auto=compress&cs=tinysrgb&w=800',
  'events-planning', NULL,
  'Event Planning in Calvia, Mallorca | Venues & Services',
  'Plan weddings, corporate events, and celebrations in Calvia, Mallorca. Find venues, caterers, and event planners.',
  true
),
(
  'dental-care-guide-calvia',
  'Dental Care in Calvia: A Guide for International Residents',
  'Find the right dentist in Calvia. Compare private dental clinics and understand pricing.',
  '<h2>Dental Care for International Residents</h2>
<p>The region is well-served by modern dental clinics staffed by multilingual professionals. Many practitioners have trained across Europe and offer services at significantly lower prices than northern European countries.</p>

<h2>Types of Dental Clinics</h2>
<p>General dental practices in Palmanova, Santa Ponca, and Peguera handle routine check-ups and treatments. Specialist clinics offer orthodontics, implantology, and aesthetic dentistry.</p>

<h2>Typical Pricing</h2>
<ul>
<li>Initial consultation: EUR 30-60</li>
<li>Professional cleaning: EUR 60-90</li>
<li>Dental implant (single): EUR 800-1,500</li>
<li>Ceramic crown: EUR 400-700</li>
<li>Teeth whitening: EUR 200-400</li>
</ul>

<h2>Insurance & Payment</h2>
<p>Most clinics accept major Spanish health insurance. For international insurance, you typically pay upfront and claim reimbursement. Many clinics offer payment plans.</p>

<h2>Choosing a Dentist</h2>
<p>Look for clinics registered with the Colegio Oficial de Dentistas de Baleares. English-speaking staff is common in Calvia.</p>',
  'https://images.pexels.com/photos/3845810/pexels-photo-3845810.jpeg?auto=compress&cs=tinysrgb&w=800',
  'dentists-dental-clinics', NULL,
  'Dental Care Guide for Calvia, Mallorca',
  'Find dentists and dental clinics in Calvia, Mallorca. Compare services and pricing for international residents.',
  true
),
(
  'legal-services-guide-calvia',
  'Legal Services in Calvia: A Guide for Internationals',
  'Navigate Spanish law with confidence. Find English-speaking lawyers for property, immigration, and tax matters.',
  '<h2>Understanding Legal Services in Calvia</h2>
<p>Calvia has a strong community of multilingual legal professionals who specialize in issues most relevant to foreign nationals: property, residency, tax, inheritance, and business formation.</p>

<h2>Common Legal Needs</h2>
<h3>Property Purchase</h3>
<p>An independent lawyer should review contracts and conduct due diligence. Budget EUR 1,500-3,000 for legal fees on a standard property purchase.</p>

<h3>Residency & Immigration</h3>
<p>Post-Brexit, British nationals need visas or residency permits. Lawyers handle NIE applications, residency certificates, and golden visa applications.</p>

<h3>Tax Advisory</h3>
<p>Tax obligations in Spain are complex for those with assets in multiple countries. Qualified advisors cover income tax, non-resident tax, wealth tax, and inheritance planning.</p>

<h2>Finding the Right Lawyer</h2>
<ul>
<li>Verify membership with the Ilustre Colegio de Abogados de Baleares</li>
<li>Choose specialists for your specific need</li>
<li>Request a fee estimate in writing</li>
<li>Ensure they speak your language fluently</li>
</ul>',
  'https://images.pexels.com/photos/5668858/pexels-photo-5668858.jpeg?auto=compress&cs=tinysrgb&w=800',
  'lawyers-legal', NULL,
  'Legal Services in Calvia, Mallorca for Internationals',
  'Find English-speaking lawyers in Calvia, Mallorca. Legal guidance for property, residency, tax, and business.',
  true
),
(
  'supermarket-grocery-guide-calvia',
  'Supermarket & Grocery Guide to Calvia',
  'Where to buy groceries in Calvia. From large supermarket chains to local markets and specialty food shops.',
  '<h2>Grocery Shopping in Calvia</h2>
<p>Calvia is well-served by both major Spanish supermarket chains and independent food shops.</p>

<h2>Major Supermarket Chains</h2>
<h3>Mercadona</h3>
<p>Spain''s largest chain with several stores across Calvia. Known for strong own-brand products and competitive prices.</p>

<h3>Eroski</h3>
<p>Stores in Santa Ponca, Palmanova, and Peguera. Wider range of international products, popular with the expat community.</p>

<h3>Lidl & Aldi</h3>
<p>German discounters with good fresh produce and weekly special offers.</p>

<h2>Local Markets</h2>
<p>Weekly markets in Calvia Vila (Monday), Peguera (Tuesday), and Santa Ponca (Wednesday) are the best sources for seasonal local produce.</p>

<h2>Tips for Shoppers</h2>
<ul>
<li>Most supermarkets are closed on Sundays; plan ahead</li>
<li>Siesta closures (2-5pm) still apply at smaller shops</li>
<li>Bring your own bags -- plastic bags are charged</li>
<li>Try Mallorcan staples: sobrassada, ensaimada, Mahon cheese</li>
</ul>',
  'https://images.pexels.com/photos/264636/pexels-photo-264636.jpeg?auto=compress&cs=tinysrgb&w=800',
  'supermarkets-grocery', NULL,
  'Supermarket & Grocery Guide to Calvia, Mallorca',
  'Find supermarkets, organic shops, and local food markets in Calvia, Mallorca.',
  true
),
(
  'coworking-remote-work-guide-calvia',
  'Remote Working in Calvia: Coworking Spaces & Digital Nomad Guide',
  'Work remotely from Calvia. Find coworking spaces, reliable WiFi spots, and practical tips for remote workers.',
  '<h2>Calvia for Remote Workers</h2>
<p>Calvia is increasingly attractive to remote workers who want to combine professional productivity with Mediterranean lifestyle.</p>

<h2>Coworking Spaces</h2>
<p>Professional spaces in Santa Ponca, El Toro, and Palmanova offer hot desks, dedicated desks, private offices, and meeting rooms. Monthly rates range from EUR 150-350.</p>

<h2>Connectivity</h2>
<p>Fibre internet is widely available with speeds from 100 Mbps to 1 Gbps. Mobile 4G/5G coverage is strong throughout the region.</p>

<h2>Practical Considerations</h2>
<ul>
<li><strong>Time zones:</strong> Spain is CET (GMT+1), convenient for European clients</li>
<li><strong>Tax:</strong> Working in Spain for 183+ days may trigger Spanish tax residency</li>
<li><strong>Visa:</strong> Spain''s digital nomad visa allows non-EU remote workers to live and work legally</li>
<li><strong>Networking:</strong> Business networking groups meet regularly in Calvia</li>
</ul>

<h2>Why Calvia Works for Remote Workers</h2>
<p>Modern infrastructure, international community, excellent quality of life, and competitive cost of living make Calvia an ideal base for location-independent professionals.</p>',
  'https://images.pexels.com/photos/7070/space-desk-workspace-coworking.jpg?auto=compress&cs=tinysrgb&w=800',
  'coworking-offices', NULL,
  'Remote Working & Coworking in Calvia, Mallorca',
  'Find coworking spaces and remote work resources in Calvia, Mallorca.',
  true
)
ON CONFLICT (slug) DO NOTHING;