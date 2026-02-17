/*
  # Add FAQs for Remaining Categories - Batch 2

  1. New Data
    - FAQ entries for 13 categories: hairdressers, beauty salons, boat charters, education,
      emergency services, events planning, nature outdoors, pet services, professional services,
      coworking offices, dentists, tennis clubs, yachting
  2. Notes
    - 4 FAQs per category
    - Completes FAQ coverage for all 30 categories
*/

INSERT INTO faqs (page_type, page_slug, question, answer, display_order) VALUES
-- Hairdressers
('category', 'hairdressers', 'Where are the best hairdressers in Calvia?', 'Calvia has a wide range of hairdressers from budget-friendly salons to high-end styling studios. Santa Ponsa, Palmanova, and Portals Nous all have well-regarded salons. Many hairdressers cater specifically to British, German, or Scandinavian clients.', 1),
('category', 'hairdressers', 'Do hairdressers in Calvia speak English?', 'Many hairdressers in Calvia speak English, particularly in areas with large international communities like Santa Ponsa and Palmanova. Some salons specifically market to English-speaking clients and have staff fluent in multiple languages.', 2),
('category', 'hairdressers', 'How much does a haircut cost in Calvia?', 'Haircut prices in Calvia range from 15-25 euros for a basic cut at a local salon to 50-100 euros or more at premium styling studios. Prices are generally comparable to other Mediterranean resort areas.', 3),
('category', 'hairdressers', 'Do I need to book an appointment at a hairdresser in Calvia?', 'Booking is recommended, especially during weekends and the summer tourist season. Many salons accept walk-ins during quieter periods. Some high-end stylists require appointments days or weeks in advance.', 4),

-- Beauty Salons
('category', 'beauty-salons', 'What beauty treatments are available in Calvia?', 'Beauty salons in Calvia offer a full range of treatments including facials, manicures, pedicures, waxing, lash extensions, microblading, body treatments, and advanced aesthetic procedures. Many salons use premium European skincare brands.', 1),
('category', 'beauty-salons', 'Are there medical aesthetic clinics in Calvia?', 'Yes, several medical aesthetic clinics in Calvia offer treatments such as Botox, dermal fillers, laser treatments, and other non-surgical procedures. These are performed by licensed medical professionals in clinical settings.', 2),
('category', 'beauty-salons', 'How do beauty salon prices in Calvia compare?', 'Beauty treatment prices in Calvia are generally in line with other upscale Mediterranean destinations. Basic treatments like manicures start around 20-30 euros, while premium facials and advanced treatments can range from 60-200 euros.', 3),
('category', 'beauty-salons', 'Can I find organic or natural beauty treatments in Calvia?', 'Several salons and spas in Calvia specialise in organic and natural beauty treatments, using brands free from parabens, sulphates, and synthetic ingredients. This trend has grown significantly in recent years.', 4),

-- Boat Charters
('category', 'boat-charters', 'Can I charter a boat in Calvia?', 'Yes, boat charters are available from Puerto Portals, Port Adriano, and several smaller operators along the coast. Options range from small motorboats for a few hours to luxury yacht charters with crew for full-day excursions.', 1),
('category', 'boat-charters', 'Do I need a licence to charter a boat in Calvia?', 'For boats under 15 horsepower, no licence is required. For larger vessels, you either need a valid boating licence recognised in Spain or must hire a skipper. Most charter companies offer skippered options.', 2),
('category', 'boat-charters', 'How much does a boat charter cost in Calvia?', 'Prices vary widely. A small motorboat for half a day starts around 200-400 euros. Mid-range sailing boats cost 500-1500 euros per day. Luxury yacht charters with crew start from 2000 euros per day and go significantly higher.', 3),
('category', 'boat-charters', 'What are the best routes for a boat trip from Calvia?', 'Popular routes include sailing south to the Portals Vells coves, circumnavigating the island of Sa Porrasa, exploring the El Toro marine reserve, and longer trips to the Cabrera archipelago or around to Soller on the northwest coast.', 4),

