/*
  # Seed Guides - Batch 3 (5 guides: Golf, Tennis, Pilates/Yoga, Padel, Real Estate)

  1. New Data
    - 5 comprehensive guide articles for Calvia.app
    - Guides cover: best golf courses, tennis clubs, pilates & yoga studios, padel courts, and buying real estate
    - Each guide references real business names from CSV data for authenticity
  2. Notes
    - All guides are published and linked to relevant category slugs
    - Content uses HTML formatting for the prose renderer
    - Images sourced from Pexels stock photography
    - ON CONFLICT (slug) DO NOTHING to prevent duplicates
*/

INSERT INTO guides (title, slug, description, content, area_slug, category_slug, meta_title, meta_description, image_url, published)
VALUES
(
  'Best Golf Courses in Calvia & Mallorca',
  'best-golf-courses-calvia',
  'From championship layouts to scenic coastal rounds — your complete guide to the best golf courses in Calvia and southwest Mallorca, updated for 2026.',
  '<p>Mallorca has quietly established itself as one of Europe''s premier golf destinations, and Calvia sits right at the heart of it. With year-round sunshine, spectacular Mediterranean backdrops, and courses designed by some of the biggest names in the sport, the southwest corner of the island offers everything from relaxed resort rounds to serious championship tests.</p>

<h2>Championship Courses Near Calvia</h2>
<p><strong>T Golf Calvia</strong> is the municipality''s flagship course. Designed in the British style with American influences, it offers panoramic views across the Tramuntana mountains and the sea. The layout rewards strategic play over brute force, and the clubhouse is first-rate — a favourite post-round gathering spot for the local golfing community.</p>
<p><strong>Golf Club Santa Ponsa I</strong> is arguably the most prestigious address in Calvia golf. This 18-hole course has hosted the European Tour and remains the standard by which local courses are measured. The par-72 layout weaves through mature pine forests with occasional sea glimpses. Santa Ponsa also operates two additional private courses — <strong>Golf Santa Ponsa II</strong> and <strong>Golf Santa Ponsa III</strong> — both members-only and highly exclusive.</p>
<p><strong>Real Golf Bendinat</strong> occupies a beautiful valley setting between Portals Nous and Bendinat. The course is shorter than some but makes up for it with character — undulating fairways, mature trees, and a peaceful atmosphere that has attracted its share of celebrity members over the years.</p>

<h2>World-Class Courses Within Easy Reach</h2>
<p><strong>Golf Son Gual</strong>, east of Palma, is widely considered the finest course on the island. The Thomas Himmel design is immaculate — wide fairways, bold bunkering, and greens that run true. It regularly appears in European top-100 lists. Worth the 30-minute drive from Calvia.</p>
<p><strong>Alcanada Golf</strong> in Alcudia is another must-play. The Robert Trent Jones Jr. design sits directly on the coast with views to the lighthouse island of Alcanada. The front nine plays along the sea, and the whole experience feels more like Scotland than Spain.</p>
<p><strong>Golf de Andratx</strong> at Camp de Mar offers the most dramatic elevation changes of any course in the area. The mountain setting is stunning, though the narrow fairways and steep slopes make it a genuine test. Bring your A-game and plenty of balls.</p>

<h2>Resort & Family-Friendly Options</h2>
<p><strong>Golf Son Vida</strong> is the island''s original championship course, set within the Arabella Golf resort above Palma. The views from the elevated tees are spectacular. <strong>Golf Son Muntaner</strong>, also part of the Arabella complex, takes a more sustainable approach with native vegetation and a modern layout that''s challenging but fair.</p>
<p><strong>Golf Maioris</strong> near Llucmajor is an excellent choice for families and mid-handicappers. The course is well-maintained, reasonably priced, and welcoming to visitors. The driving range and practice facilities are among the best on the island.</p>

<h2>Practical Tips for Golfing in Calvia</h2>
<ul>
<li>Green fees range from 50-60 euros at municipal courses to 150-200+ euros at premium venues like Son Gual</li>
<li>Book tee times at least a week in advance during peak season (March-May and September-November)</li>
<li>Summer rounds are best started early — first tee times from 7:30am avoid the midday heat</li>
<li>Most courses offer club hire, though quality varies. Bring your own if possible</li>
<li>Twilight rates (typically after 2-3pm) offer significant savings at most courses</li>
<li>Golf Santa Ponsa II and III require membership or guest introduction — enquire well ahead</li>
</ul>',
  NULL,
  'golf-courses',
  'Best Golf Courses in Calvia & Mallorca 2026 | Complete Guide | Calvia.app',
  'Discover the best golf courses in Calvia and southwest Mallorca. From T Golf Calvia to Son Gual — championship layouts, resort courses, and practical booking tips for 2026.',
  'https://images.pexels.com/photos/1325735/pexels-photo-1325735.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Best Tennis Clubs in Calvia: Courts, Coaching & Community',
  'best-tennis-clubs-calvia',
  'From world-class academies to charming clay-court clubs — find the best places to play tennis across Calvia and southwest Mallorca.',
  '<p>Tennis runs deep in Mallorca''s sporting culture. The Balearic sun, year-round playability, and the island''s proud tradition of producing world-class players make Calvia one of the best places in Europe to pick up a racquet — whether you''re a serious competitor, a casual player looking for a hit, or a family wanting coaching for the kids.</p>

<h2>Top Academies & Coaching Centres</h2>
<p><strong>Tennis Academy Mallorca</strong> in Peguera is the standout training facility in the Calvia area. With 13 clay courts and a dedicated stadium court, it caters to everyone from beginners to aspiring professionals. The coaching team offers structured programmes and intensive clinics that attract players from across Europe during the school holidays.</p>
<p><strong>Vilas Tennis Academy</strong> in Palmanova follows the Guillermo Vilas training methodology — a philosophy that emphasises footwork, physical conditioning, and tactical intelligence. The academy is popular with affluent families seeking elite-level coaching in a more intimate setting.</p>
<p>For the ultimate tennis experience, <strong>Rafa Nadal Academy</strong> in Manacor is worth the 45-minute drive from Calvia. The world-class facility offers day programmes, weekly camps, and the chance to train at the academy founded by Mallorca''s greatest sporting icon. Book well in advance — places fill up fast.</p>

<h2>Premium Clubs & Facilities</h2>
<p><strong>Sporting Club Bendinat</strong> is the gold standard for luxury club tennis in Calvia. Seven beautifully maintained clay courts sit alongside a fully equipped gym, pool, and restaurant. The membership is sought-after, but visitor passes and guest play can be arranged.</p>
<p><strong>Mallorca Country Club</strong> in Santa Ponsa combines premium tennis courts with broader sporting and social facilities. The club has become a genuine community hub, particularly for the international residents of Santa Ponsa and surrounding areas. Their padel courts are equally impressive.</p>
<p><strong>Sporting Club Portals</strong> in Costa d''en Blanes offers seven clay courts and four padel courts with sea views. The setting alone makes it worth a visit, and the coaching programme is well-regarded for juniors.</p>

<h2>Family-Friendly & Casual Options</h2>
<p><strong>Playas de Santa Ponsa Tennis Club</strong> operates eight clay courts at municipal rates — excellent value for families. The atmosphere is relaxed and welcoming, with regular social play sessions and a junior programme.</p>
<p><strong>Jonathan Markson Tennis</strong> in Peguera runs popular holiday tennis camps that combine coaching with fun. Ideal for families wanting organised activity for children while on holiday.</p>
<p>For a genuine community club experience, <strong>TC Calvia Beach</strong> offers beachside courts and a friendly local membership base. It''s the kind of place where you can turn up, find a game, and make friends.</p>

<h2>Tennis Tips for Calvia</h2>
<ul>
<li>Clay courts are the standard surface across Mallorca — adjust your game accordingly (higher bounce, slower pace)</li>
<li>Court hire typically costs 12-25 euros per hour depending on the club</li>
<li>Morning play is recommended during summer. Courts are exposed and temperatures can exceed 35C by midday</li>
<li>Most clubs welcome visitors — call ahead to check availability and booking requirements</li>
<li>Bring plenty of water and sun protection. Clay courts reflect heat and UV</li>
<li>Many clubs offer combined tennis and padel packages — worth exploring if you play both sports</li>
</ul>',
  NULL,
  'tennis-clubs',
  'Best Tennis Clubs in Calvia, Mallorca 2026 | Courts & Coaching | Calvia.app',
  'Find the best tennis clubs in Calvia, Mallorca. From Tennis Academy Mallorca to Sporting Club Bendinat — courts, coaching, and community for every level.',
  'https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Best Pilates & Yoga Studios in Calvia',
  'best-pilates-yoga-studios-calvia',
  'From private reformer sessions to beachside yoga — discover the best pilates and yoga studios across Calvia and southwest Mallorca.',
  '<p>Calvia''s wellness scene has grown rapidly over the past few years. What was once a handful of hotel-based classes has evolved into a thriving network of dedicated studios, boutique spaces, and outdoor sessions. Whether you''re looking for an intense reformer pilates workout, a restorative yoga class, or therapeutic movement integrated with physiotherapy, there''s something here for you.</p>

<h2>Reformer Pilates: The Premium Studios</h2>
<p><strong>Pure Pilates</strong> in Son Bugadelles is the go-to for serious reformer work. The studio offers private and small-group sessions on professional-grade equipment, with multilingual instructors who work in English, German, and Spanish. The emphasis is on precision and individual attention — popular with residents who want a focused, high-quality workout.</p>
<p><strong>Glow & Reform Wellness Studio</strong> in Son Caliu (near Palmanova) has quickly built a reputation for luxury reformer pilates at all levels. The studio is beautifully designed — the kind of space that motivates you to show up. Classes fill fast, so booking ahead is essential.</p>
<p><strong>Paola Joypilates</strong> operates in Calvia with a focus on machine-based pilates. Private sessions are the speciality, making it a favourite for clients who prefer discretion and a fully personalised programme.</p>

<h2>Yoga Studios & Holistic Spaces</h2>
<p><strong>Portals De Yoga</strong> in Portals Nous combines yoga and pilates in a beautiful setting with sea views. The class schedule covers everything from vinyasa flow to yin yoga, with pilates sessions woven in throughout the week. The atmosphere is calm and unpretentious.</p>
<p><strong>Nirodha</strong> in Palmanova takes a holistic approach, blending traditional yoga practices with pilates in an eco-friendly environment. Popular with visitors and residents alike, the studio has a loyal following among those who appreciate a more mindful approach to movement.</p>
<p><strong>Our Yoga Mind</strong> in Palmanova offers what they describe as transformational sessions — a mix of yoga and pilates designed for deeper mind-body connection. Small group sizes keep the experience personal.</p>

<h2>Therapeutic & Physio-Integrated Options</h2>
<p><strong>FisiosportMallorca</strong> in Calvia integrates pilates with physiotherapy, making it an excellent choice for injury recovery or chronic pain management. The clinical approach distinguishes it from purely fitness-oriented studios — sessions are tailored to individual health needs.</p>
<p><strong>Bodyworx Physiotherapy Pilates</strong> takes a similar approach, combining rehabilitation expertise with movement training. Ideal for anyone returning to exercise after injury or surgery.</p>
<p><strong>Pilates auf Mallorca</strong> in Paguera is considered one of the best mat and reformer studios in the southwest, with experienced instructors and a welcoming group class format.</p>

<h2>Outdoor & Hotel-Based Sessions</h2>
<p>Several venues offer yoga and pilates in stunning outdoor settings. <strong>T Golf Calvia</strong> hosts regular sessions on its grounds, combining movement with mountain views. <strong>Son Caliu Spa Oasis</strong> integrates pilates into its spa wellness programme — a serene environment for combining class work with relaxation treatments.</p>
<p><strong>Alua Wellness Pilates</strong> at the Alua Calvia in Magaluf offers hotel-based classes that are open to non-guests through wellness packages. A good option if you want the resort experience.</p>

<h2>Tips for Choosing a Studio</h2>
<ul>
<li>Reformer pilates typically costs 25-45 euros per session. Multi-class packs offer better value</li>
<li>Mat classes are more affordable (10-20 euros) and widely available</li>
<li>If you have injuries or specific health conditions, choose a physio-integrated studio over a general fitness one</li>
<li>Outdoor yoga sessions are typically offered spring through autumn — check seasonal schedules</li>
<li>Most studios offer a trial class at a reduced rate. Take advantage before committing to a package</li>
<li>Popular morning classes (especially 9-10am reformer slots) book out days in advance</li>
</ul>',
  NULL,
  'yoga-pilates',
  'Best Pilates & Yoga Studios in Calvia 2026 | Wellness Guide | Calvia.app',
  'Discover the best pilates and yoga studios in Calvia, Mallorca. From private reformer sessions to beachside yoga — your complete wellness guide for 2026.',
  'https://images.pexels.com/photos/4056723/pexels-photo-4056723.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Best Padel Courts & Clubs in Calvia',
  'best-padel-clubs-calvia',
  'Padel is booming in Mallorca. Here are the best courts, clubs, and venues across Calvia — from glass-walled showpieces to friendly community clubs.',
  '<p>Padel has exploded across Spain over the past decade, and Mallorca is no exception. The fast-paced, social, and addictively fun racquet sport has become the go-to activity for residents and visitors alike. Calvia, with its international community and strong sporting infrastructure, now hosts some of the best padel facilities on the island.</p>

<h2>The Top-Tier Venues</h2>
<p><strong>Bendinat Urban Country Club</strong> is the headline act. With 12 courts — including several built to World Padel Tour (WPT) specifications — this is the most serious padel facility in the Calvia area. The luxury surroundings, restaurant, and relaxation area make it a destination rather than just a place to play. Court quality is superb, and the club hosts regular tournaments and social events.</p>
<p><strong>Mallorca Country Club</strong> in Santa Ponsa features four striking glass-walled courts integrated into the broader sporting complex. The setting is premium, the courts are well-maintained, and the combined tennis-padel membership attracts a strong community of regular players.</p>
<p><strong>Costa Calvia Padel Club</strong> in Palmanova offers six courts alongside a restaurant and pool. The atmosphere here is lively and social — this is where many of the area''s padel leagues and weekend tournaments are organised. A great place to meet regular players and get into the local padel community.</p>

<h2>Multi-Sport Clubs with Strong Padel</h2>
<p><strong>Sporting Club Portals</strong> in Costa d''en Blanes combines four padel courts with tennis courts and sea views. The elevated position gives the courts an exceptional backdrop, and the club''s padel programme has grown significantly in recent years.</p>
<p><strong>Viding Illes Calvia</strong> operates eight outdoor courts as part of a comprehensive fitness facility. The advantage here is the combination of padel with gym, group fitness, and pool facilities — ideal if you want variety in your sporting routine.</p>
<p><strong>Pins Padel Club</strong> in Calvia is one of the largest dedicated padel venues in the area, with 16 courts and a swimming pool. The expat-friendly atmosphere and social programme make it particularly popular with international residents settling into the area.</p>

<h2>Smaller Clubs & Hidden Gems</h2>
<p><strong>Club de Padel Paguera</strong> is a local favourite in Peguera, hosting private events and regular social play. The community feel is genuine — less flashy than the bigger clubs but with a loyal player base and good court quality.</p>
<p><strong>Gimnas a Punt</strong> offers indoor padel in Calvia — one of the few venues with covered courts, making it a reliable option year-round regardless of weather.</p>
<p><strong>TC Calvia Beach</strong> combines beachside padel with tennis in a relaxed setting. Perfect for visitors who want to try the sport in a low-pressure environment.</p>

<h2>Getting Started with Padel</h2>
<p>Never played before? Padel is widely considered one of the easiest racquet sports to pick up. The court is smaller than tennis, the walls keep the ball in play, and the underarm serve removes one of tennis''s biggest barriers to entry. Most clubs offer beginner clinics and equipment rental.</p>

<h2>Practical Tips</h2>
<ul>
<li>Court hire typically costs 20-40 euros per hour for four players — excellent value per person</li>
<li>Most clubs rent racquets for 5-10 euros. Padel balls are provided or available cheaply</li>
<li>Peak times are weekday evenings (6-9pm) and weekend mornings. Book 2-3 days ahead</li>
<li>Wear proper court shoes — running shoes are not suitable for the artificial grass surface</li>
<li>Padel is best played as doubles. Many clubs organise "americano" tournaments to help singles find partners</li>
<li>Summer sessions are best played early morning or after 7pm to avoid the worst heat</li>
</ul>',
  NULL,
  'tennis-clubs',
  'Best Padel Courts & Clubs in Calvia 2026 | Complete Guide | Calvia.app',
  'Find the best padel courts and clubs in Calvia, Mallorca. From Bendinat Urban Country Club to Costa Calvia Padel — your guide to the island''s fastest-growing sport.',
  'https://images.pexels.com/photos/8224730/pexels-photo-8224730.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Buying Property in Calvia: A Complete Real Estate Guide',
  'real-estate-guide-calvia',
  'Everything you need to know about buying property in Calvia — from choosing the right area and agency to understanding the legal process as a foreign buyer.',
  '<p>Calvia is one of the most sought-after property markets in the Balearic Islands. The combination of a stunning coastline, excellent infrastructure, international community, and proximity to Palma makes it a magnet for buyers ranging from young families to high-net-worth investors. The market is mature, competitive, and — with the right guidance — navigable even for first-time foreign buyers.</p>

<h2>Choosing the Right Area</h2>
<p>Property in Calvia varies enormously depending on location. Understanding the distinct character of each area is the single most important step in your search:</p>
<ul>
<li><strong>Portals Nous & Bendinat</strong> — The prestige addresses. Expect luxury villas, designer apartments, and prices to match. Proximity to Puerto Portals marina, Ses Illetes beach, and Palma. Starting from around 800,000 euros for apartments; villas regularly exceed 3-5 million</li>
<li><strong>Santa Ponsa</strong> — The largest residential area and the most balanced market. Good mix of apartments, townhouses, and villas at a range of price points. Strong amenities, international schools, and a large expat community. Apartments from 300,000 euros; villas from 700,000+</li>
<li><strong>Palmanova & Son Caliu</strong> — Beachfront living with a mix of older apartments and newer developments. Popular with families for the flat terrain and beach access. Apartments from 250,000 euros</li>
<li><strong>Peguera</strong> — Quieter and greener, with a more traditional feel. Popular with German and Scandinavian buyers. Good value relative to the coast. Properties from 200,000 euros</li>
<li><strong>Calvia Vila & Es Capdella</strong> — Authentic Mallorcan village life in the hills. Lower prices and larger plots, but limited coastal access. Fincas and village houses from 350,000 euros</li>
</ul>

<h2>Working with an Agency</h2>
<p>Calvia has an established network of professional real estate agencies. The best ones provide genuine local expertise, multilingual service, and end-to-end support through the buying process:</p>
<p><strong>Casa Nova Properties</strong> in Santa Ponsa specialises in luxury villas and second homes for international buyers. Their multilingual team and deep knowledge of the high-end market make them a strong choice for premium purchases.</p>
<p><strong>Engel & Volkers</strong> brings global reach and a polished service. Their Calvia office handles everything from apartments to large estates, with particular strength in marketing properties to an international buyer pool.</p>
<p><strong>Porta Mallorquina Real Estate</strong> near Magaluf focuses on exclusive listings with an emphasis on privacy and discretion. Their portfolio tends toward the upper end of the market.</p>
<p><strong>Balearic Properties</strong> in Santa Ponsa offers high-end service with a personal touch — multilingual agents who take time to understand exactly what you''re looking for rather than pushing volume.</p>
<p>For buyers seeking a broader range, <strong>Yes! Mallorca Property</strong> maintains one of the largest listing databases in the region with over 900 properties, while <strong>MaksyHomes</strong> in Santa Ponsa is particularly helpful for absent owners needing ongoing property maintenance after purchase.</p>

<h2>The Buying Process</h2>
<p>Buying property in Spain as a foreigner is straightforward but involves several specific steps:</p>
<ul>
<li><strong>NIE number</strong> — You''ll need a Numero de Identidad de Extranjero (foreign identification number) before you can purchase. Your lawyer or gestor can arrange this</li>
<li><strong>Reservation agreement</strong> — A small deposit (typically 3,000-6,000 euros) holds the property while due diligence is completed</li>
<li><strong>Private purchase contract</strong> — Usually involves a 10% deposit. This is legally binding — pulling out means forfeiting the deposit</li>
<li><strong>Completion</strong> — Signing before a notary and registration at the Land Registry. Total buying costs (taxes, notary, registration, legal fees) add approximately 10-13% on top of the purchase price</li>
</ul>

<h2>Essential Tips for Buyers</h2>
<ul>
<li>Always use an independent lawyer — never rely solely on the agency''s recommended legal advice</li>
<li>Verify the property''s legal status, building licences, and any outstanding debts or charges</li>
<li>Factor in annual running costs: IBI property tax, community fees, insurance, and maintenance</li>
<li>If buying to rent, check current rental licence regulations — they are strictly enforced in the Balearics</li>
<li>The best negotiation periods are typically November through February when the market slows</li>
<li>Consider the Golden Visa programme if investing 500,000+ euros as a non-EU citizen</li>
</ul>',
  NULL,
  'real-estate',
  'Buying Property in Calvia, Mallorca 2026 | Real Estate Guide | Calvia.app',
  'Your complete guide to buying property in Calvia, Mallorca. Top real estate agencies, area-by-area prices, the buying process for foreigners, and expert tips for 2026.',
  'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
)
ON CONFLICT (slug) DO NOTHING;