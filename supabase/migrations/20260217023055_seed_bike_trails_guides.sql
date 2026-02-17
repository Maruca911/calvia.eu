/*
  # Seed bike trails guides

  1. New Guides
    - Complete Cycling Guide covering 15 routes in Calvia
    - Easy Family Bike Rides guide
    - Advanced Road Cycling Climbs guide

  2. SEO
    - Optimized for cycling/biking keywords with Calvia/Mallorca modifiers
    - Category slug set to 'bike-trails'
*/

INSERT INTO guides (title, slug, description, content, category_slug, area_slug, meta_title, meta_description, image_url, published)
VALUES (
  'Complete Cycling Guide: 15 Best Bike Routes in Calvia',
  'complete-cycling-guide-calvia',
  'From easy coastal spins to demanding mountain climbs, discover all 15 essential cycling routes in Calvia. Distance, elevation profiles, bike type recommendations, and route planning for every level.',
  '<h2>Cycling in Calvia: The Mediterranean Cycling Capital</h2>
<p>Mallorca is one of Europe''s premier cycling destinations, and Calvia''s position between the coast and the Tramuntana mountains offers the full spectrum of riding. Professional teams train here in winter, while families enjoy gentle coastal routes year-round. This guide covers every route you need to know.</p>

<h2>Easy Routes (Casual & Family)</h2>

<h3>Peguera to Camp de Mar</h3>
<p>A short, mostly flat coastal ride connecting two resort towns. Wide roads and minimal traffic make this ideal for families and casual cyclists. Stop at Camp de Mar''s beaches for a swim halfway.</p>
<ul>
<li><strong>Distance:</strong> 10 km (return)</li>
<li><strong>Duration:</strong> 1 hour</li>
<li><strong>Elevation Gain:</strong> 100m</li>
<li><strong>Difficulty:</strong> Easy -- flat to gentle grades, quiet roads</li>
<li><strong>Bike Type:</strong> Any -- road, hybrid, e-bike, or city bike</li>
<li><strong>Best Time:</strong> Year-round; mornings in summer to avoid heat</li>
<li><strong>Target Audience:</strong> Families, beginners, casual riders</li>
<li><strong>Preparation:</strong> Helmet (mandatory for under-16s, recommended for all), water, sunscreen</li>
<li><strong>Start Point:</strong> Peguera centre (39.517N, 2.449E)</li>
<li><strong>Highlights:</strong> Coastal views, Camp de Mar island, beach stops</li>
</ul>

<h3>Palma Nova to Santa Ponsa Coastal Ride</h3>
<p>A gentle coastal route following the promenade and quiet roads between two popular resort areas. Multiple beach stops and cafes along the way.</p>
<ul>
<li><strong>Distance:</strong> 14 km (return)</li>
<li><strong>Duration:</strong> 1-1.5 hours</li>
<li><strong>Elevation Gain:</strong> 80m</li>
<li><strong>Difficulty:</strong> Easy -- mostly flat, some shared cycle paths</li>
<li><strong>Bike Type:</strong> Any</li>
<li><strong>Best For:</strong> Families, sightseeing riders, e-bike beginners</li>
<li><strong>Highlights:</strong> Beach access, marina views, cafe stops</li>
</ul>

<h2>Medium Routes</h2>

<h3>Magaluf - Santa Ponsa - Cap de Cala Figuera Circular</h3>
<p>A varied coastal loop taking in beaches, a dramatic cape, and quiet residential roads. The Cap de Cala Figuera section offers spectacular cliff-top views and a sense of wildness surprisingly close to the resorts.</p>
<ul>
<li><strong>Distance:</strong> 30 km loop</li>
<li><strong>Duration:</strong> 2 hours</li>
<li><strong>Elevation Gain:</strong> 400m</li>
<li><strong>Difficulty:</strong> Medium -- several short climbs, exposed coastal section</li>
<li><strong>Bike Type:</strong> Road bike or e-bike recommended</li>
<li><strong>Best Time:</strong> Year-round; be prepared for coastal winds</li>
<li><strong>Target Audience:</strong> Regular cyclists, fitness riders</li>
<li><strong>Preparation:</strong> Road bike or e-bike, helmet, 1L water, wind layer, pump and spare tube</li>
<li><strong>Start Point:</strong> Magaluf (39.505N, 2.532E)</li>
<li><strong>Highlights:</strong> Cap de Cala Figuera lighthouse, Santa Ponsa bay views, quiet cape roads</li>
</ul>

<h3>Peguera to Cap de Cala Figuera Route</h3>
<p>A longer coastal loop through villages with continuous sea views and moderate hills. This route passes through the heart of Calvia''s coastline and is popular with intermediate riders.</p>
<ul>
<li><strong>Distance:</strong> 51 km loop</li>
<li><strong>Duration:</strong> 3-4 hours</li>
<li><strong>Elevation Gain:</strong> 690m</li>
<li><strong>Difficulty:</strong> Medium -- several sustained climbs between 3-8% gradient</li>
<li><strong>Bike Type:</strong> Road bike or performance e-bike</li>
<li><strong>Best Time:</strong> October to May; avoid midday heat in summer</li>
<li><strong>Target Audience:</strong> Intermediate to advanced cyclists</li>
<li><strong>Preparation:</strong> Full road cycling kit, 2L water, energy bars, repair tools</li>
<li><strong>Start Point:</strong> Peguera (39.517N, 2.449E)</li>
</ul>

<h3>Peguera - Calvia - Cap de Cala Figuera Loop</h3>
<p>A variation that heads inland through Calvia Vila before looping back via the cape. The inland section adds village character and different terrain variety.</p>
<ul>
<li><strong>Distance:</strong> 45 km loop</li>
<li><strong>Duration:</strong> 3 hours</li>
<li><strong>Elevation Gain:</strong> 580m</li>
<li><strong>Difficulty:</strong> Medium</li>
<li><strong>Highlights:</strong> Calvia Vila old town, rural roads, cape views</li>
</ul>

<h2>Challenging Routes</h2>

<h3>Galatzo Climb: Peguera to Galilea</h3>
<p>The signature road cycling climb of the Calvia region. From sea level at Peguera, the route climbs relentlessly through Es Capdella to the mountain village of Galilea at 460m. The descent rewards with stunning Tramuntana views.</p>
<ul>
<li><strong>Distance:</strong> 44.5 km loop</li>
<li><strong>Duration:</strong> 3-4 hours</li>
<li><strong>Elevation Gain:</strong> 1,000m</li>
<li><strong>Difficulty:</strong> Hard -- sustained climbing with gradients of 6-10%</li>
<li><strong>Bike Type:</strong> Road bike with compact chainset (34/32 minimum) or e-bike</li>
<li><strong>Best Time:</strong> February to May, September to November</li>
<li><strong>Target Audience:</strong> Trained cyclists, climbing specialists</li>
<li><strong>Preparation:</strong> Geared road bike, cycling gloves, 2L water minimum, energy gels/bars, arm warmers for descent, repair kit</li>
<li><strong>Start Point:</strong> Peguera (39.517N, 2.449E)</li>
<li><strong>Key Climb:</strong> Es Capdella to Galilea -- 8 km at average 5.5% gradient, max 10%</li>
<li><strong>Reward:</strong> Cafe stop in Galilea with panoramic mountain views</li>
</ul>

<h3>Calvia Poniente West Route</h3>
<p>A comprehensive tour of western Calvia, combining coastal roads, inland climbs, and mountain descents. One of the most varied rides in the region.</p>
<ul>
<li><strong>Distance:</strong> 65 km loop</li>
<li><strong>Duration:</strong> 4-5 hours</li>
<li><strong>Elevation Gain:</strong> 800m</li>
<li><strong>Difficulty:</strong> Medium-Hard -- length and cumulative elevation</li>
<li><strong>Bike Type:</strong> Road bike</li>
<li><strong>Best Time:</strong> October to May</li>
<li><strong>Target Audience:</strong> Fit recreational and competitive cyclists</li>
<li><strong>Preparation:</strong> Full road kit, 2L water (refill in villages), nutrition plan, lights for any tunnels</li>
<li><strong>Start Point:</strong> Calvia Vila (39.539N, 2.457E)</li>
</ul>

<h3>Es Capdella - Calvia - Coll de sa Creu - Puigpunyent - Galilea Loop</h3>
<p>The classic Calvia mountain circuit. Three significant climbs including the Coll de sa Creu pass, connecting four villages through the heart of the Tramuntana foothills.</p>
<ul>
<li><strong>Distance:</strong> 55 km loop</li>
<li><strong>Duration:</strong> 3.5-4.5 hours</li>
<li><strong>Elevation Gain:</strong> 1,100m</li>
<li><strong>Difficulty:</strong> Hard -- three major climbs, technical descents</li>
<li><strong>Bike Type:</strong> Road bike (lightweight preferred)</li>
<li><strong>Best Time:</strong> March to May, September to November</li>
<li><strong>Target Audience:</strong> Advanced cyclists, climbing enthusiasts</li>
<li><strong>Key Climbs:</strong> Coll de sa Creu (4 km at 7%), Galilea climb (5 km at 5.5%), Puigpunyent approach (3 km at 6%)</li>
<li><strong>Preparation:</strong> Compact/sub-compact chainset, 2-3L water, full nutrition, descending confidence</li>
</ul>

<h3>Paguera to Sant Elm</h3>
<p>An out-and-back ride to the western tip of Mallorca. The route passes through Andratx and climbs to Sant Elm with views of Sa Dragonera island. A bucket-list ride for visiting cyclists.</p>
<ul>
<li><strong>Distance:</strong> 50 km (return)</li>
<li><strong>Duration:</strong> 3-4 hours</li>
<li><strong>Elevation Gain:</strong> 750m</li>
<li><strong>Difficulty:</strong> Medium-Hard -- several climbs, narrow roads near Sant Elm</li>
<li><strong>Bike Type:</strong> Road bike or gravel bike</li>
<li><strong>Highlights:</strong> Sa Dragonera island views, Port d''Andratx harbour, coastal cliffs</li>
<li><strong>Tip:</strong> Stop for seafood lunch in Port d''Andratx on the return</li>
</ul>

<h2>E-Bike Information</h2>
<p>E-bikes have transformed cycling in Calvia, making mountain routes accessible to more riders. Several rental shops offer quality e-bikes:</p>
<ul>
<li>E-bike rental typically costs 35-60 EUR per day</li>
<li>Battery range is usually 60-100 km depending on assist level and terrain</li>
<li>Charge fully before mountain routes</li>
<li>Use Eco mode on flat sections to conserve battery for climbs</li>
<li>All routes in this guide are suitable for e-bikes</li>
</ul>

<h2>Essential Cycling Safety</h2>
<ul>
<li><strong>Helmet:</strong> Mandatory for under-16s by Spanish law; strongly recommended for all riders</li>
<li><strong>Visibility:</strong> Front and rear lights, even during daytime. Hi-vis clothing recommended</li>
<li><strong>Road Position:</strong> Ride in single file on busy roads. Use cycle lanes where available</li>
<li><strong>Descending:</strong> Mountain descents can be fast and technical. Cover your brakes, watch for gravel</li>
<li><strong>Hydration:</strong> Drink before you feel thirsty. Electrolyte tablets in summer months</li>
<li><strong>Repair Kit:</strong> Spare tube, pump/CO2 inflator, multi-tool, tyre lever</li>
<li><strong>Emergency:</strong> Dial 112. Carry ID and insurance details</li>
</ul>',
  'bike-trails',
  NULL,
  'Complete Cycling Guide: 15 Best Bike Routes in Calvia, Mallorca 2026 | Calvia.app',
  'Discover 15 cycling routes in Calvia from easy coastal spins to challenging Tramuntana climbs. Distance, elevation, bike type recommendations, and route planning for every level.',
  'https://images.pexels.com/photos/5970290/pexels-photo-5970290.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO guides (title, slug, description, content, category_slug, area_slug, meta_title, meta_description, image_url, published)
VALUES (
  'Easy & Family-Friendly Bike Rides in Calvia',
  'easy-family-bike-rides-calvia',
  'Gentle cycling routes perfect for families, e-bike beginners, and casual riders. Flat coastal paths, beach-hopping routes, and safe roads through Calvia''s most scenic areas.',
  '<h2>Cycling with the Family in Calvia</h2>
<p>Calvia''s coastal areas offer some of the most pleasant easy cycling on the island. Flat promenades, quiet residential roads, and gentle coastal paths mean families can ride together safely. E-bike rentals make even slightly hilly routes accessible to everyone.</p>

<h2>Best Easy Rides</h2>

<h3>Peguera to Camp de Mar Coastal Spin</h3>
<p>The perfect first ride in Calvia. A short, mostly flat route connecting two beach towns with continuous sea views. Wide roads and minimal traffic make this stress-free for families.</p>
<ul>
<li><strong>Distance:</strong> 10 km (return)</li>
<li><strong>Duration:</strong> 45 min to 1 hour</li>
<li><strong>Elevation:</strong> 100m (barely noticeable)</li>
<li><strong>Road Surface:</strong> Paved throughout, good condition</li>
<li><strong>Traffic:</strong> Very light -- residential roads and quiet lanes</li>
<li><strong>Best For:</strong> Families with children aged 6+, e-bike first-timers</li>
<li><strong>Stops:</strong> Camp de Mar beach, ice cream shops, the famous island restaurant</li>
<li><strong>Bike Rental:</strong> Available in Peguera from approx. 12 EUR/day for standard bikes, 35 EUR for e-bikes</li>
</ul>

<h3>Palma Nova Promenade Ride</h3>
<p>Follow the seafront promenade through Palma Nova, connecting the three beach sections. Mostly pedestrianised or cycle-friendly, with multiple ice cream and drink stops.</p>
<ul>
<li><strong>Distance:</strong> 6 km (return along promenade)</li>
<li><strong>Duration:</strong> 30-45 minutes (with stops)</li>
<li><strong>Elevation:</strong> Flat</li>
<li><strong>Road Surface:</strong> Paved promenade</li>
<li><strong>Best For:</strong> Families with young children (4+), leisure riders</li>
<li><strong>Note:</strong> Walk your bike through busy pedestrian sections during peak hours</li>
</ul>

<h3>Santa Ponsa to Magaluf Coastal Route</h3>
<p>A gentle route connecting Santa Ponsa and Magaluf via quiet roads. Pass through residential areas with sea glimpses and stop at various beaches along the way.</p>
<ul>
<li><strong>Distance:</strong> 16 km (return)</li>
<li><strong>Duration:</strong> 1-1.5 hours</li>
<li><strong>Elevation:</strong> 120m (gentle hills)</li>
<li><strong>Best For:</strong> Couples, families with children aged 8+</li>
<li><strong>Highlights:</strong> Multiple beach access points, cafes, marina views</li>
</ul>

<h2>E-Bike Rental Guide</h2>
<p>E-bikes are the best way to enjoy Calvia''s cycling routes if you are not a regular cyclist. The electric assist removes the challenge of hills while keeping the fun of riding.</p>
<ul>
<li><strong>Half-day rental:</strong> 20-30 EUR (4 hours)</li>
<li><strong>Full-day rental:</strong> 35-60 EUR</li>
<li><strong>Weekly rental:</strong> 150-250 EUR (best value)</li>
<li><strong>Included:</strong> Helmet, lock, and basic repair kit usually included</li>
<li><strong>Battery:</strong> Full charge lasts 60-100 km on Eco mode</li>
<li><strong>Child seats:</strong> Available at some rental shops -- book in advance</li>
</ul>

<h2>Safety Tips for Family Cycling</h2>
<ul>
<li>Helmets are mandatory for children under 16 in Spain</li>
<li>Ride in single file on roads, use cycle paths where available</li>
<li>Avoid riding during the hottest part of the day (12pm-3pm in summer)</li>
<li>Carry water for everyone and stop regularly to hydrate</li>
<li>Apply sunscreen -- you burn faster when cycling due to the breeze</li>
<li>Practice stopping and signalling before heading out with young riders</li>
<li>Use front and rear lights even in daytime for visibility</li>
</ul>',
  'bike-trails',
  NULL,
  'Easy Family Bike Rides in Calvia, Mallorca 2026 | E-Bike Routes | Calvia.app',
  'Discover gentle cycling routes in Calvia perfect for families and e-bike beginners. Flat coastal paths, beach-hopping rides, and safe roads with rental information and safety tips.',
  'https://images.pexels.com/photos/3771836/pexels-photo-3771836.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO guides (title, slug, description, content, category_slug, area_slug, meta_title, meta_description, image_url, published)
VALUES (
  'Best Road Cycling Climbs Near Calvia: Routes for Serious Cyclists',
  'road-cycling-climbs-calvia',
  'Push your limits on Calvia''s best climbing routes. The Galatzo ascent, Coll de sa Creu, and multi-pass loops through the Tramuntana -- with gradient profiles, nutrition strategies, and Strava segments.',
  '<h2>Calvia: Training Ground of the Pros</h2>
<p>Professional cycling teams from across Europe choose Mallorca -- and specifically the roads around Calvia -- for their winter and spring training camps. The combination of reliable weather, quiet mountain roads, and serious climbing makes this area a cycling paradise. These routes are for trained riders who enjoy the challenge of sustained ascents.</p>

<h2>The Classic Climbs</h2>

<h3>Es Capdella to Galilea (The Galatzo Climb)</h3>
<p>The defining climb of western Mallorca. From the village of Es Capdella, the road rises steadily to Galilea, offering ever-expanding views of the Tramuntana. The final kilometres through pine forest are the steepest.</p>
<ul>
<li><strong>Climb Distance:</strong> 8 km</li>
<li><strong>Elevation Gain:</strong> 340m</li>
<li><strong>Average Gradient:</strong> 5.5%</li>
<li><strong>Maximum Gradient:</strong> 10% (final 2 km)</li>
<li><strong>Strava Segment:</strong> Search "Es Capdella to Galilea"</li>
<li><strong>Gearing:</strong> Minimum 34x28, recommended 34x32 or compact</li>
<li><strong>Best Effort Time:</strong> Sub-25 minutes is strong; sub-20 is competitive</li>
<li><strong>Reward:</strong> Cafe in Galilea with terrace views over the valley</li>
</ul>

<h3>Coll de sa Creu</h3>
<p>A classic Mallorcan mountain pass connecting Calvia with the Esporles valley. The approach from the Calvia side is steeper and more technical, with switchbacks through oak forest.</p>
<ul>
<li><strong>Climb Distance:</strong> 4 km</li>
<li><strong>Elevation Gain:</strong> 280m</li>
<li><strong>Average Gradient:</strong> 7%</li>
<li><strong>Maximum Gradient:</strong> 12% (hairpin sections)</li>
<li><strong>Surface:</strong> Good tarmac, some shade from trees</li>
<li><strong>Gearing:</strong> 34x32 minimum recommended</li>
<li><strong>Best Effort Time:</strong> Sub-15 minutes is strong</li>
</ul>

<h3>Puigpunyent Approach</h3>
<p>The road from Calvia to Puigpunyent climbs through terraced olive groves and rural farmland. A more gradual but longer climb than Coll de sa Creu, popular as part of loop routes.</p>
<ul>
<li><strong>Climb Distance:</strong> 6 km</li>
<li><strong>Elevation Gain:</strong> 260m</li>
<li><strong>Average Gradient:</strong> 4.3%</li>
<li><strong>Maximum Gradient:</strong> 8%</li>
<li><strong>Character:</strong> Steady, rhythmic climbing -- good for tempo work</li>
</ul>

<h2>Multi-Climb Loop Routes</h2>

<h3>The Triple Crown: Es Capdella - Coll de sa Creu - Galilea Loop</h3>
<p>The premier road cycling loop in the Calvia area. Three significant climbs linked by fast descents and beautiful valley roads. This is the route local cycling clubs use for their weekend challenge ride.</p>
<ul>
<li><strong>Total Distance:</strong> 55 km</li>
<li><strong>Total Elevation:</strong> 1,100m</li>
<li><strong>Duration:</strong> 3.5-4.5 hours</li>
<li><strong>Difficulty:</strong> Hard -- sustained climbing, technical descents</li>
<li><strong>Route:</strong> Es Capdella > Calvia > Coll de sa Creu > Son Roca > Puigpunyent > Galilea > Es Capdella</li>
<li><strong>Key Climbs:</strong> Coll de sa Creu (7%), Puigpunyent (4.3%), Galilea (5.5%)</li>
<li><strong>Water Stops:</strong> Cafes in Puigpunyent and Galilea</li>
<li><strong>Nutrition:</strong> 2-3 gels plus solid food; eat before each major climb</li>
</ul>

<h3>Peguera to Galilea via Galatzo</h3>
<p>Starting from sea level at Peguera, this route delivers the maximum climbing bang for your effort. The steady ascent through Es Capdella to Galilea gains nearly 500m, with a thrilling descent back to the coast.</p>
<ul>
<li><strong>Total Distance:</strong> 44.5 km loop</li>
<li><strong>Total Elevation:</strong> 1,000m</li>
<li><strong>Duration:</strong> 3-4 hours</li>
<li><strong>Difficulty:</strong> Hard</li>
<li><strong>Highlight:</strong> The 15 km descent from Galilea to Peguera -- wide, smooth, spectacular</li>
<li><strong>Caution:</strong> Descending at speed -- watch for gravel on corners, especially after rain</li>
</ul>

<h3>Calvia Poniente West Grand Tour</h3>
<p>The longest and most varied route, covering the entire western section of Calvia municipality. Coastal roads, mountain passes, and village connections in one epic ride.</p>
<ul>
<li><strong>Total Distance:</strong> 65 km</li>
<li><strong>Total Elevation:</strong> 800m</li>
<li><strong>Duration:</strong> 4-5 hours</li>
<li><strong>Difficulty:</strong> Medium-Hard (more endurance than explosive climbing)</li>
<li><strong>Highlights:</strong> Coastal cliffs, mountain villages, mixed terrain</li>
<li><strong>Strategy:</strong> Steady pace, eat and drink consistently, save energy for the final climb</li>
</ul>

<h2>Training and Nutrition Tips</h2>
<ul>
<li><strong>Pre-ride:</strong> Eat a carbohydrate-rich meal 2-3 hours before departure</li>
<li><strong>During:</strong> Consume 60-90g carbs per hour on rides over 2 hours</li>
<li><strong>Hydration:</strong> 500-750ml per hour; add electrolytes in summer</li>
<li><strong>Climbing:</strong> Drop to a sustainable power output, do not start too hard</li>
<li><strong>Descending:</strong> Cover brakes, look through corners, weight the outside pedal</li>
<li><strong>Recovery:</strong> Protein and carb-rich meal within 30 minutes of finishing</li>
</ul>

<h2>When to Ride</h2>
<ul>
<li><strong>Peak Season:</strong> February to May and September to November -- mild temperatures, dry roads</li>
<li><strong>Summer:</strong> Start before 8am to avoid heat. Only morning rides recommended June-August</li>
<li><strong>Winter:</strong> December to January can be wet. Check forecasts. Rain makes mountain descents dangerous</li>
<li><strong>Wind:</strong> Afternoon sea breezes can be headwinds on coastal routes. Plan direction accordingly</li>
</ul>',
  'bike-trails',
  NULL,
  'Best Road Cycling Climbs Near Calvia, Mallorca 2026 | Galatzo & Coll de sa Creu | Calvia.app',
  'Challenge yourself on Calvia''s best road cycling climbs. Galatzo ascent, Coll de sa Creu, and multi-pass Tramuntana loops with gradient profiles, gearing tips, and nutrition strategies.',
  'https://images.pexels.com/photos/2519374/pexels-photo-2519374.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
)
ON CONFLICT (slug) DO NOTHING;