-- Education
('category', 'education', 'What schools are available in Calvia?', 'Calvia has Spanish public schools, concerted (semi-private) schools, and international schools. International options include British, German, and Scandinavian curriculum schools. Places at popular international schools should be applied for well in advance.', 1),
('category', 'education', 'Are there English-language schools in Calvia?', 'Yes, several international schools in the Calvia area follow the British curriculum and teach primarily in English. These schools cater to the large English-speaking expat community and often also teach Spanish as a second language.', 2),
('category', 'education', 'How does the Spanish school system work?', 'The Spanish school system consists of Infantil (ages 3-6), Primaria (6-12), ESO secondary (12-16), and Bachillerato or vocational training (16-18). Education is compulsory from ages 6-16. Public schools teach primarily in Spanish and Catalan.', 3),
('category', 'education', 'Are there nurseries and childcare in Calvia?', 'Calvia has both public and private nurseries (guarderias) accepting children from a few months old. Many private nurseries offer bilingual programmes. The demand is high, so registering early is recommended, especially for September start dates.', 4),

-- Emergency Services
('category', 'emergency-services', 'What is the emergency number in Calvia?', 'The European emergency number 112 works throughout Calvia and all of Spain. You can reach police, fire, and ambulance services through this number. Operators can handle calls in Spanish, English, German, and other languages.', 1),
('category', 'emergency-services', 'Where is the nearest hospital to Calvia?', 'The main hospital serving the Calvia area is Hospital Universitari Son Espases in Palma, about 15-20 minutes by car. For non-emergency urgent care, there are health centres (centros de salud) in major Calvia towns.', 2),
('category', 'emergency-services', 'Is there a police station in Calvia?', 'Yes, the Policia Local de Calvia has stations in several locations including Calvia Vila and Palmanova. The Guardia Civil also has a presence in the area. For non-emergencies, you can visit these stations directly to file reports.', 3),
('category', 'emergency-services', 'What pharmacies are open late in Calvia?', 'Pharmacies in Calvia operate on a rotating schedule for out-of-hours service. Look for the green cross sign — illuminated crosses indicate an open pharmacy. The duty pharmacy schedule is posted on all pharmacy doors and available online.', 4),

-- Events & Planning
('category', 'events-planning', 'Can I host a wedding in Calvia?', 'Calvia is a popular wedding destination with numerous venues including beachfront hotels, rural fincas, luxury villas, and marina-side restaurants. Wedding planning services in the area handle everything from venue selection to catering and entertainment.', 1),
('category', 'events-planning', 'What events happen in Calvia throughout the year?', 'Calvia hosts events year-round including local fiestas, food festivals, sporting events, Christmas markets, and cultural performances. Major events include the Calvia trail running race, summer concert series, and the various town patron saint festivals.', 2),
('category', 'events-planning', 'Are there event venues in Calvia?', 'Calvia offers diverse event venues including hotel conference rooms, marina-side restaurants, rural estates, beach clubs, and outdoor spaces. Port Adriano and Puerto Portals are particularly popular for corporate events and private celebrations.', 3),
('category', 'events-planning', 'Do event planners in Calvia speak English?', 'Most professional event planners in Calvia speak English and often German as well. The international nature of the clientele means that multilingual service is standard in the events industry.', 4),

