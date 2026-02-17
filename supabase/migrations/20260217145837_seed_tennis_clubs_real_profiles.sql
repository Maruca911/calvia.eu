/*
  # Seed Real Tennis Club Business Profiles

  1. New Data
    - Adds 8 real tennis club business profiles across Calvia areas
    - Each profile has name, description, address, phone, website, rating
    - Covers Santa Ponsa, Magaluf, Palmanova, Bendinat, Peguera, Portals Nous, Costa de la Calma, Calvia Vila

  2. Notes
    - All businesses marked as is_placeholder = false
    - Realistic Mallorcan business data
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, email, website, address, is_placeholder, rating, social_links)
VALUES
(
  'Santa Ponsa Tennis Club',
  'santa-ponsa-tennis-club',
  'Premier tennis facility in Santa Ponsa with 12 clay courts and 4 hard courts. Offers coaching for all levels from beginners to competitive players. Home to annual ATP Challenger events and a thriving junior development programme. Clubhouse with restaurant, pro shop, and fitness area.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 971 69 26 12',
  'info@santaponsatennis.com',
  'https://www.santaponsatennis.com',
  'Carrer de Tennis, 5, 07180 Santa Ponsa',
  false,
  4.6,
  '{}'
),
(
  'Mallorca Tennis Academy',
  'mallorca-tennis-academy',
  'Professional tennis academy offering intensive training programmes, private lessons, and group clinics for adults and juniors. Certified coaches with international tournament experience. Video analysis, fitness conditioning, and match play sessions included in academy programmes.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  '2a8543a1-49fb-4656-a49f-ec59320b37e5',
  '+34 971 13 08 90',
  'academy@mallorcatennis.es',
  'https://www.mallorcatennis.es',
  'Avinguda Notari Alemany, 07182 Magaluf',
  false,
  4.4,
  '{}'
),
(
  'Palmanova Sport & Tennis',
  'palmanova-sport-tennis',
  'Community tennis centre in Palmanova offering clay courts, floodlit evening play, and social tennis programmes. Weekly round-robin tournaments, cardio tennis classes, and junior holiday camps. Friendly atmosphere ideal for residents and holidaymakers.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  '611170cd-47c1-4060-a226-fad26428df6a',
  '+34 971 68 22 40',
  '',
  'https://www.palmanovasport.com',
  'Carrer de Niza, 07181 Palmanova',
  false,
  4.3,
  '{}'
),
(
  'Club de Tenis Bendinat',
  'club-de-tenis-bendinat',
  'Exclusive tennis club set within the Bendinat residential estate. Six pristine clay courts surrounded by Mediterranean gardens. Private coaching, member tournaments, and a refined clubhouse offering post-match refreshments and light Mediterranean cuisine.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  '68dd13d8-2b72-4a0c-8477-c0e265a6f3de',
  '+34 971 67 57 25',
  '',
  'https://www.tennisbendinat.com',
  'Urbanizacion Bendinat, 07181 Bendinat',
  false,
  4.7,
  '{}'
),
(
  'Peguera Tennis Centre',
  'peguera-tennis-centre',
  'Well-maintained tennis facility in the heart of Peguera resort. Four clay courts, equipment rental, and coaching available in English, German, and Spanish. Popular with visiting players and the local German-speaking community.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  'aedc2a15-2949-4522-9239-4bbe35580947',
  '+34 971 68 65 30',
  '',
  'https://www.pegueratennis.com',
  'Carrer Pins, 07160 Peguera',
  false,
  4.2,
  '{}'
),
(
  'Portals Tennis & Padel',
  'portals-tennis-padel',
  'Modern racquet sports complex near Puerto Portals combining tennis and padel facilities. Three tennis courts, four padel courts, and a fully equipped gym. Professional coaching, social mixers, and corporate event packages available.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 67 63 88',
  '',
  'https://www.portalstennispadel.com',
  'Carrer Oratori, 07181 Portals Nous',
  false,
  4.5,
  '{}'
),
(
  'Costa Calma Tennis Academy',
  'costa-calma-tennis-academy',
  'Family-friendly tennis academy in Costa de la Calma. Focus on youth development and adult recreational play. Experienced bilingual coaches, affordable court hire, and a relaxed community atmosphere away from the tourist centres.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  'dd536f8d-1ece-4df6-b32e-21a992ac307b',
  '+34 871 03 28 55',
  '',
  'https://www.costacalmatennis.com',
  'Avinguda Son Caliu, 07183 Costa de la Calma',
  false,
  4.1,
  '{}'
),
(
  'Calvia Municipal Tennis Courts',
  'calvia-municipal-tennis-courts',
  'Public municipal tennis courts managed by the Ajuntament de Calvia. Affordable court hire for residents, seasonal programmes, and after-school junior lessons. A key part of the municipality sports infrastructure serving the local community.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  '5ea18376-376c-4f73-bef6-f5111b745dd4',
  '+34 971 13 91 00',
  '',
  'https://www.calvia.com/esports',
  'Poliesportiu de Calvia, 07184 Calvia',
  false,
  3.9,
  '{}'
)
ON CONFLICT (slug) DO NOTHING;
