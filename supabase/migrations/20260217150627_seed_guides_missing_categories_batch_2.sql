/*
  # Seed Guides for Categories With Zero Guides (Batch 2)

  1. New Data
    - Adds comprehensive guides for remaining 5 categories with no guides:
      - Hairdressers
      - Education
      - Pet Services
      - Boat Charters
      - Yachting & Boat Rentals
    - Each guide has full HTML content, SEO metadata, and is published

  2. Notes
    - Practical informational guides for the Calvia/Mallorca area
*/

INSERT INTO guides (title, slug, description, content, category_slug, meta_title, meta_description, image_url, published)
VALUES
(
  'Hairdressers in Calvia: Finding Your Perfect Salon in Mallorca',
  'hairdressers-calvia-guide',
  'Guide to hairdressers and hair salons in Calvia, Mallorca. Tips for finding English and German-speaking stylists, popular services, pricing, and what to expect.',
  '<h2>Hair Salons in Southwest Mallorca</h2>
<p>Finding a hairdresser you trust is one of those small but significant settling-in tasks when living abroad. Calvia''s hair salons reflect the international makeup of the area, with stylists trained across Europe bringing diverse techniques and style influences. Whether you need a simple trim, a complete colour transformation, or specialist treatments, the options across the municipality are varied and accessible.</p>

<h3>What to Expect</h3>
<p>Hair salons in Calvia range from modern, design-focused studios in Portals Nous and Bendinat to friendly neighbourhood salons in Son Ferrer and Calvia Vila. Most salons offer:</p>
<ul>
<li><strong>Cut and blow-dry:</strong> Starting from around 25-35 euros for women, 15-20 euros for men</li>
<li><strong>Colour services:</strong> Full colour from 40-60 euros, highlights from 50-90 euros, balayage from 80-150 euros</li>
<li><strong>Treatments:</strong> Keratin straightening, Olaplex treatments, deep conditioning, and scalp therapies</li>
<li><strong>Styling:</strong> Special occasion updos, wedding hair, and blow-dry bars</li>
</ul>

<h3>Language and Communication</h3>
<p>Communication is key when it comes to hair. Many salons in the tourist and expat-heavy areas of Palmanova, Santa Ponsa, Magaluf, and Peguera have stylists who speak English and German fluently. Bringing reference photos is always helpful regardless of language. Some salons specifically market themselves to the British, German, or Scandinavian communities.</p>

<h3>Booking and Etiquette</h3>
<p>Walk-ins are accepted at many salons, but booking is recommended, particularly on Fridays and Saturdays. Tipping is appreciated but not mandatory in Spain; rounding up or leaving a few euros is the common practice. Most salons are closed on Mondays, following the traditional Spanish hairdressing schedule. During summer, many salons extend their hours to accommodate the increased demand from holidaymakers.</p>

<h3>Specialist Services</h3>
<p>For specialist needs such as hair extensions, hair loss treatments (tricology), or children''s haircuts, dedicated practitioners are available in the area. Several salons also offer combined beauty packages that include hair, makeup, and nail services, particularly popular for weddings and events at the many Calvia venues.</p>',
  'hairdressers',
  'Hairdressers in Calvia, Mallorca | Hair Salon Guide',
  'Find hairdressers and hair salons in Calvia, Mallorca. Guide to services, pricing, English-speaking stylists, and the best salons for expats and visitors.',
  'https://images.pexels.com/photos/3993449/pexels-photo-3993449.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
),
(
  'Education in Calvia: Schools, Language Courses, and Learning Centres',
  'education-calvia-guide',
  'Complete guide to education options in Calvia, Mallorca. Covers international schools, Spanish language courses, adult education, tutoring, and professional development centres.',
  '<h2>Education and Learning in Calvia</h2>
<p>Education is a primary concern for families relocating to Calvia, and the municipality offers a wide range of options from Spanish public schools to prestigious international academies. Beyond school-age education, the area also serves adults seeking language courses, professional development, and lifelong learning opportunities.</p>

<h3>International Schools</h3>
<p>Several international schools serve the Calvia area, offering curricula including the British National Curriculum, International Baccalaureate (IB), and German educational systems. These schools provide continuity for children moving from abroad and typically offer instruction primarily in English or German with Spanish language integration. Admission processes usually begin in January for the following September, with waiting lists common for popular schools.</p>

<h3>Spanish Public Schools</h3>
<p>The public school system in Calvia operates in Catalan and Spanish (Mallorquin dialect of Catalan is used alongside Castilian Spanish). Public education is free and generally of good quality. For younger children, immersion in the local school system is often the fastest route to fluency in Spanish and integration into the local community. The Ajuntament de Calvia supports families through the enrolment process.</p>

<h3>Language Courses</h3>
<p>Learning Spanish is one of the most valuable investments for anyone living in Mallorca. Language schools and private tutors throughout Calvia offer:</p>
<ul>
<li>Intensive Spanish courses (20 hours per week)</li>
<li>Conversational Spanish for daily life</li>
<li>Business Spanish for professionals</li>
<li>DELE exam preparation for official certification</li>
<li>Catalan/Mallorquin classes for those wanting deeper local integration</li>
<li>English, German, and other language courses for the local community</li>
</ul>

<h3>Tutoring and Academic Support</h3>
<p>Private tutors are widely available for school-age children needing additional support in specific subjects, exam preparation (GCSEs, A-Levels, Selectividad), or help transitioning between different educational systems. Many tutors operate from education centres in Santa Ponsa, Palmanova, and Peguera, offering both in-person and online sessions.</p>

<h3>Adult Education and Professional Development</h3>
<p>Beyond formal schooling, Calvia offers various adult learning opportunities including art classes, music lessons, cooking workshops, yoga teacher training, and professional certification courses. The municipality''s cultural centres host regular workshops and continuing education programmes, many of which are free or subsidised for registered residents.</p>',
  'education',
  'Education in Calvia, Mallorca | Schools & Language Courses Guide',
  'Find schools, language courses, and education centres in Calvia, Mallorca. Guide to international schools, Spanish courses, tutoring, and adult education.',
  'https://images.pexels.com/photos/5212345/pexels-photo-5212345.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
),
(
  'Pet Services in Calvia: Veterinarians, Grooming, and Pet Care',
  'pet-services-calvia-guide',
  'Complete guide to pet services in Calvia, Mallorca. Covers veterinary clinics, pet grooming, dog walking, pet-friendly beaches, pet transport, and animal welfare.',
  '<h2>Living with Pets in Calvia</h2>
<p>Calvia is an increasingly pet-friendly municipality, and the number of pet-owning residents continues to grow. Whether you are relocating to Mallorca with your furry companion or adopting locally, understanding the available pet services and regulations will help ensure both you and your pet enjoy life in southwest Mallorca.</p>

<h3>Veterinary Services</h3>
<p>Several veterinary clinics operate within the Calvia municipality, offering routine check-ups, vaccinations, microchipping, spaying/neutering, dental care, and emergency services. Most clinics have English-speaking vets, and some also communicate in German. Emergency veterinary care is available 24/7 through on-call services and the larger veterinary hospitals in Palma. Annual vaccination and deworming schedules are important to maintain, and your vet will advise on region-specific concerns such as leishmaniasis (transmitted by sandflies) and processionary caterpillars, which are hazardous to dogs in spring.</p>

<h3>Pet Grooming</h3>
<p>Professional grooming services are available across the area, from basic baths and nail trims to breed-specific grooming. Mobile grooming services that come to your home are also popular, especially during the hot summer months when travelling with pets can be uncomfortable. Prices typically range from 25 to 60 euros depending on the size of the dog and services required.</p>

<h3>Dog Walking and Pet Sitting</h3>
<p>For working pet owners or those travelling, professional dog walkers and pet sitters operate throughout Calvia. Services range from daily walks and feeding visits to overnight stays and extended boarding. The pet sitting community is well established, with many providers offering GPS-tracked walks and photo updates.</p>

<h3>Pet-Friendly Calvia</h3>
<p>Calvia has designated dog-friendly beach areas, most notably sections of Son Caliu beach. Several parks and green spaces allow dogs, though they must be leashed in urban areas. Many restaurants and cafes, particularly those with terraces, welcome well-behaved dogs. The Ajuntament de Calvia requires all dogs to be registered with the municipal census and microchipped.</p>

<h3>Travelling with Pets</h3>
<p>If you are bringing a pet to Mallorca from another EU country, you will need an EU pet passport, microchip, and up-to-date rabies vaccination. From the UK post-Brexit, an Animal Health Certificate (AHC) is required. Several pet transport companies specialise in relocations to the Balearic Islands and can handle all documentation and logistics.</p>',
  'pet-services',
  'Pet Services in Calvia, Mallorca | Vets, Grooming & Pet Care Guide',
  'Find pet services in Calvia, Mallorca. Guide to veterinarians, pet grooming, dog walking, pet-friendly beaches, and pet transport to Mallorca.',
  'https://images.pexels.com/photos/6568942/pexels-photo-6568942.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
),
(
  'Boat Charters in Calvia: Sailing, Excursions, and Sea Adventures',
  'boat-charters-calvia-guide',
  'Guide to boat charters and sailing excursions in Calvia, Mallorca. Covers charter types, best routes, pricing, booking tips, and the top maritime experiences in southwest Mallorca.',
  '<h2>Exploring Calvia by Sea</h2>
<p>The coastline of the Calvia municipality stretches over 54 kilometres, encompassing some of the most beautiful coves, beaches, and marine scenery in the entire Mediterranean. A boat charter is one of the finest ways to experience this dramatic coastline, accessing hidden coves that are unreachable by land and seeing Mallorca from a completely different perspective.</p>

<h3>Types of Boat Charters</h3>
<ul>
<li><strong>Sailing Yacht Charters:</strong> Traditional sailing experiences on monohulls or catamarans. Ideal for those who want an authentic maritime experience. Half-day, full-day, and multi-day options available from Port Adriano and Puerto Portals.</li>
<li><strong>Motor Yacht Charters:</strong> Faster and more spacious, motor yachts are perfect for covering more of the coastline in a single day. Ranging from small speed boats to luxury superyachts.</li>
<li><strong>Catamaran Cruises:</strong> Stable and spacious, group catamaran excursions are popular for families and parties. Many include open bars, BBQ lunches, and water sports equipment.</li>
<li><strong>Fishing Charters:</strong> Deep sea fishing trips targeting species like tuna, swordfish, dorado, and amberjack. Experienced skippers know the best spots off the Calvia coast.</li>
<li><strong>Sunset Cruises:</strong> Romantic evening sailings along the coast, watching the sun set behind the Tramuntana mountains from the water.</li>
</ul>

<h3>Popular Routes and Destinations</h3>
<p>The most popular charter routes from Calvia include:</p>
<ul>
<li><strong>Portals Vells Circuit:</strong> Visiting the three beaches of Portals Vells and the historic pirate cave. A short but stunning route from Palmanova or Magaluf.</li>
<li><strong>Malgrats Islands:</strong> A marine reserve off Santa Ponsa with excellent snorkelling. The islands are a protected nesting ground for seabirds.</li>
<li><strong>Cala Vinyes to Camp de Mar:</strong> Following the dramatic cliff coastline south, passing Gran Folies beach club and several hidden coves.</li>
<li><strong>Sa Dragonera:</strong> A longer excursion to the dragon-shaped island off the western tip of Mallorca, a natural park with hiking trails and crystal-clear waters.</li>
</ul>

<h3>Pricing and Booking</h3>
<p>Charter costs vary significantly depending on the vessel type, size, and season. Small motorboats without a skipper start from around 200-300 euros per half day. Skippered sailing yachts typically range from 500-1,500 euros per day. Luxury motor yacht charters can exceed 5,000 euros per day. High season (July-August) commands premium prices, while May-June and September-October offer excellent conditions at lower rates. Booking at least two weeks in advance during summer is recommended.</p>

<h3>Licences and Safety</h3>
<p>In Spain, operating a motorboat over 15 horsepower requires a boating licence (Titulo Nautico). Many charter companies offer smaller boats (under 15hp) that can be rented without a licence. All reputable charter companies provide safety equipment, insurance, and a thorough briefing before departure. For those interested in obtaining a Spanish boating licence, courses are available locally and typically take 3-5 days.</p>',
  'boat-charters',
  'Boat Charters in Calvia, Mallorca | Sailing & Sea Excursions Guide',
  'Find boat charters and sailing excursions in Calvia, Mallorca. Guide to yacht hire, catamaran cruises, fishing trips, routes, pricing, and booking tips.',
  'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
),
(
  'Yachting and Boat Rentals in Calvia: Your Guide to Getting on the Water',
  'yachting-boat-rentals-calvia-guide',
  'Guide to yacht rentals, boat hire, and marina services in Calvia, Mallorca. Covers self-drive boats, jet ski hire, paddleboard rentals, marina berths, and water equipment.',
  '<h2>Getting on the Water in Calvia</h2>
<p>With two world-class marinas (Puerto Portals and Port Adriano) and numerous beach-based rental operations, Calvia offers more ways to get on the water than almost anywhere else in the Mediterranean. From luxury yacht rentals to simple pedal boat hire, there is an option for every budget, experience level, and group size.</p>

<h3>Self-Drive Boat Rentals</h3>
<p>For those who want independence on the water, self-drive boat rentals are widely available. In Spain, boats with engines under 15 horsepower (approximately 6 metres in length) can be rented without any licence. These small motorboats are perfect for exploring nearby coves, snorkelling spots, and enjoying a few hours on the water at your own pace. Rental prices typically start from 100-150 euros for two hours or 200-350 euros for a full day.</p>

<h3>Jet Ski and Water Toy Rentals</h3>
<p>Jet ski hire is popular from the beaches of Magaluf, Palmanova, and Santa Ponsa. Sessions typically last 30 minutes to two hours, with guided coastal tours available for those who want to cover more distance. Prices range from 60-80 euros for 30 minutes. Other water equipment for hire includes stand-up paddleboards, kayaks, pedal boats, and flyboards.</p>

<h3>Yacht and Luxury Boat Hire</h3>
<p>For a more premium experience, skippered yacht hire from Puerto Portals or Port Adriano offers a day of luxury on the Mediterranean. Modern motor yachts equipped with sun decks, sound systems, snorkelling gear, and sometimes even water toys like sea bobs and inflatable platforms. Many include a hostess or chef service. Day rates for crewed yachts typically start from 1,500 euros and can exceed 10,000 euros for larger vessels.</p>

<h3>Marinas and Berthing</h3>
<p>If you own a boat or are considering purchasing one, the two marinas in Calvia offer different characters:</p>
<ul>
<li><strong>Puerto Portals:</strong> One of the Mediterranean''s most glamorous marinas, home to superyachts and a vibrant social scene. Berths are highly sought after and often traded on long-term leases.</li>
<li><strong>Port Adriano:</strong> Designed by Philippe Starck, this modern marina combines nautical facilities with restaurants, shops, and event spaces. It tends to attract a slightly more relaxed clientele than Puerto Portals.</li>
</ul>

<h3>Seasonal Considerations</h3>
<p>The sailing season in Mallorca runs from April to October, with July and August being peak months when demand (and prices) are highest. The shoulder months of May-June and September offer the best combination of good weather, calm seas, and reasonable availability. Winter sailing is possible but weather-dependent, and many rental operations reduce hours or close entirely from November to March.</p>',
  'yachting-boat-rentals',
  'Yachting & Boat Rentals in Calvia, Mallorca | Marina & Water Sports Guide',
  'Find yacht rentals and boat hire in Calvia, Mallorca. Guide to self-drive boats, jet skis, luxury yacht charter, marina berths at Puerto Portals and Port Adriano.',
  'https://images.pexels.com/photos/1295036/pexels-photo-1295036.jpeg?auto=compress&cs=tinysrgb&w=1200',
  true
)
ON CONFLICT (slug) DO NOTHING;