-- Nature & Outdoors
('category', 'nature-outdoors', 'What outdoor activities are available in Calvia?', 'Calvia offers hiking in the Tramuntana foothills, cycling on dedicated paths and mountain roads, rock climbing, birdwatching, horse riding, nature reserves, coastal walks, and water-based activities. The varied landscape provides year-round outdoor recreation.', 1),
('category', 'nature-outdoors', 'Are there hiking trails in Calvia?', 'Yes, Calvia has numerous hiking trails ranging from easy coastal walks to challenging mountain routes. The GR221 long-distance trail passes through the area, and the Galatzo nature reserve offers well-marked paths suitable for various fitness levels.', 2),
('category', 'nature-outdoors', 'Is Calvia good for cycling?', 'Calvia is excellent for cycling. The municipality has invested in dedicated cycle paths, and the mountain roads attract serious road cyclists year-round. Several bike rental shops offer high-quality road bikes, mountain bikes, and e-bikes.', 3),
('category', 'nature-outdoors', 'What wildlife can I see in Calvia?', 'Calvia is home to diverse wildlife including the Balearic lizard, various raptor species, Eleonora falcons, osprey, Mediterranean chameleons, and marine life including dolphins, sea turtles, and diverse reef fish in the El Toro reserve.', 4),

-- Pet Services
('category', 'pet-services', 'Are there veterinary clinics in Calvia?', 'Several veterinary clinics operate across Calvia, with practices in Santa Ponsa, Palmanova, and other main towns. Many vets speak English and offer a full range of services from routine check-ups to emergency care and specialist treatments.', 1),
('category', 'pet-services', 'Can I take my dog to the beach in Calvia?', 'Dogs are not permitted on most Calvia beaches during the summer season (typically May-October). However, there are designated dog-friendly beach areas and several parks where dogs can exercise off-lead. Check local signage for current regulations.', 2),
('category', 'pet-services', 'Are there pet grooming services in Calvia?', 'Pet grooming salons are available across Calvia, offering bathing, clipping, nail trimming, and styling for dogs and cats. Some groomers offer mobile services, coming to your home with a fully equipped grooming van.', 3),
('category', 'pet-services', 'Is there a dog kennels or pet sitting service in Calvia?', 'Several dog boarding kennels and pet sitting services operate in the Calvia area. Options range from professional kennels to home-based pet sitters who look after animals in a domestic environment. Book well ahead during holiday periods.', 4),

-- Professional Services
('category', 'professional-services', 'What professional services are available in Calvia?', 'Calvia has a full range of professional services including lawyers, accountants, tax advisors, gestors (administrative consultants), translators, insurance brokers, and financial advisors. Many specialise in serving the international community.', 1),
('category', 'professional-services', 'Do I need a gestor in Calvia?', 'A gestor is an administrative consultant unique to Spain who helps navigate bureaucracy. For tasks like residency applications, vehicle registration, tax filings, and business permits, a gestor is highly recommended and can save significant time and frustration.', 2),
('category', 'professional-services', 'Are there English-speaking lawyers in Calvia?', 'Yes, several law firms in Calvia specialise in serving English-speaking clients, particularly for property transactions, immigration matters, business formation, and inheritance planning under Spanish law.', 3),
('category', 'professional-services', 'What taxes do I need to pay as a resident of Calvia?', 'Spanish tax residents pay income tax (IRPF), property tax (IBI), and potentially wealth tax. Non-resident property owners pay non-resident income tax. A qualified tax advisor familiar with both Spanish and your home country tax system is essential.', 4),

-- Coworking & Offices
('category', 'coworking-offices', 'Are there coworking spaces in Calvia?', 'Calvia has a growing number of coworking spaces, particularly in Santa Ponsa and Palmanova. These offer hot desks, dedicated desks, private offices, meeting rooms, and high-speed internet. The digital nomad community in the area has driven demand.', 1),
('category', 'coworking-offices', 'How much does coworking cost in Calvia?', 'Coworking prices in Calvia typically range from 150-350 euros per month for a hot desk and 300-600 euros for a dedicated desk. Day passes are available at most spaces for 15-30 euros. Private offices vary depending on size and location.', 2),
('category', 'coworking-offices', 'Is Calvia good for remote workers?', 'Calvia is increasingly popular with remote workers and digital nomads. The combination of reliable internet, coworking facilities, pleasant climate, quality of life, and access to Palma airport makes it an attractive base for location-independent professionals.', 3),
('category', 'coworking-offices', 'Do coworking spaces in Calvia have meeting rooms?', 'Most coworking spaces in Calvia offer meeting rooms that can be booked by the hour or half-day. These typically include video conferencing equipment, whiteboards, and presentation screens. Some spaces also offer event areas for workshops.', 4),

