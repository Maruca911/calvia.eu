/*
  # Seed Initial Guides - Batch 2 (5 more guides)

  1. New Data
    - 5 more comprehensive guide articles for Calvia.app
    - Guides cover: best beaches, hotels in Portals Nous, restaurants in Palmanova, water sports, family activities
  2. Notes
    - All guides are published and linked to relevant area/category slugs
    - Content uses HTML formatting for the prose renderer
    - Images sourced from Pexels stock photography
*/

INSERT INTO guides (title, slug, description, content, area_slug, category_slug, meta_title, meta_description, image_url, published)
VALUES
(
  'Best Beaches in Calvia: From Secret Coves to Sandy Shores',
  'best-beaches-calvia',
  'Calvia boasts over 30 beaches along its stunning coastline. From the famous white sands of Ses Illetes to hidden coves in Portals Vells — here are the best.',
  '<p>With over 50 kilometres of coastline, the municipality of Calvia is home to some of Mallorca''s most beautiful beaches. From broad sandy bays perfect for families to secluded rocky coves reached only by boat or footpath, there''s a beach for every preference.</p>

<h2>The Famous Ones</h2>
<p><strong>Playa de Ses Illetes</strong> consistently ranks among the best beaches in Spain. The crystal-clear turquoise water and fine white sand could pass for the Caribbean. It''s sheltered, shallow, and perfect for families. Parking fills up early in summer — arrive before 10am or take the bus.</p>
<p><strong>Playa de Palmanova</strong> is the archetypal Mediterranean beach — a long, gently curving bay with calm water, beach bars, and a promenade lined with restaurants. Three connected beaches (Son Matias, Palmanova, and Torrenova) offer plenty of space even in peak season.</p>
<p><strong>Playa de Santa Ponsa</strong> is one of the largest beaches in Calvia, with over 500 metres of fine sand. The bay is well-protected from winds, making the water reliably calm. The surrounding area has the best amenity access of any beach in the municipality.</p>

<h2>The Hidden Gems</h2>
<p><strong>Portals Vells</strong> is actually three small beaches tucked into a pine-forested cove at the end of a winding road. The main beach has a beach bar and restaurant; the two smaller coves to the left require a short walk through the trees. The snorkelling here is excellent.</p>
<p><strong>Cala Vinyes</strong> is a small, sheltered bay south of Magaluf that feels a world away from the busier beaches. Popular with locals, it has a laid-back atmosphere, clear water, and a couple of simple beach restaurants.</p>
<p><strong>El Mago</strong>, near Portals Vells, is known for its striking turquoise water against dramatic cliff formations. It''s clothing-optional and quite small, but the natural beauty is remarkable.</p>

<h2>Best for Families</h2>
<p>Palmanova, Son Caliu, and Santa Ponsa are the top choices for families. All three have shallow, calm water, lifeguards during summer, nearby amenities, and easy parking. Ses Illetes is also excellent but can be crowded.</p>

<h2>Best for Watersports</h2>
<p>Magaluf beach and Santa Ponsa both have water sports operators offering jet skis, parasailing, paddle boards, and kayak hire. Peguera''s beaches are popular with diving schools due to the interesting underwater rock formations.</p>

<h2>Beach Tips</h2>
<ul>
<li>Sunbed and umbrella rental typically costs 8-15 euros each per day</li>
<li>All beaches in Mallorca are public — you can always lay your own towel for free</li>
<li>Jellyfish are occasionally present in summer. Check local advisories</li>
<li>Blue Flag beaches (those meeting high environmental standards) include Palmanova, Santa Ponsa, Magaluf, and Ses Illetes</li>
<li>Evening beach walks are a local tradition — the golden hour light along Calvia''s coast is spectacular</li>
</ul>',
  NULL,
  NULL,
  'Best Beaches in Calvia, Mallorca 2026 | Beach Guide | Calvia.app',
  'Discover the best beaches in Calvia, Mallorca — from the famous Ses Illetes to hidden coves in Portals Vells. Complete beach guide with tips and recommendations.',
  'https://images.pexels.com/photos/1032650/pexels-photo-1032650.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Best Hotels in Portals Nous & Bendinat',
  'best-hotels-portals-nous-bendinat',
  'Where to stay in Calvia''s most exclusive neighbourhood. From five-star luxury to boutique gems in Portals Nous and Bendinat.',
  '<p>Portals Nous and Bendinat form the luxury corridor of Calvia''s coast. Nestled between the glamorous marina of Puerto Portals and the pristine shores of Ses Illetes, this area hosts some of Mallorca''s most prestigious hotels.</p>

<h2>Five-Star Luxury</h2>
<p><strong>Gran Melia de Mar</strong> in Ses Illetes is the crown jewel. This adults-only retreat combines a stunning beachfront position with world-class service. The spa, the infinity pool overlooking the Mediterranean, and the gastronomic restaurant make it a destination in itself. Expect to pay premium rates, especially during summer.</p>
<p><strong>Portals Hills Boutique Hotel</strong> takes a different approach — a stylish hillside retreat with a rooftop pool, modern design, and panoramic views of Puerto Portals marina. It''s sophisticated without being stuffy, attracting a design-conscious clientele.</p>

<h2>Boutique & Design Hotels</h2>
<p><strong>Kimpton Aysla Mallorca</strong> in Portals Nous brought fresh energy to the area''s hotel scene. The design is contemporary Balearic — all natural materials, clean lines, and earthy tones. The restaurant and rooftop bar are popular with non-guests too, which gives the hotel a lively social atmosphere.</p>
<p><strong>Hotel Bendinat</strong> is an elegant option with a more traditional feel. Set in manicured gardens, it offers a peaceful retreat just minutes from the beach. The Sunday lunch on the terrace is a local favourite.</p>

<h2>What Makes This Area Special</h2>
<ul>
<li><strong>Puerto Portals</strong> — One of the most glamorous marinas in the Mediterranean, with designer shops, top restaurants, and superyacht spotting</li>
<li><strong>Beach access</strong> — Ses Illetes and the beaches around Portals Nous are among the best on the island</li>
<li><strong>Proximity to Palma</strong> — Just 15 minutes by car to the city centre, airport, and Old Town</li>
<li><strong>Golf</strong> — Several championship courses within a short drive, including Real Golf de Bendinat</li>
</ul>

<h2>Booking Tips</h2>
<ul>
<li>Book early for summer stays — these hotels fill up months in advance</li>
<li>Shoulder season (May-June, September-October) offers the best balance of weather, availability, and value</li>
<li>Many hotels offer spa packages and half-board options that provide better value than room-only rates</li>
<li>Ask about airport transfers — most luxury hotels include or can arrange private transfers</li>
</ul>',
  'portals-nous',
  'hotels-accommodation',
  'Best Hotels in Portals Nous & Bendinat 2026 | Luxury Stays | Calvia.app',
  'Discover the best hotels in Portals Nous and Bendinat, Mallorca. From Gran Melia de Mar to boutique gems — your guide to luxury accommodation in Calvia.',
  'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Best Restaurants in Palmanova: Where the Locals Eat',
  'best-restaurants-palmanova',
  'Palmanova''s restaurant scene goes far beyond the tourist strip. Discover where locals eat — from hidden tapas bars to waterfront fine dining.',
  '<p>Palmanova often gets overlooked in favour of flashier neighbours, but this beachfront town has quietly built one of the most reliable restaurant scenes in Calvia. The key is knowing where to look beyond the main promenade.</p>

<h2>Waterfront Dining</h2>
<p>The Palmanova promenade offers several solid beachfront restaurants. <strong>Beso Beach</strong> stands out as the premium option — part beach club, part restaurant, with a menu that takes Mediterranean seafood seriously. The paella is excellent, and the sunset views from the terrace are worth the visit alone.</p>
<p>Along the Son Matias end of the beach, smaller chiringuitos (beach bars) serve simple but satisfying grilled fish, patatas bravas, and cold beer. No frills, just honest food in a beautiful setting.</p>

<h2>Off the Beaten Path</h2>
<p>Some of Palmanova''s best restaurants are tucked away in residential streets. <strong>Il Tano</strong> is the kind of authentic Italian restaurant that could hold its own in Naples — handmade pasta, proper Neapolitan pizza, and a passionate owner who treats every table like family.</p>
<p>Several smaller tapas bars in the old town area serve inventive pinchos and local wines at very reasonable prices. These are the places where off-duty hospitality workers eat — always a reliable indicator.</p>

<h2>International Flavours</h2>
<p>Palmanova''s international population is reflected in its dining options. You''ll find credible Thai, Indian, and Japanese restaurants alongside the Mediterranean staples. The quality has improved markedly in recent years as competition has increased.</p>

<h2>Dining Tips for Palmanova</h2>
<ul>
<li>The restaurants on the quieter Son Matias side of the beach tend to offer better value than those near the main square</li>
<li>Thursday and Saturday evenings are the busiest — book ahead during summer</li>
<li>Many restaurants offer English, German, and Spanish menus. Don''t be afraid to ask for recommendations</li>
<li>The side streets between Palmanova and Torrenova hide some real gems</li>
</ul>',
  'palmanova',
  'restaurants',
  'Best Restaurants in Palmanova 2026 | Local''s Guide | Calvia.app',
  'Where to eat in Palmanova, Mallorca. Discover the best restaurants — from beachfront seafood to hidden tapas bars. A local''s guide updated for 2026.',
  'https://images.pexels.com/photos/1395967/pexels-photo-1395967.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Water Sports & Diving in Calvia: Your Complete Guide',
  'water-sports-diving-calvia',
  'From scuba diving and snorkelling to jet skiing and paddleboarding — everything you need to know about water sports along Calvia''s coast.',
  '<p>Calvia''s 50-kilometre coastline offers some of the best conditions for water sports in the western Mediterranean. Warm, clear water from May through October, varied coastline with both sandy beaches and rocky coves, and a well-developed infrastructure of schools and rental operators make it accessible to everyone from beginners to experienced practitioners.</p>

<h2>Scuba Diving & Snorkelling</h2>
<p>The underwater landscape around Calvia is surprisingly rich. Rocky reefs, sea grass meadows (posidonia), and several small underwater caves create diverse habitats. Popular dive sites include:</p>
<ul>
<li><strong>El Toro Marine Reserve</strong> — Protected waters off the island of El Toro offer some of the best diving in the Balearics. Expect to see grouper, barracuda, octopus, and colourful reef fish</li>
<li><strong>Portals Vells caves</strong> — Shallow caves accessible to intermediate divers, with atmospheric light effects</li>
<li><strong>Ses Illetes reef</strong> — Excellent snorkelling directly from the beach, with posidonia meadows visible in just 2-3 metres of water</li>
</ul>
<p>Several PADI-certified dive centres operate from Santa Ponsa, Magaluf, and Peguera, offering courses from beginner discovery dives to advanced certifications.</p>

<h2>Paddleboarding & Kayaking</h2>
<p>Stand-up paddleboarding (SUP) has become enormously popular along the Calvia coast. Calm morning conditions on most beaches make it ideal, and rental is widely available. Guided SUP tours along the coastline — particularly the route from Palmanova to Portals Vells — offer a unique perspective on the cliffs and coves.</p>
<p>Kayak rental is available at most major beaches. The coastline between Peguera and Cala Fornells is particularly scenic for kayaking.</p>

<h2>Sailing & Boat Rental</h2>
<p>Port Adriano and Puerto Portals serve as the main sailing hubs. Charter boats range from small motorboats (no licence required under 15hp) to luxury catamarans with skipper. Sunset sailing trips around the bay are a highlight of any visit.</p>

<h2>Jet Skis & Motor Water Sports</h2>
<p>Jet ski rental is available from Magaluf and Santa Ponsa beaches. Parasailing and banana boat rides operate during summer months. All operators must be licensed — check for proper certification before booking.</p>

<h2>Practical Information</h2>
<ul>
<li>Water temperature ranges from 15C in February to 27C in August</li>
<li>Best visibility for diving: May-June and September-October</li>
<li>Wind conditions: mornings are typically calmest for paddleboarding and kayaking</li>
<li>Most water sports operators are open May through October only</li>
<li>Book popular activities (diving trips, boat charters) at least 2-3 days in advance during summer</li>
</ul>',
  NULL,
  'water-sports-diving',
  'Water Sports & Diving in Calvia 2026 | Activities Guide | Calvia.app',
  'Your complete guide to water sports in Calvia, Mallorca. Scuba diving, paddleboarding, sailing, jet skis and more along 50km of stunning coastline.',
  'https://images.pexels.com/photos/1533720/pexels-photo-1533720.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
),
(
  'Family-Friendly Activities in Calvia: A Parent''s Guide',
  'family-activities-calvia',
  'The best things to do with kids in Calvia, from beaches and water parks to cycling routes and nature walks.',
  '<p>Calvia is one of the most family-friendly municipalities in Mallorca. The combination of safe beaches, good infrastructure, international schools, and a wide range of activities makes it an excellent base for families — whether visiting for a week or living here year-round.</p>

<h2>Beach Days</h2>
<p>For families with young children, the beaches at <strong>Palmanova</strong>, <strong>Son Caliu</strong>, and <strong>Santa Ponsa</strong> are ideal. All three have shallow, calm water, lifeguards during summer, easy access, and nearby facilities including toilets, changing rooms, and restaurants.</p>
<p>Ses Illetes is stunning but can be crowded and parking is limited. For a quieter alternative with small children, try Son Caliu — a genuine hidden gem with a small playground right next to the beach.</p>

<h2>Water Parks & Outdoor Fun</h2>
<p>The <strong>Western Water Park</strong> in Magaluf is a full day out for the family. Multiple pools, slides for all ages, and shows keep children entertained. During peak summer, arrive at opening time to secure sunbeds and avoid the longest queues.</p>
<p>For older children and teenagers, the adventure activities available along the coast — kayaking, paddleboarding, snorkelling trips — provide memorable experiences.</p>

<h2>Nature & Outdoors</h2>
<p>The <strong>Galatzo Nature Reserve</strong> near Es Capdella offers hiking trails, natural pools, and outdoor activities in a beautiful mountain setting. It''s an excellent half-day trip, particularly welcome as a break from the beach.</p>
<p>The coastal path between Santa Ponsa and Peguera provides manageable walking for families, with stunning views and opportunities to spot wildlife. Several sections are suitable for mountain biking too.</p>
<p>Cycling is increasingly popular in Calvia. The municipality has invested heavily in cycle paths, and several bike rental shops in Palmanova and Santa Ponsa offer children''s bikes, child seats, and trailers.</p>

<h2>Rainy Day Options</h2>
<p>When the weather doesn''t cooperate (rare but it happens), options include:</p>
<ul>
<li>Palma Aquarium — a 20-minute drive, with an impressive shark tank and interactive exhibits</li>
<li>Bowling alleys and indoor play centres in the Magaluf area</li>
<li>The CineCiutat cinema in Palma shows films in original language (English)</li>
<li>Cooking classes — several restaurants in the area offer family-friendly Mallorcan cooking experiences</li>
</ul>

<h2>Practical Tips for Families</h2>
<ul>
<li>Sun protection is essential — Mallorca sun is strong even on overcast days. Bring UPF swimwear for younger children</li>
<li>Most restaurants welcome children and many offer dedicated kids'' menus</li>
<li>Spanish mealtimes are later than Northern European norms. Dinner service starts around 7pm; many families eat at 8-9pm</li>
<li>Pharmacies are well-stocked and staff usually speak English. Look for the green cross sign</li>
<li>Many supermarkets stock international brands of baby food, nappies, and other essentials</li>
</ul>',
  NULL,
  NULL,
  'Family Activities in Calvia, Mallorca 2026 | Things to Do with Kids | Calvia.app',
  'Discover the best family-friendly activities in Calvia, Mallorca. Beaches, water parks, nature walks, and rainy day ideas — the complete parent''s guide.',
  'https://images.pexels.com/photos/1231365/pexels-photo-1231365.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  true
)
ON CONFLICT (slug) DO NOTHING;
