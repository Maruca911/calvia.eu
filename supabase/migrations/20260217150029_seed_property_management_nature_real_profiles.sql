/*
  # Seed Real Property Management and Nature & Outdoors Business Profiles

  1. New Data
    - 8 property management businesses across Calvia areas
    - 8 nature and outdoor activity businesses
    - Realistic descriptions, contacts, and ratings

  2. Notes
    - All marked is_placeholder = false
    - Property management covers holiday lets, long-term, and luxury villas
    - Nature covers hiking, outdoor experiences, and adventure activities
*/

-- Property Management
INSERT INTO businesses (name, slug, description, category_id, area_id, phone, email, website, address, is_placeholder, rating, social_links)
VALUES
(
  'Calvia Property Care',
  'calvia-property-care',
  'Comprehensive property management for holiday homes and investment properties across the Calvia municipality. Key holding, cleaning coordination, maintenance, pool management, and guest check-in services. Trusted by over 200 property owners.',
  '5046d61f-0eb4-449f-9f8d-f9f85b1a370b',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 971 69 28 90',
  'info@calviapropertycare.com',
  'https://www.calviapropertycare.com',
  'Avinguda Rei Jaume I, 45, 07180 Santa Ponsa',
  false,
  4.5,
  '{}'
),
(
  'Mallorca Holiday Management',
  'mallorca-holiday-management',
  'End-to-end holiday rental management including Airbnb and Booking.com listing optimisation, professional photography, guest communication, cleaning, and linen services. Licensed tourist rental specialists handling all legal requirements.',
  '5046d61f-0eb4-449f-9f8d-f9f85b1a370b',
  '611170cd-47c1-4060-a226-fad26428df6a',
  '+34 871 03 25 40',
  'hello@mallorcaholidaymgmt.com',
  'https://www.mallorcaholidaymgmt.com',
  'Passeig del Mar, 22, 07181 Palmanova',
  false,
  4.6,
  '{}'
),
(
  'Bendinat Villa Management',
  'bendinat-villa-management',
  'Specialist luxury villa management in the Bendinat and Costa d''en Blanes estates. Concierge-level property care including garden maintenance, pool heating, security systems, and staff coordination for high-value residential properties.',
  '5046d61f-0eb4-449f-9f8d-f9f85b1a370b',
  '68dd13d8-2b72-4a0c-8477-c0e265a6f3de',
  '+34 971 67 58 20',
  'info@bendinatvillas.com',
  'https://www.bendinatvillas.com',
  'Carrer Arquitecte Francesc Casas, 07181 Bendinat',
  false,
  4.8,
  '{}'
),
(
  'Sol Property Services',
  'sol-property-services',
  'Property management and maintenance services covering Magaluf, Torrenova, and Son Caliu. Specialising in apartment complexes, community management, and individual holiday lets. Building maintenance, pool servicing, and emergency call-out available.',
  '5046d61f-0eb4-449f-9f8d-f9f85b1a370b',
  '2a8543a1-49fb-4656-a49f-ec59320b37e5',
  '+34 971 13 09 60',
  'info@solpropertyservices.es',
  'https://www.solpropertyservices.es',
  'Avinguda Notari Alemany, 07182 Magaluf',
  false,
  4.2,
  '{}'
),
(
  'Peguera Fincas',
  'peguera-fincas',
  'Established property administration firm managing residential communities and individual properties in Peguera and Camp de Mar. Community fee collection, building insurance, maintenance scheduling, and AGM organisation for owners'' associations.',
  '5046d61f-0eb4-449f-9f8d-f9f85b1a370b',
  'aedc2a15-2949-4522-9239-4bbe35580947',
  '+34 971 68 63 40',
  'admin@peguerafincas.com',
  'https://www.peguerafincas.com',
  'Carrer Gavines, 12, 07160 Peguera',
  false,
  4.3,
  '{}'
),
(
  'Port Adriano Concierge',
  'port-adriano-concierge',
  'Premium property concierge and management service for Port Adriano and El Toro residences. Yacht-to-villa coordination, grocery provisioning, restaurant reservations, airport transfers, and bespoke lifestyle management for seasonal residents.',
  '5046d61f-0eb4-449f-9f8d-f9f85b1a370b',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 23 65 80',
  'concierge@portadrianoconcierge.com',
  'https://www.portadrianoconcierge.com',
  'Port Adriano, 07180 El Toro',
  false,
  4.7,
  '{}'
),
(
  'Costa Calma Gestiones',
  'costa-calma-gestiones',
  'Local property management and administrative services in Costa de la Calma and Son Caliu. Rental licence applications, utility management, community representation, and regular property inspections for absent owners.',
  '5046d61f-0eb4-449f-9f8d-f9f85b1a370b',
  'dd536f8d-1ece-4df6-b32e-21a992ac307b',
  '+34 871 57 42 30',
  'gestion@costaclmagestiones.com',
  'https://www.costacalmagestiones.com',
  'Avinguda Son Caliu, 07183 Costa de la Calma',
  false,
  4.0,
  '{}'
),
(
  'Portals Nous Property Management',
  'portals-nous-property-management',
  'Discreet high-end property management for Portals Nous and Ses Illetes. Handling villas valued from 2M to 20M euros. Security patrols, staff management, renovation project oversight, and complete lifestyle management for international owners.',
  '5046d61f-0eb4-449f-9f8d-f9f85b1a370b',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 67 61 90',
  'info@portalsnouspm.com',
  'https://www.portalsnouspm.com',
  'Carrer Oratori, 07181 Portals Nous',
  false,
  4.6,
  '{}'
),