-- Dentists & Dental Clinics
('category', 'dentists-dental-clinics', 'Are there English-speaking dentists in Calvia?', 'Yes, several dental clinics in Calvia have English-speaking dentists and staff. Many clinics specifically cater to the international community and advertise their language capabilities. German-speaking dentists are also common.', 1),
('category', 'dentists-dental-clinics', 'How much do dental treatments cost in Calvia?', 'Dental treatment costs in Calvia are generally lower than in the UK, Germany, and Scandinavia. A routine check-up and cleaning typically costs 50-80 euros. More complex treatments like crowns or implants are competitively priced, attracting dental tourism.', 2),
('category', 'dentists-dental-clinics', 'Is dental care covered by Spanish health insurance?', 'Basic dental care is partially covered under Spanish public health insurance for children and emergencies. Most adults require private dental insurance or pay out-of-pocket. Many private health insurance plans include dental coverage as an add-on.', 3),
('category', 'dentists-dental-clinics', 'Do dental clinics in Calvia offer cosmetic dentistry?', 'Several dental clinics in Calvia offer cosmetic treatments including teeth whitening, veneers, invisible aligners, and smile makeovers. The quality of cosmetic dentistry is high, with many dentists trained internationally.', 4),

-- Tennis Clubs
('category', 'tennis-clubs', 'Are there tennis clubs in Calvia?', 'Calvia has several tennis clubs and facilities offering courts for hire, coaching, and social tennis. The mild climate allows year-round play, making it popular with both residents and visiting tennis enthusiasts.', 1),
('category', 'tennis-clubs', 'Can visitors use tennis facilities in Calvia?', 'Most tennis clubs in Calvia welcome visitors and offer court hire by the hour. Some clubs also offer short-term membership, group coaching, and social play sessions. Many hotels also have tennis courts available to guests.', 2),
('category', 'tennis-clubs', 'Is padel tennis available in Calvia?', 'Padel is extremely popular in Calvia with courts at multiple locations. The sport has grown rapidly and most tennis clubs now also offer padel facilities. It is a great social sport and courts can be booked easily.', 3),
('category', 'tennis-clubs', 'What does tennis court hire cost in Calvia?', 'Tennis court hire in Calvia typically costs between 10-25 euros per hour depending on the facility and time of day. Coaching sessions range from 30-60 euros per hour. Padel courts are generally slightly cheaper to hire than tennis courts.', 4),

-- Yachting & Boat Rentals
('category', 'yachting-boat-rentals', 'What marinas are in Calvia?', 'Calvia has two major marinas: Puerto Portals and Port Adriano. Puerto Portals is known for its glamorous atmosphere and superyacht berths. Port Adriano, designed by Philippe Starck, is a modern facility accommodating vessels up to 80 metres.', 1),
('category', 'yachting-boat-rentals', 'Can I moor my yacht in Calvia?', 'Both Puerto Portals and Port Adriano offer berths for visiting yachts. Marina berths should be reserved in advance, especially during summer. Berth costs vary by vessel size and season. Both marinas offer full services including fuel, water, and maintenance.', 2),
('category', 'yachting-boat-rentals', 'What boat rental options exist in Calvia?', 'Calvia offers a wide range of boat rental options from small motorboats and RIBs for a few hours to luxury sailing yachts and catamarans for full-day or multi-day charters. Both skippered and bareboat options are available depending on your qualifications.', 3),
('category', 'yachting-boat-rentals', 'Is Calvia a good base for sailing in the Mediterranean?', 'Calvia is an excellent Mediterranean sailing base. The sheltered bay, consistent summer winds, proximity to beautiful anchorages, and two well-equipped marinas make it ideal. Day sailing, island hopping to Cabrera, and coastal cruising are all popular.', 4);
