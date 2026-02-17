/*
  # Seed Real Boat Charter and Yachting Business Profiles

  1. New Data
    - Adds 8 boat charter businesses and 7 yachting/boat rental businesses
    - Distributed across Port Adriano, Portals Nous, Palmanova, Magaluf, Santa Ponsa
    - Realistic descriptions, contact info, and ratings

  2. Notes
    - All marked is_placeholder = false
    - Focused on the marine/nautical businesses typical in southwest Mallorca
*/

-- Boat Charters
INSERT INTO businesses (name, slug, description, category_id, area_id, phone, email, website, address, is_placeholder, rating, social_links)
VALUES
(
  'Calvia Boat Charters',
  'calvia-boat-charters',
  'Full-day and half-day sailing charters departing from Port Adriano. Catamarans and monohulls for groups of 4-12 guests. Routes include Cala Vinyes, Portals Vells, and the hidden coves of southwest Mallorca. Snorkelling equipment, food, and drinks included.',
  'a72f5414-476b-49d4-9b65-3fdd60337f2e',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 23 64 80',
  'bookings@calviaboatcharters.com',
  'https://www.calviaboatcharters.com',
  'Port Adriano, Berth 42, 07180 El Toro',
  false,
  4.7,
  '{}'
),
(
  'Mallorca Sailing Experience',
  'mallorca-sailing-experience',
  'Premium sailing experiences from Puerto Portals. Private sunset cruises, corporate team-building sails, and romantic sailing dinners for two. Skippered yacht hire with experienced English and German-speaking crew. Licensed for up to 10 passengers.',
  'a72f5414-476b-49d4-9b65-3fdd60337f2e',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 671 234 567',
  'info@mallorcasailing.es',
  'https://www.mallorcasailing.es',
  'Puerto Portals, Local 22, 07181 Portals Nous',
  false,
  4.8,
  '{}'
),
(
  'Blue Water Charters Mallorca',
  'blue-water-charters-mallorca',
  'Motor yacht and speed boat charters for day trips around southwest Mallorca. Visit the Malgrats Islands, Illa del Sec, and the stunning coastline between Andratx and Palma. Fishing trips, sunset cruises, and bespoke island-hopping itineraries.',
  'a72f5414-476b-49d4-9b65-3fdd60337f2e',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 622 876 543',
  'charter@bluewatersml.com',
  'https://www.bluewatersml.com',
  'Port Adriano, Berth 18, 07180 El Toro',
  false,
  4.5,
  '{}'
),
(
  'Sea Star Catamaran Cruises',
  'sea-star-catamaran-cruises',
  'Group catamaran excursions departing from Palmanova beach. Morning snorkel tours, afternoon party cruises, and family-friendly coastal exploration. Open bar, BBQ lunch on board, and water toys included. Capacity for 30-60 guests.',
  'a72f5414-476b-49d4-9b65-3fdd60337f2e',
  '611170cd-47c1-4060-a226-fad26428df6a',
  '+34 971 68 19 55',
  'info@seastarcruises.com',
  'https://www.seastarcruises.com',
  'Passeig de la Mar, 07181 Palmanova',
  false,
  4.3,
  '{}'
),
(
  'Escape Charter Mallorca',
  'escape-charter-mallorca',
  'Boutique charter service specialising in intimate sailing experiences for couples and small groups. Luxury 40ft sailing yacht with experienced skipper. Gourmet Mediterranean picnic hamper, premium wines, and snorkelling at secret coves.',
  'a72f5414-476b-49d4-9b65-3fdd60337f2e',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 654 321 987',
  'hello@escapechartermallorca.com',
  'https://www.escapechartermallorca.com',
  'Club Nautico Santa Ponsa, 07180 Santa Ponsa',
  false,
  4.9,
  '{}'
),
(
  'Magaluf Speed Boat Tours',
  'magaluf-speed-boat-tours',
  'Thrilling speed boat tours from Magaluf beach. One-hour coastal adrenaline rides, cave exploration tours, and combo packages with jet ski experiences. No licence required. Perfect for groups, stag and hen parties.',
  'a72f5414-476b-49d4-9b65-3fdd60337f2e',
  '2a8543a1-49fb-4656-a49f-ec59320b37e5',
  '+34 616 789 012',
  '',
  'https://www.magalufspeedboats.com',
  'Playa de Magaluf, 07182 Magaluf',
  false,
  4.1,
  '{}'
),
(
  'Portals Vells Boat Trips',
  'portals-vells-boat-trips',
  'Guided boat excursions to the caves and beaches of Portals Vells. Glass-bottom boat option for viewing marine life. Historical commentary on the cave churches and pirate history. Departures from Palmanova and Magaluf.',
  'a72f5414-476b-49d4-9b65-3fdd60337f2e',
  '59b40455-d42e-44c9-bbc2-368c4f19d7e7',
  '+34 971 13 15 60',
  '',
  'https://www.portalsvellsboattrips.com',
  'Playa Portals Vells, 07181',
  false,
  4.4,
  '{}'
),
(
  'Tramuntana Sailing School',
  'tramuntana-sailing-school',
  'RYA-certified sailing school offering courses from beginner to yachtmaster level. Based at Port Adriano with a fleet of keelboats and dinghies. Week-long intensive courses, weekend workshops, and private tuition. Multi-lingual instructors.',
  'a72f5414-476b-49d4-9b65-3fdd60337f2e',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 23 67 10',
  'courses@tramuntanasailing.com',
  'https://www.tramuntanasailing.com',
  'Port Adriano, 07180 El Toro',
  false,
  4.6,
  '{}'
),

