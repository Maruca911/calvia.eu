/*
  # Seed Initial Guides - Batch 1 (5 guides)

  1. New Data
    - 5 comprehensive guide articles for Calvia.app
    - Guides cover: restaurants in Santa Ponsa, beach clubs, Magaluf nightlife, cafes, expat living
  2. Notes
    - All guides are published and linked to relevant area/category slugs
    - Content uses HTML formatting for the prose renderer
    - Images sourced from Pexels stock photography
*/

INSERT INTO guides (title, slug, description, content, area_slug, category_slug, meta_title, meta_description, image_url, published)
VALUES
(
  'Best Restaurants in Santa Ponsa: A Local''s Guide',
  'best-restaurants-santa-ponsa',
  'Discover the top-rated restaurants in Santa Ponsa, from beachfront seafood to authentic Mallorcan cuisine. Updated for 2026.',
  '<p>Santa Ponsa has quietly become one of Mallorca''s most exciting dining destinations. Whether you''re craving fresh-off-the-boat seafood, traditional Mallorcan dishes, or contemporary Mediterranean fusion, this charming coastal town delivers.</p>

<h2>Beachfront Dining</h2>
<p>The Santa Ponsa beachfront strip offers several excellent choices. <strong>Meson Ca''n Torrat</strong> remains the undisputed king of grilled meats, with their wood-fired parrilla turning out perfectly charred cuts since 1978. Arrive early on weekends — tables fill up fast by 8pm.</p>
<p>For seafood lovers, the waterfront restaurants near the marina serve the day''s catch with minimal fuss and maximum flavour. Look for the daily specials boards — that''s where the real finds are.</p>

<h2>Fine Dining & Special Occasions</h2>
<p><strong>Le Gourmand</strong> brings a touch of French elegance to Santa Ponsa''s dining scene. Their tasting menu changes seasonally and showcases the best of Balearic produce with Gallic technique. Reservations are essential, particularly during summer months.</p>

<h2>Casual & Family-Friendly</h2>
<p>Santa Ponsa excels at relaxed, family-friendly dining. <strong>Waina Tavern</strong> offers generous portions of Mediterranean comfort food in a welcoming atmosphere. Their terrace is perfect for long summer evenings.</p>
<p>For something different, explore the side streets behind the main boulevard. Several smaller restaurants serve authentic Mallorcan cuisine at prices well below the tourist strip.</p>

<h2>Tips for Dining in Santa Ponsa</h2>
<ul>
<li>Most restaurants open for dinner service around 7pm — earlier than mainland Spain but later than Northern European norms</li>
<li>The "menu del dia" (daily set menu) at lunchtime offers exceptional value, typically between 12-18 euros for three courses</li>
<li>Many restaurants close between November and March. Check ahead during winter months</li>
<li>Booking ahead is strongly recommended from June through September</li>
</ul>',
  'santa-ponca',
  'restaurants',
  'Best Restaurants in Santa Ponsa 2026 | Where to Eat | Calvia.app',
  'Discover the best restaurants in Santa Ponsa, Mallorca. From beachfront seafood to fine dining — a local''s guide to where to eat in Santa Ponsa, updated for 2026.',
  'https://images.pexels.com/photos/67468/pexels-photo-67468.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Best Beach Clubs in Calvia & Southwest Mallorca',
  'best-beach-clubs-calvia',
  'Your guide to the finest beach clubs in the Calvia municipality — from the legendary Nikki Beach to hidden gems along the coast.',
  '<p>Calvia''s coastline hosts some of the most sought-after beach clubs in the Mediterranean. From the glamorous shores of Portals Nous to the laid-back coves of Palmanova, there''s a beach club for every mood and budget.</p>

<h2>The Luxury Tier</h2>
<p><strong>Nikki Beach Mallorca</strong> in Magaluf needs little introduction. This global brand delivers its signature mix of music, cocktails, and poolside luxury. Sunday brunch is the highlight of the week — expect DJs, champagne, and a crowd dressed to impress. Day beds start from around 150 euros and should be reserved in advance during peak season.</p>
<p><strong>Purobeach Illetas</strong> at Ses Illetes offers a more refined atmosphere. Perched above the turquoise waters, the infinity pool and terrace provide some of the best sunset views on the island. Their cocktail list is inventive and their sushi surprisingly good.</p>

<h2>The Mid-Range Sweet Spot</h2>
<p><strong>Beso Beach Palmanova</strong> strikes the perfect balance between atmosphere and accessibility. The Balearic-inspired menu is excellent, the music tasteful, and the beachfront location hard to beat. It''s become the go-to for visitors who want the beach club experience without the VIP price tag.</p>
<p><strong>Gran Folies Beach Club</strong> in Portals Vells occupies one of the most beautiful settings on the island — a hidden cove accessible by a winding road through pine forests. The natural surroundings make it feel exclusive without the pretension.</p>

<h2>The Relaxed Options</h2>
<p><strong>Virtual Beach Club</strong> in Portals Nous serves a loyal local crowd with reliable food, cold drinks, and a genuinely relaxed vibe. No posing required. For families, <strong>Zhero Beach Club Palma</strong> offers a sophisticated but welcoming atmosphere.</p>

<h2>What to Know Before You Go</h2>
<ul>
<li>Most beach clubs operate from May through October. A few stay open year-round with reduced hours</li>
<li>Day bed and sunbed reservations are strongly recommended from June to September</li>
<li>Dress codes vary — Nikki Beach and Purobeach expect smart casual; others are more relaxed</li>
<li>Many beach clubs host themed events and DJ sessions on weekends</li>
<li>Minimum spend requirements may apply for premium seating areas</li>
</ul>',
  NULL,
  'beach-clubs',
  'Best Beach Clubs in Calvia, Mallorca 2026 | Complete Guide | Calvia.app',
  'Discover the best beach clubs in Calvia and southwest Mallorca. From Nikki Beach to Purobeach — your complete guide to beach club culture on the island.',
  'https://images.pexels.com/photos/1174732/pexels-photo-1174732.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Magaluf Nightlife Guide: Beyond the Strip',
  'nightlife-guide-magaluf',
  'Magaluf''s nightlife scene has evolved far beyond its party reputation. Discover rooftop bars, cocktail lounges, and the best clubs in 2026.',
  '<p>Magaluf has undergone a remarkable transformation. While the famous Punta Ballena strip still draws party-goers from across Europe, the area now offers a much broader nightlife landscape — from sophisticated cocktail bars to world-class club nights.</p>

<h2>The New Magaluf: Cocktail Bars & Lounges</h2>
<p>The gentrification of parts of Magaluf has brought a wave of quality cocktail bars. <strong>Iroko Mallorca</strong> leads the charge with its afro-fusion concept — inventive cocktails, live music, and a vibe that feels more Ibiza than the Magaluf of old.</p>
<p>Several new rooftop bars have opened in recent years, offering panoramic views of the bay. These venues attract a more mature crowd and serve as perfect pre-dinner or sunset spots.</p>

<h2>The Club Scene</h2>
<p><strong>BCM</strong> remains one of Europe''s biggest and most famous nightclubs, hosting international DJs throughout summer. The production values are high — expect world-class sound systems, elaborate lighting, and headline acts.</p>
<p>For something more intimate, several smaller venues along the seafront promenade host themed nights ranging from house and techno to reggaeton and commercial pop.</p>

<h2>The Classic Strip</h2>
<p>Punta Ballena is still the heart of Magaluf''s traditional nightlife scene. <strong>Banana Joe''s</strong>, <strong>Linekers Bar</strong>, and <strong>Boomerang</strong> continue to serve the crowds looking for a classic night out. The atmosphere is electric during peak summer, with bar crawls and themed events every night.</p>

<h2>Live Music & Entertainment</h2>
<p>Several venues around Magaluf host live bands, tribute acts, and comedy nights. These are particularly popular with British and Irish visitors and offer an alternative to the club scene.</p>

<h2>Practical Tips</h2>
<ul>
<li>Peak season runs from June through September. Many venues close or reduce hours outside these months</li>
<li>Pre-drinking is common but drink responsibly — local police maintain a visible presence</li>
<li>Taxis back to other areas of Calvia are readily available. Agree on a fare before getting in</li>
<li>The party typically starts late — most clubs don''t fill up until midnight or later</li>
<li>Many bars offer free entry before certain times or with advance booking</li>
</ul>',
  'magaluf',
  'bars-nightlife',
  'Magaluf Nightlife Guide 2026 | Best Bars & Clubs | Calvia.app',
  'The complete guide to Magaluf nightlife in 2026. From cocktail lounges and rooftop bars to BCM and the Punta Ballena strip — everything you need to know.',
  'https://images.pexels.com/photos/2114365/pexels-photo-2114365.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Best Cafes & Coffee Shops in Calvia',
  'best-cafes-calvia',
  'From specialty roasters to charming terrace cafes — where to find the best coffee across the Calvia municipality.',
  '<p>Calvia''s coffee scene has matured considerably. Gone are the days when your only option was a watery cafe con leche at a tourist bar. Today, specialty coffee shops sit alongside traditional Mallorcan cafes, offering everything from single-origin pour-overs to perfectly pulled espressos.</p>

<h2>Specialty Coffee</h2>
<p><strong>The Coffee Lab</strong> in Palmanova leads the specialty coffee movement in Calvia. Their rotating selection of single-origin beans, expert baristas, and minimalist Scandinavian-inspired interior make it a destination for coffee enthusiasts. Try their flat white — arguably the best in southwest Mallorca.</p>
<p><strong>Beans & Blends</strong> in Santa Ponsa takes a slightly different approach, combining specialty coffee with an all-day brunch menu. Their avocado toast and cold brew combo has become something of a local institution.</p>

<h2>Classic Mediterranean Cafes</h2>
<p>The <strong>Cappuccino</strong> chain, with its location in Portals Nous, defined the upscale cafe experience in Mallorca long before the specialty coffee wave arrived. The setting remains beautiful — think wicker chairs, white tablecloths, and people-watching opportunities.</p>
<p>In Calvia Vila, several traditional cafes around the town square serve strong, no-frills coffee alongside freshly baked ensaimadas. This is where locals start their mornings.</p>

<h2>Brunch Spots</h2>
<p>The brunch culture has exploded across Calvia. <strong>Mood Beach Cafe</strong> in Palmanova and <strong>The Daily Grind</strong> in Santa Ponsa both serve excellent weekend brunches. Expect queues during peak hours — these places are popular with residents and tourists alike.</p>

<h2>Hidden Gems</h2>
<p>Some of the best coffee in Calvia comes from unexpected places. Several hotel lobbies — particularly in the Portals Nous and Bendinat area — serve excellent coffee in beautiful surroundings. <strong>Galatea Cafe</strong> in Peguera is another under-the-radar find, combining good coffee with a quiet, local atmosphere.</p>

<h2>Coffee Culture Tips</h2>
<ul>
<li>"Cafe con leche" is the standard order — strong espresso with hot milk</li>
<li>"Cortado" is a smaller, stronger option with a splash of milk</li>
<li>Most cafes are open by 8am. Traditional Spanish cafes may take a siesta break between 2-5pm</li>
<li>Tipping for coffee is not expected, though rounding up is appreciated</li>
</ul>',
  NULL,
  'cafes-coffee-shops',
  'Best Cafes & Coffee Shops in Calvia 2026 | Calvia.app',
  'Find the best cafes and coffee shops across Calvia, Mallorca. From specialty roasters to charming terraces — your guide to coffee culture in southwest Mallorca.',
  'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Living in Calvia: The Expat''s Complete Guide',
  'living-in-calvia-expat-guide',
  'Everything you need to know about moving to and living in Calvia, Mallorca — from residency and healthcare to schools and social life.',
  '<p>Calvia attracts more foreign residents than almost any other municipality in the Balearic Islands. With a population of around 54,000 — roughly 37-40% of whom are foreign-born — it''s one of the most internationally diverse communities in Spain. Here''s what you need to know about making it home.</p>

<h2>Why Calvia?</h2>
<p>The appeal is straightforward: excellent climate (300+ sunny days per year), beautiful coastline, strong infrastructure, good healthcare, international schools, and a well-established expat community. It''s close enough to Palma for city amenities but far enough to feel like a distinct, quieter place.</p>

<h2>Where to Live</h2>
<p>Each area of Calvia has a distinct character:</p>
<ul>
<li><strong>Santa Ponsa</strong> — The largest residential area. Popular with British and German families. Good schools, supermarkets, and amenities. Moderate prices by Calvia standards</li>
<li><strong>Portals Nous & Bendinat</strong> — The premium addresses. Upscale villas, boutique shopping at Puerto Portals, and proximity to Palma. Higher price bracket</li>
<li><strong>Palmanova & Magaluf</strong> — More affordable options with excellent beach access. The area around Son Caliu and Old Town Palmanova is particularly family-friendly</li>
<li><strong>Peguera</strong> — Quieter, greener, and slightly more traditional. Popular with German and Scandinavian residents</li>
<li><strong>Calvia Vila</strong> — The administrative centre in the hills. Authentic Mallorcan village atmosphere at lower prices, but limited coastal access</li>
</ul>

<h2>Practical Essentials</h2>
<h3>Residency</h3>
<p>EU citizens can register as residents relatively simply. Non-EU citizens will need a visa — the most common routes are the non-lucrative residence visa or the digital nomad visa (introduced in 2023). A good gestor (administrative consultant) is worth their weight in gold for navigating Spanish bureaucracy.</p>

<h3>Healthcare</h3>
<p>Public healthcare via the Spanish social security system is available to registered residents. Several private health clinics in Calvia offer English-speaking doctors. The Hospital de Son Espases in Palma is the main public hospital for the region.</p>

<h3>Schools</h3>
<p>Calvia has both Spanish public schools and several international schools. The <strong>Calvia International School</strong> follows the British curriculum, while others offer German and Scandinavian programmes. Places at popular international schools fill up quickly — apply well in advance.</p>

<h3>Transport</h3>
<p>A car is strongly recommended. Public transport exists (bus routes connect main towns) but is limited, especially outside summer. The TIB bus service runs regular routes between Calvia towns and Palma.</p>

<h2>Cost of Living</h2>
<p>Calvia is not the cheapest part of Mallorca, but it offers good value compared to other premium Mediterranean locations. Expect to pay:</p>
<ul>
<li>Rental apartment (2-bed): 1,200-2,500 euros/month depending on area and proximity to the sea</li>
<li>Restaurant meal for two: 40-80 euros at mid-range restaurants</li>
<li>Supermarket shopping: Comparable to UK/Germany prices. Lidl, Mercadona, and Eroski are the main chains</li>
<li>Utilities: 100-200 euros/month for a typical apartment</li>
</ul>

<h2>Social Life</h2>
<p>The expat community is active and welcoming. Several Facebook groups, local meetups, and social clubs help newcomers settle in. Sports clubs (particularly tennis, golf, padel, and cycling) are excellent for meeting people. Many businesses in Calvia operate in English, German, and Spanish.</p>',
  'calvia-vila',
  NULL,
  'Living in Calvia, Mallorca | Expat Guide 2026 | Calvia.app',
  'The complete expat guide to living in Calvia, Mallorca. Residency, healthcare, schools, cost of living, and social life — everything you need to know about moving to Calvia.',
  'https://images.pexels.com/photos/3225531/pexels-photo-3225531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
)
ON CONFLICT (slug) DO NOTHING;
