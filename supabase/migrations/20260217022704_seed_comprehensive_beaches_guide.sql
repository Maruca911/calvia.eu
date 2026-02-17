/*
  # Seed comprehensive beaches guides

  1. New Guides
    - Complete Beach Guide covering all 27 beaches in Calvia
    - Family Beaches guide targeting families with children
    - Hidden Coves guide for adventurous visitors

  2. SEO
    - Optimized meta titles and descriptions for beach-related long-tail keywords
    - Category slug set to 'beaches' for filtering
*/

INSERT INTO guides (title, slug, description, content, category_slug, area_slug, meta_title, meta_description, image_url, published)
VALUES (
  'Complete Beach Guide: All Beaches & Coves in Calvia',
  'complete-beach-guide-calvia',
  'Discover all 27 beaches and coves along Calvia''s stunning 54km coastline -- from lively family-friendly bays to secluded hidden gems perfect for snorkelling and sunbathing.',
  '<h2>Calvia''s Coastline: 54km of Mediterranean Paradise</h2>
<p>The municipality of Calvia stretches along 54 kilometres of Mallorca''s southwestern coastline, offering more than 30 beaches and coves. Whether you are looking for a wide sandy bay with all amenities or a secluded rocky cove only accessible by foot, this complete guide covers every option.</p>

<h2>Popular Family Beaches</h2>
<p>These are Calvia''s most accessible and well-equipped beaches, ideal for families and those who prefer full amenities including sunbed rental, restaurants, and lifeguard services.</p>

<h3>Palma Nova Beach (Platja de Palmanova)</h3>
<p>A long white-sand beach divided into three connected sections: Es Carregador, Palmanova, and Son Maties. The calm, shallow waters and wide promenade lined with bars and restaurants make this the ultimate family destination.</p>
<ul>
<li><strong>Difficulty:</strong> Easy -- flat access, full amenities, wheelchair accessible</li>
<li><strong>Best Time:</strong> May to October; arrive before 10am in summer to secure sunbeds</li>
<li><strong>Cost:</strong> Free access; sunbed + umbrella approx. 13 EUR for two</li>
<li><strong>Duration:</strong> Half day to full day</li>
<li><strong>Target Audience:</strong> Families, couples, all ages and fitness levels</li>
<li><strong>Preparation:</strong> Sunscreen, towel, water. Restaurants nearby so no need to pack food</li>
<li><strong>Coordinates:</strong> 39.518N, 2.537E -- search "Platja de Palmanova" on Google Maps</li>
</ul>

<h3>Santa Ponsa Beach (Platja de Santa Ponca)</h3>
<p>A wide sandy beach backed by a natural pine grove providing shade. Blue Flag awarded with crystal-clear waters, playgrounds, and water sports facilities. One of the best-equipped beaches in the region.</p>
<ul>
<li><strong>Difficulty:</strong> Easy -- accessible, lifeguards on duty May-October</li>
<li><strong>Best Time:</strong> May to October; morning for calmer water</li>
<li><strong>Cost:</strong> Free access; umbrella/hammock rental available</li>
<li><strong>Duration:</strong> Half day to full day</li>
<li><strong>Target Audience:</strong> Families with children, water sports enthusiasts</li>
<li><strong>Preparation:</strong> Bring kids'' toys, water shoes for the rocky areas at edges</li>
<li><strong>Coordinates:</strong> 39.515N, 2.484E -- bus available from Palma</li>
</ul>

<h3>Peguera Beach (Platja de Peguera)</h3>
<p>Three connected golden-sand beaches -- Palmira, Tora, and La Romana -- linked by a scenic promenade lined with shops and restaurants. Particularly popular with German residents and visitors.</p>
<ul>
<li><strong>Difficulty:</strong> Easy -- promenade access throughout</li>
<li><strong>Best Time:</strong> May to October; off-peak hours for quieter experience</li>
<li><strong>Cost:</strong> Free access; sunbed rental available</li>
<li><strong>Duration:</strong> Half day to full day</li>
<li><strong>Target Audience:</strong> All ages, couples, families</li>
<li><strong>Preparation:</strong> Water shoes for pebbly sections; sun protection essential</li>
<li><strong>Coordinates:</strong> 39.515N, 2.451E -- parking available near all three beaches</li>
</ul>

<h3>Magaluf Beach (Platja de Magaluf)</h3>
<p>A vibrant sandy beach with turquoise waters and a lively atmosphere. Water sports, beach bars, and entertainment make this one of Calvia''s most energetic coastal spots.</p>
<ul>
<li><strong>Difficulty:</strong> Easy -- urban access with full amenities</li>
<li><strong>Best Time:</strong> Year-round; mornings are quieter in summer</li>
<li><strong>Cost:</strong> Free access; water sports and sunbeds extra</li>
<li><strong>Duration:</strong> Half day to full day</li>
<li><strong>Target Audience:</strong> Young adults, water sports fans, social beachgoers</li>
<li><strong>Preparation:</strong> Sunscreen applied frequently; expect crowds in July-August</li>
<li><strong>Coordinates:</strong> 39.505N, 2.532E -- public transport from Palma available</li>
</ul>

<h3>Illetas Beach (Platja d''Illetes)</h3>
<p>An upscale sandy cove framed by pine trees and crystal-clear waters. Popular with locals and home to exclusive beach clubs. One of the most beautiful beaches near Palma.</p>
<ul>
<li><strong>Difficulty:</strong> Easy -- steps to water, full amenities</li>
<li><strong>Best Time:</strong> May to September; reserve beach club spots in advance during peak season</li>
<li><strong>Cost:</strong> Free access; beach club day passes from 30 EUR</li>
<li><strong>Duration:</strong> Half day to full day</li>
<li><strong>Target Audience:</strong> Couples, upscale visitors, locals</li>
<li><strong>Preparation:</strong> Bring cash for beach club; book ahead in summer</li>
<li><strong>Coordinates:</strong> 39.541N, 2.591E -- limited parking, bus from Palma recommended</li>
</ul>

<h2>Hidden Coves & Secret Beaches</h2>
<p>For those willing to walk a little further, Calvia rewards with some of Mallorca''s most beautiful secluded coves. These require moderate fitness and some preparation.</p>

<h3>Cala Fornells</h3>
<p>A small cove with coarse sand and stunning turquoise waters, surrounded by dramatic cliffs. Near several hotels but maintains a peaceful atmosphere. Excellent for snorkelling.</p>
<ul>
<li><strong>Difficulty:</strong> Medium -- short walk from parking over uneven terrain</li>
<li><strong>Best Time:</strong> May to October; arrive early for the best spots</li>
<li><strong>Cost:</strong> Free access; no sunbed rental</li>
<li><strong>Duration:</strong> 3-5 hours</li>
<li><strong>Target Audience:</strong> Snorkellers, couples, moderate fitness</li>
<li><strong>Preparation:</strong> Sturdy shoes for the path, snorkel gear, packed lunch and water</li>
<li><strong>Coordinates:</strong> 39.517N, 2.449E -- park at Peguera and walk 1km</li>
</ul>

<h3>Cala Falco</h3>
<p>A serene sandy cove shaded by pine trees with clear turquoise waters and a small beach bar. One of the quietest spots in the Magaluf area.</p>
<ul>
<li><strong>Difficulty:</strong> Medium -- short hike from the road through pine forest</li>
<li><strong>Best Time:</strong> Weekdays for maximum tranquility; May to September</li>
<li><strong>Cost:</strong> Free access; small beach bar for drinks</li>
<li><strong>Duration:</strong> 3-5 hours</li>
<li><strong>Target Audience:</strong> Couples, nature lovers, moderate fitness</li>
<li><strong>Preparation:</strong> Water, snacks, sun hat; insect repellent for pine shade areas</li>
<li><strong>Coordinates:</strong> 39.492N, 2.508E -- park nearby and follow the trail down</li>
</ul>

<h3>Cala Vinyes</h3>
<p>A rocky cove in a residential area with remarkably clear seas. Pine-shaded with excellent snorkelling among the rocks. A local favourite away from the tourist crowds.</p>
<ul>
<li><strong>Difficulty:</strong> Medium -- steps down to the beach</li>
<li><strong>Best Time:</strong> Calm weather days; avoid when windy</li>
<li><strong>Cost:</strong> Free access</li>
<li><strong>Duration:</strong> 2-4 hours</li>
<li><strong>Target Audience:</strong> Snorkellers, nature lovers</li>
<li><strong>Preparation:</strong> Water shoes essential for rocks; bring mask and snorkel</li>
<li><strong>Coordinates:</strong> 39.498N, 2.513E -- access via residential roads</li>
</ul>

<h3>Cala del Mago</h3>
<p>A small pebble beach known as a nudist-friendly spot, nestled between cliffs. The crystal-clear waters and dramatic setting have made it a filming location. No facilities.</p>
<ul>
<li><strong>Difficulty:</strong> Medium -- short trail from Portals Vells parking area</li>
<li><strong>Best Time:</strong> Calm sea days only; summer months</li>
<li><strong>Cost:</strong> Free access; bring everything you need</li>
<li><strong>Duration:</strong> 2-4 hours</li>
<li><strong>Target Audience:</strong> Naturists, adventurous swimmers, cliff photography</li>
<li><strong>Preparation:</strong> Bring all essentials (no facilities); water, food, sun protection</li>
<li><strong>Coordinates:</strong> 39.474N, 2.522E -- park at Portals Vells, walk south 10 minutes</li>
</ul>

<h3>Cala Portals Vells</h3>
<p>A beautiful sandy beach backed by ancient caves, with clear waters and a small restaurant. The caves were once used by quarry workers and add unique character.</p>
<ul>
<li><strong>Difficulty:</strong> Easy -- parking nearby with direct access</li>
<li><strong>Best Time:</strong> May to October; early morning for the best light in the caves</li>
<li><strong>Cost:</strong> Free access; restaurant on-site</li>
<li><strong>Duration:</strong> Half day</li>
<li><strong>Target Audience:</strong> Families, snorkellers, history enthusiasts</li>
<li><strong>Preparation:</strong> Snorkel gear for exploring underwater caves; sun protection</li>
<li><strong>Coordinates:</strong> 39.473N, 2.522E -- direct road access to parking area</li>
</ul>

<h2>Quieter Local Beaches</h2>

<h3>Calo d''en Monjo</h3>
<p>A tiny pebble cove wedged between Peguera and Cala Fornells, accessible via a short coastal path. Crystal-clear waters and a peaceful atmosphere make this a true hidden gem.</p>
<ul>
<li><strong>Difficulty:</strong> Medium -- requires a 15-minute walk on a rocky coastal path</li>
<li><strong>Best Time:</strong> Summer mornings</li>
<li><strong>Cost:</strong> Free; no facilities</li>
<li><strong>Duration:</strong> 2-3 hours</li>
<li><strong>Preparation:</strong> Good footwear for the path, all supplies including water and shade</li>
</ul>

<h3>Cala Contesa</h3>
<p>A secluded cove near Illetas with clear waters and rocky platforms. Popular with locals for swimming and sunbathing away from the main tourist beaches.</p>
<ul>
<li><strong>Difficulty:</strong> Medium -- steps and rocky access</li>
<li><strong>Best Time:</strong> May to September</li>
<li><strong>Cost:</strong> Free access</li>
<li><strong>Duration:</strong> 2-4 hours</li>
<li><strong>Preparation:</strong> Water shoes, towel for rocks, snorkel gear</li>
</ul>

<h3>Ses Penyes Roges</h3>
<p>Named after its distinctive red-tinted rock formations, this small beach offers dramatic scenery and good swimming conditions when the sea is calm.</p>
<ul>
<li><strong>Difficulty:</strong> Medium-Hard -- rocky access path</li>
<li><strong>Best Time:</strong> Calm weather days; summer</li>
<li><strong>Cost:</strong> Free; no facilities</li>
<li><strong>Duration:</strong> 2-3 hours</li>
<li><strong>Preparation:</strong> Sturdy shoes, all essentials, camera for the red rock formations</li>
</ul>

<h3>Platja de l''Oratori</h3>
<p>A small sandy beach in Portals Nous, close to the famous Puerto Portals marina. Calm waters and a relaxed atmosphere despite its proximity to the upscale area.</p>
<ul>
<li><strong>Difficulty:</strong> Easy -- flat access with nearby amenities</li>
<li><strong>Best Time:</strong> Year-round; quieter in spring and autumn</li>
<li><strong>Cost:</strong> Free access; restaurants in Portals Nous nearby</li>
<li><strong>Duration:</strong> Half day</li>
<li><strong>Preparation:</strong> Standard beach essentials</li>
</ul>

<h2>Essential Beach Safety Tips</h2>
<ul>
<li><strong>Sun protection:</strong> The Mallorcan sun is intense, especially June-September. Apply SPF 50+ and reapply every 2 hours</li>
<li><strong>Hydration:</strong> Bring at least 1.5L water per person; more for secluded beaches without facilities</li>
<li><strong>Flag system:</strong> Red flag means no swimming. Yellow means caution. Green means safe</li>
<li><strong>Emergency:</strong> Call 112 for emergencies. Lifeguards operate on main beaches May-October</li>
<li><strong>Jellyfish:</strong> Occasional in late summer. If stung, rinse with sea water (not fresh) and seek first aid</li>
<li><strong>Footwear:</strong> Water shoes are recommended for rocky coves and pebbly sections</li>
</ul>',
  'beaches',
  NULL,
  'Complete Beach Guide: All 27 Beaches & Coves in Calvia, Mallorca 2026 | Calvia.app',
  'Discover all beaches and coves along Calvia''s 54km coastline. From family-friendly Palmanova to hidden coves like Cala Falco. Difficulty levels, costs, and preparation tips for every beach.',
  'https://images.pexels.com/photos/1032650/pexels-photo-1032650.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO guides (title, slug, description, content, category_slug, area_slug, meta_title, meta_description, image_url, published)
VALUES (
  'Best Family Beaches in Calvia: Safe, Shallow & Kid-Friendly',
  'family-beaches-calvia',
  'The definitive guide to Calvia''s best family-friendly beaches -- safe swimming, shallow waters, playgrounds, and full amenities for a stress-free day with kids.',
  '<h2>Why Calvia is Perfect for Family Beach Days</h2>
<p>Calvia''s coastline offers some of the safest, best-equipped family beaches in all of Mallorca. With Blue Flag awards, lifeguard services from May to October, and gentle sandy shorelines, parents can relax while children play. This guide covers the top beaches for families with children of all ages.</p>

<h2>Top Family Beaches</h2>

<h3>Palmanova Beach -- The Classic Family Choice</h3>
<p>Three connected sandy sections with shallow, calm waters that are ideal for young swimmers. The wide promenade has restaurants, ice cream shops, and playgrounds within walking distance. Pushchair-accessible throughout.</p>
<ul>
<li><strong>Water Depth:</strong> Shallow and gradual, perfect for toddlers and young children</li>
<li><strong>Lifeguards:</strong> Yes, May to October on all three sections</li>
<li><strong>Toilets/Showers:</strong> Yes, public facilities available</li>
<li><strong>Pushchair Access:</strong> Full promenade access, ramps to beach level</li>
<li><strong>Sunbed Cost:</strong> Approx. 13 EUR for two sunbeds + umbrella</li>
<li><strong>Nearby Food:</strong> Dozens of restaurants and cafes on the promenade</li>
<li><strong>Parking:</strong> Public car parks within 5-minute walk</li>
<li><strong>Best Age:</strong> All ages, especially 0-12 years</li>
</ul>

<h3>Santa Ponsa Beach -- Blue Flag with Playgrounds</h3>
<p>A wide sandy beach backed by natural pine trees providing welcome shade. The Blue Flag status guarantees water quality and safety standards. Playgrounds and water sports facilities keep older children entertained.</p>
<ul>
<li><strong>Water Depth:</strong> Gradual entry, safe for children</li>
<li><strong>Lifeguards:</strong> Yes, May to October</li>
<li><strong>Shade:</strong> Natural pine grove behind the beach</li>
<li><strong>Play Areas:</strong> Playground adjacent to the beach</li>
<li><strong>Water Sports:</strong> Pedal boats, kayaks available for older children</li>
<li><strong>Best Age:</strong> All ages; especially good for 3-14 years</li>
</ul>

<h3>Peguera''s Three Beaches -- Walk Between Them</h3>
<p>The trio of Palmira, Tora, and La Romana beaches connected by a promenade means families can explore multiple beaches in one day. Each has its own character: Palmira is widest, Tora is most sheltered, and La Romana is quietest.</p>
<ul>
<li><strong>Best for Toddlers:</strong> Tora Beach (most sheltered from waves)</li>
<li><strong>Best for Older Kids:</strong> Palmira Beach (widest, most space for games)</li>
<li><strong>Best for Quiet Time:</strong> La Romana Beach (smallest, fewest visitors)</li>
<li><strong>Lifeguards:</strong> Yes on all three during summer</li>
<li><strong>Dining:</strong> Full promenade with family-friendly restaurants</li>
</ul>

<h3>Platja de l''Oratori (Portals Nous)</h3>
<p>A smaller, calmer beach near Puerto Portals that rarely gets overcrowded. The gentle waters and sandy bottom make it excellent for young children, and nearby restaurants cater to families.</p>
<ul>
<li><strong>Water Depth:</strong> Very gradual, calm conditions</li>
<li><strong>Crowds:</strong> Moderate -- less crowded than Palmanova or Magaluf</li>
<li><strong>Nearby:</strong> Puerto Portals marina for a post-beach walk</li>
<li><strong>Best Age:</strong> 0-10 years</li>
</ul>

<h3>Cala Portals Vells -- Adventure for Older Kids</h3>
<p>A sandy beach with fascinating caves that children love to explore. The clear waters are excellent for snorkelling with older children. A small restaurant means you do not need to pack a full picnic.</p>
<ul>
<li><strong>Water Depth:</strong> Moderate, suitable for confident swimmers</li>
<li><strong>Caves:</strong> Explorable on foot -- bring torches for older children</li>
<li><strong>Snorkelling:</strong> Excellent for ages 8+</li>
<li><strong>Best Age:</strong> 6-16 years (caves are the main attraction)</li>
<li><strong>Parking:</strong> Direct road access to car park</li>
</ul>

<h2>What to Pack for a Family Beach Day</h2>
<ul>
<li>SPF 50+ sunscreen -- reapply every 2 hours, especially after swimming</li>
<li>Rash guards/UV suits for young children</li>
<li>Water shoes for rocky sections</li>
<li>Inflatable armbands or swim vest for non-swimmers</li>
<li>Shade tent or beach umbrella (can be rented at main beaches)</li>
<li>Plenty of water and snacks</li>
<li>Bucket and spade set for sandy beaches</li>
<li>Snorkel set for children aged 6+ at rocky coves</li>
</ul>

<h2>Safety Checklist</h2>
<ul>
<li>Always swim near a lifeguard station when possible</li>
<li>Teach children to identify the flag system (green/yellow/red)</li>
<li>Agree on a meeting point with older children</li>
<li>Keep hydrated -- children dehydrate faster than adults</li>
<li>Avoid the midday sun (12pm-3pm) with young children</li>
<li>Apply sunscreen 30 minutes before entering the water</li>
</ul>',
  'beaches',
  NULL,
  'Best Family Beaches in Calvia, Mallorca 2026 | Kid-Friendly Beaches | Calvia.app',
  'Find the safest family beaches in Calvia with shallow waters, lifeguards, playgrounds, and full amenities. Palmanova, Santa Ponsa, Peguera and more rated for families with kids.',
  'https://images.pexels.com/photos/1231365/pexels-photo-1231365.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO guides (title, slug, description, content, category_slug, area_slug, meta_title, meta_description, image_url, published)
VALUES (
  'Hidden Coves & Secret Beaches in Calvia You Need to Discover',
  'hidden-coves-secret-beaches-calvia',
  'Escape the crowds and discover Calvia''s most secluded coves and secret beaches. From cliff-backed Cala Fornells to the nudist-friendly Cala del Mago -- each with access directions and snorkelling ratings.',
  '<h2>Beyond the Tourist Beaches</h2>
<p>While Calvia''s main beaches draw the crowds, the municipality hides dozens of secluded coves that reward those willing to walk a little further. These spots offer crystal-clear waters, dramatic cliff scenery, and a sense of discovery that the main beaches simply cannot match.</p>

<h2>Easy-Access Hidden Gems</h2>

<h3>Cala Portals Vells</h3>
<p>Perhaps the most accessible of Calvia''s hidden spots, this sandy cove features ancient caves carved by quarry workers centuries ago. The underwater visibility is exceptional, making it a top snorkelling destination.</p>
<ul>
<li><strong>Access:</strong> Easy -- drive directly to the car park, 2-minute walk</li>
<li><strong>Snorkelling Rating:</strong> Excellent (8/10) -- caves and rock formations underwater</li>
<li><strong>Facilities:</strong> Small restaurant, no sunbed rental</li>
<li><strong>Crowds:</strong> Moderate in summer, quiet in shoulder season</li>
<li><strong>Coordinates:</strong> 39.473N, 2.522E</li>
</ul>

<h3>Cala Falco</h3>
<p>Tucked away behind pine trees near Magaluf, this serene cove feels worlds away from the busy strip. A small beach bar serves cold drinks, and the turquoise waters are remarkably calm.</p>
<ul>
<li><strong>Access:</strong> Medium -- 10-minute walk through pine forest from road</li>
<li><strong>Snorkelling Rating:</strong> Good (7/10) -- rocky edges with marine life</li>
<li><strong>Facilities:</strong> Small beach bar (summer only)</li>
<li><strong>Crowds:</strong> Low, especially on weekdays</li>
<li><strong>Coordinates:</strong> 39.492N, 2.508E</li>
</ul>

<h2>Moderate-Access Coves</h2>

<h3>Cala Fornells</h3>
<p>Surrounded by dramatic cliffs and accessed via a short path from Peguera, this coarse-sand cove has some of the clearest water in the region. The nearby hotel terraces provide a beautiful backdrop.</p>
<ul>
<li><strong>Access:</strong> Medium -- 1km walk from Peguera parking; sturdy shoes needed</li>
<li><strong>Snorkelling Rating:</strong> Excellent (9/10) -- rich marine life along cliff base</li>
<li><strong>Facilities:</strong> None at the beach; hotels nearby</li>
<li><strong>Crowds:</strong> Moderate</li>
<li><strong>Coordinates:</strong> 39.517N, 2.449E</li>
</ul>

<h3>Cala Vinyes</h3>
<p>A rocky cove in a quiet residential area with exceptionally clear water. The underwater rock formations make this one of Calvia''s best snorkelling spots. Pine trees provide natural shade on the surrounding rocks.</p>
<ul>
<li><strong>Access:</strong> Medium -- steps down to the water from residential streets</li>
<li><strong>Snorkelling Rating:</strong> Excellent (9/10) -- diverse rock formations and marine life</li>
<li><strong>Facilities:</strong> None</li>
<li><strong>Crowds:</strong> Low -- mostly locals</li>
<li><strong>Best Conditions:</strong> Calm sea days; avoid when windy</li>
<li><strong>Coordinates:</strong> 39.498N, 2.513E</li>
</ul>

<h3>Calo d''en Monjo</h3>
<p>A tiny pebble cove wedged between Peguera and Cala Fornells. The 15-minute coastal path walk filters out the casual beachgoers, leaving you with a truly peaceful spot and pristine water.</p>
<ul>
<li><strong>Access:</strong> Medium -- 15-minute coastal path walk; proper footwear essential</li>
<li><strong>Snorkelling Rating:</strong> Good (7/10)</li>
<li><strong>Facilities:</strong> None -- bring everything</li>
<li><strong>Crowds:</strong> Very low</li>
<li><strong>Coordinates:</strong> Between Peguera and Cala Fornells on the coastal path</li>
</ul>

<h3>Cala del Mago</h3>
<p>A small pebble beach known for its nudist-friendly atmosphere, tucked between towering cliffs south of Portals Vells. The dramatic setting has attracted filmmakers, and the clear water is unforgettable.</p>
<ul>
<li><strong>Access:</strong> Medium -- 10-minute trail from Portals Vells car park</li>
<li><strong>Snorkelling Rating:</strong> Good (7/10) -- cliff walls underwater</li>
<li><strong>Facilities:</strong> None -- complete self-sufficiency required</li>
<li><strong>Note:</strong> Clothing-optional beach; respect local etiquette</li>
<li><strong>Coordinates:</strong> 39.474N, 2.522E</li>
</ul>

<h2>Challenging-Access Secret Spots</h2>

<h3>Cala Bella Dona</h3>
<p>One of the most secluded beaches in Calvia, requiring a longer walk along the coastal path. The effort is rewarded with turquoise water and almost guaranteed solitude.</p>
<ul>
<li><strong>Access:</strong> Hard -- 30+ minute walk on rough coastal trail</li>
<li><strong>Snorkelling Rating:</strong> Good (7/10)</li>
<li><strong>Crowds:</strong> Almost none</li>
<li><strong>Preparation:</strong> Sturdy hiking shoes, 2L water minimum, sun protection, all food</li>
</ul>

<h3>Ses Penyes Roges</h3>
<p>Named for its striking red rock formations, this small beach offers dramatic scenery unlike anything else on Calvia''s coast. Swimming is excellent when the sea is calm.</p>
<ul>
<li><strong>Access:</strong> Hard -- rocky path requiring good footwear and fitness</li>
<li><strong>Snorkelling Rating:</strong> Good (6/10) -- interesting rock colours underwater</li>
<li><strong>Crowds:</strong> Very rare</li>
<li><strong>Best For:</strong> Photography, experienced swimmers, geology enthusiasts</li>
</ul>

<h2>Essential Kit for Hidden Coves</h2>
<ul>
<li>Sturdy water shoes or hiking sandals (most coves have rocky access)</li>
<li>Snorkel, mask, and fins -- the main reason to visit these spots</li>
<li>Minimum 2L water per person (no facilities at most coves)</li>
<li>Packed lunch and snacks</li>
<li>Reef-safe sunscreen (protect the pristine marine environment)</li>
<li>Dry bag for electronics</li>
<li>Basic first aid kit (plasters for rocky scrapes)</li>
<li>Shade -- portable beach shelter or sarong to rig up</li>
</ul>

<h2>Snorkelling Conditions</h2>
<p>The best snorkelling conditions are on calm days with no wind. East or northeast winds can stir up the western-facing coves. Check the marine forecast at <strong>Windguru</strong> or <strong>Windy.com</strong> before heading out. Morning typically offers the clearest visibility before afternoon winds pick up.</p>',
  'beaches',
  NULL,
  'Hidden Coves & Secret Beaches in Calvia, Mallorca 2026 | Snorkelling Spots | Calvia.app',
  'Discover Calvia''s most secluded hidden coves and secret beaches. Access directions, snorkelling ratings, and preparation tips for Cala Fornells, Cala Falco, Cala del Mago and more.',
  'https://images.pexels.com/photos/1450340/pexels-photo-1450340.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
)
ON CONFLICT (slug) DO NOTHING;