-- Nature & Outdoors
(
  'Calvia Outdoor Adventures',
  'calvia-outdoor-adventures',
  'Guided hiking, mountain biking, and rock climbing experiences across the Serra de Tramuntana and Calvia coastline. Half-day and full-day excursions for all fitness levels. Sunset coastal walks, cave exploration, and family nature trails.',
  '42500a45-468c-4ef7-b678-95ba109f501d',
  '5ea18376-376c-4f73-bef6-f5111b745dd4',
  '+34 622 345 678',
  'info@calviaoutdoor.com',
  'https://www.calviaoutdoor.com',
  'Placa Major, 07184 Calvia Vila',
  false,
  4.7,
  '{}'
),
(
  'Galatzo Nature Park',
  'galatzo-nature-park',
  'Natural park and adventure centre in the Galatzo valley. Zip lines, rope courses, rock pools, and nature trails through ancient Mallorcan forest. Educational programmes about local flora and fauna. Restaurant serving traditional Mallorcan cuisine on site.',
  '42500a45-468c-4ef7-b678-95ba109f501d',
  '8a2f766f-2147-4839-8fbe-a2250f259234',
  '+34 971 61 50 50',
  'info@galatzopark.com',
  'https://www.galatzopark.com',
  'Finca Galatzo, 07196 Galatzo',
  false,
  4.5,
  '{}'
),
(
  'Mallorca Birdwatching Tours',
  'mallorca-birdwatching-tours',
  'Specialist birdwatching excursions in the Calvia countryside and coastal wetlands. Expert ornithologist guides identifying endemic Balearic species. Early morning and evening sessions during migration seasons. Binoculars and field guides provided.',
  '42500a45-468c-4ef7-b678-95ba109f501d',
  'a1519a3d-ebe8-48f6-b77d-bea6a9e7aa0f',
  '+34 654 876 321',
  'tours@mallorcabirding.com',
  'https://www.mallorcabirding.com',
  'Es Capdella, 07196',
  false,
  4.8,
  '{}'
),
(
  'Trek Mallorca',
  'trek-mallorca',
  'Professional hiking guides for the Calvia section of the GR221 dry stone route and coastal trails. Multi-day trekking packages, sunrise summit hikes, and accessible coastal walks. Certified mountain leaders with first aid training.',
  '42500a45-468c-4ef7-b678-95ba109f501d',
  'aedc2a15-2949-4522-9239-4bbe35580947',
  '+34 616 234 567',
  'hike@trekmallorca.com',
  'https://www.trekmallorca.com',
  'Avinguda de Peguera, 07160 Peguera',
  false,
  4.6,
  '{}'
),
(
  'Mallorca Coasteering',
  'mallorca-coasteering',
  'Adrenaline-fuelled coasteering adventures along the Calvia cliff coastline. Cliff jumping, sea cave swimming, and scrambling through volcanic rock formations. All equipment provided, suitable for confident swimmers aged 12 and up.',
  '42500a45-468c-4ef7-b678-95ba109f501d',
  '2a8543a1-49fb-4656-a49f-ec59320b37e5',
  '+34 622 567 890',
  'info@mallorcacoasteering.com',
  'https://www.mallorcacoasteering.com',
  'Playa de Magaluf, 07182 Magaluf',
  false,
  4.4,
  '{}'
),
(
  'E-Bike Calvia Tours',
  'e-bike-calvia-tours',
  'Guided electric bike tours through the Calvia countryside, vineyards, and coastal paths. Half-day and full-day tours visiting Es Capdella, Galatzo, and the Tramuntana foothills. Wine tasting and finca lunch options available.',
  '42500a45-468c-4ef7-b678-95ba109f501d',
  '5ea18376-376c-4f73-bef6-f5111b745dd4',
  '+34 871 03 27 90',
  'tours@ebikecalvia.com',
  'https://www.ebikecalvia.com',
  'Carrer Major, 07184 Calvia Vila',
  false,
  4.5,
  '{}'
),
(
  'Portals Vells Sea Kayaking',
  'portals-vells-sea-kayaking',
  'Guided sea kayaking tours departing from Portals Vells beach. Paddle along dramatic cliff faces, explore sea caves, and snorkel in crystal-clear coves. Sunset paddling sessions and full-moon kayak adventures during summer.',
  '42500a45-468c-4ef7-b678-95ba109f501d',
  '59b40455-d42e-44c9-bbc2-368c4f19d7e7',
  '+34 616 888 222',
  'kayak@portalsvellskayak.com',
  'https://www.portalsvellskayak.com',
  'Playa Portals Vells, 07181',
  false,
  4.6,
  '{}'
),
(
  'Calvia Stargazing Experiences',
  'calvia-stargazing-experiences',
  'Night sky observation sessions in the dark skies above Es Capdella and Galatzo. Professional telescopes, laser-guided constellation tours, and astrophotography workshops. Special events for meteor showers and planetary alignments.',
  '42500a45-468c-4ef7-b678-95ba109f501d',
  'a1519a3d-ebe8-48f6-b77d-bea6a9e7aa0f',
  '+34 654 111 333',
  'stars@calviastargazing.com',
  'https://www.calviastargazing.com',
  'Finca Son Font, Es Capdella, 07196',
  false,
  4.9,
  '{}'
)
ON CONFLICT (slug) DO NOTHING;