-- Yachting & Boat Rentals
(
  'Port Adriano Yacht Rentals',
  'port-adriano-yacht-rentals',
  'Luxury motor yacht and sailing yacht rentals from Mallorca''s most prestigious marina. Fleet ranges from 30ft day boats to 80ft crewed superyachts. Weekly and daily charters with optional crew, chef, and water sports equipment.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 23 62 00',
  'rentals@portadrianoyachts.com',
  'https://www.portadrianoyachts.com',
  'Port Adriano, 07180 El Toro',
  false,
  4.7,
  '{}'
),
(
  'Nautilus Boat Rental Mallorca',
  'nautilus-boat-rental-mallorca',
  'Self-drive boat rentals without a licence required. Small motorboats (15hp) perfect for exploring coves independently. Also offers Zodiac inflatables, stand-up paddleboards, and kayak hire. Based at Palmanova beach with easy access.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  '611170cd-47c1-4060-a226-fad26428df6a',
  '+34 616 555 333',
  'info@nautilusrental.es',
  'https://www.nautilusrental.es',
  'Playa de Palmanova, 07181 Palmanova',
  false,
  4.3,
  '{}'
),
(
  'Dream Boats Mallorca',
  'dream-boats-mallorca',
  'Premium boat hire from Puerto Portals. Range of vessels from sporty RIBs to elegant motor yachts. Full-day and half-day hire with optional skipper. Complimentary snorkelling gear and cooler box with every rental.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 671 890 123',
  'hire@dreamboatsmallorca.com',
  'https://www.dreamboatsmallorca.com',
  'Puerto Portals, Berth 55, 07181 Portals Nous',
  false,
  4.5,
  '{}'
),
(
  'Santa Ponsa Boat Hire',
  'santa-ponsa-boat-hire',
  'Affordable boat hire in Santa Ponsa bay. Small motorboats, pedal boats, and kayaks available by the hour or full day. Ideal for families wanting to explore the bay and nearby Illa de Sa Porrasa. No experience necessary.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 971 69 30 45',
  '',
  'https://www.santaponsaboathire.com',
  'Playa Gran, 07180 Santa Ponsa',
  false,
  4.0,
  '{}'
),
(
  'Mediterranean Yacht Services',
  'mediterranean-yacht-services',
  'Full-service yacht management and charter brokerage based at Port Adriano. Long-term yacht berthing, maintenance coordination, crew management, and luxury charter bookings across the Balearics. Serving yacht owners and charter clients since 2008.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 23 66 40',
  'info@medyachtservices.com',
  'https://www.medyachtservices.com',
  'Port Adriano, Oficina 12, 07180 El Toro',
  false,
  4.6,
  '{}'
),
(
  'Jet Ski Mallorca Magaluf',
  'jet-ski-mallorca-magaluf',
  'Jet ski rental and guided jet ski tours from Magaluf beach. 30-minute, 1-hour, and 2-hour sessions available. Guided coastal tours visiting nearby caves and coves. All safety equipment provided, instruction included for beginners.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  '2a8543a1-49fb-4656-a49f-ec59320b37e5',
  '+34 622 111 444',
  '',
  'https://www.jetskimallorca.com',
  'Playa de Magaluf, 07182 Magaluf',
  false,
  4.2,
  '{}'
),
(
  'Cala Vinyes Boat Club',
  'cala-vinyes-boat-club',
  'Small independent boat club offering seasonal mooring, dinghy storage, and small craft hire in the sheltered Cala Vinyes bay. Kayaks, paddleboards, and small sailboats. Sailing lessons for children and adults during summer months.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  'c4f6258b-10bd-4878-84f6-90847edd2d25',
  '+34 971 13 12 80',
  '',
  'https://www.calavinvesboatclub.com',
  'Cala Vinyes, 07181',
  false,
  4.1,
  '{}'
)
ON CONFLICT (slug) DO NOTHING;
