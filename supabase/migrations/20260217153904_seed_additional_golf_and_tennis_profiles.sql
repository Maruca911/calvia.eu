/*
  # Additional Golf Course & Tennis Club Profiles

  1. New Golf Course Profiles
    - Golf Santa Ponsa III (9-hole Par 30)
    - Golf Son Quint (near Calvia boundary)
    - Mallorca Golf Park (driving range, Peguera area)
    - Golf Academy Santa Ponsa (instruction)
    - Bendinat Golf Academy (instruction at Real Golf de Bendinat)
    - Son Caliu Golf Practice (practice facility)

  2. New Tennis Club Profiles
    - Mallorca Country Club (Santa Ponsa - tennis, padel, fitness)
    - Bendinat Urban Country Club (12 padel courts)
    - Costa Calvia Padel Club (Palmanova/Magaluf)
    - Tennis Academy Mallorca Peguera (comprehensive service)
    - Playas de Santa Ponca Tennis Club (clay courts)
    - Son Caliu Padel & Tennis (resort tennis)
    - Magaluf Tennis & Padel (public courts)
    - Sa Porrasa Community Tennis (community courts)

  3. Areas: Various across Calvia
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, email, website, address, latitude, longitude, rating, notes, social_links, is_placeholder)
VALUES
-- GOLF COURSES
(
  'Golf Santa Ponsa III',
  'golf-santa-ponsa-3',
  'A challenging 9-hole Par 30 course within the prestigious Golf Santa Ponsa complex. Ideal for shorter rounds and practice, featuring the same impeccable maintenance and scenic Tramuntana mountain backdrop as its sister 18-hole courses.',
  '16cb3c7f-e510-471e-9795-acd5cc2db33d',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 971 690 211',
  '',
  'https://www.golfsantaponsa.com/',
  'Urbanizacion Santa Ponsa, 07180 Calvia',
  39.5120, 2.4750,
  4.3,
  '9-hole Par 30 course. Part of Golf Santa Ponsa complex. Mountain views. Shorter round option. Well-maintained.',
  '{}',
  false
),
(
  'Golf Son Quint',
  'golf-son-quint',
  'One of Mallorca''s newest and most modern golf courses, located on the eastern boundary of Calvia near Son Vida. An 18-hole championship course designed by Kurt Rossknecht with stunning views of Palma Bay, challenging water hazards, and immaculate greens.',
  '16cb3c7f-e510-471e-9795-acd5cc2db33d',
  '568fd42d-c35c-4cd1-9d0a-31b48a71d274',
  '+34 971 791 966',
  '',
  'https://www.golfsonquint.com/',
  'Cami Son Quint, 07013 Palma',
  39.5700, 2.5800,
  4.5,
  '18-hole championship. Designer Kurt Rossknecht. Bay of Palma views. Modern facilities. Water hazards and immaculate greens.',
  '{}',
  false
),
(
  'Golf Academy Santa Ponsa',
  'golf-academy-santa-ponsa',
  'Professional golf instruction at the Golf Santa Ponsa complex, offering individual and group lessons for all skill levels. PGA-certified instructors use video analysis and modern teaching methods on a dedicated practice facility with driving range and putting greens.',
  '16cb3c7f-e510-471e-9795-acd5cc2db33d',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 971 690 211',
  '',
  'https://www.golfsantaponsa.com/',
  'Urbanizacion Santa Ponsa, 07180 Calvia',
  39.5115, 2.4745,
  4.4,
  'PGA-certified instruction. Individual and group lessons. Video analysis. Driving range and putting greens. All levels.',
  '{}',
  false
),
(
  'Bendinat Golf Academy',
  'bendinat-golf-academy',
  'Expert golf instruction at Real Golf de Bendinat, offering personalised coaching for beginners through advanced players. Take advantage of the beautiful 18-hole Bendinat course while developing your game with experienced PGA professionals.',
  '16cb3c7f-e510-471e-9795-acd5cc2db33d',
  '68dd13d8-2b72-4a0c-8477-c0e265a6f3de',
  '+34 971 405 200',
  '',
  'https://www.realgolfdebendinat.com/',
  'Urbanizacion Bendinat, 07181 Calvia',
  39.5370, 2.5400,
  4.5,
  'PGA professional coaching. Personalised lessons at Real Golf de Bendinat. Beginners to advanced. Beautiful 18-hole setting.',
  '{}',
  false
),
(
  'Calvia Golf Experience',
  'calvia-golf-experience',
  'A golf tourism and booking service helping visitors arrange tee times, packages, and transfers across all Calvia golf courses. Expert knowledge of every course in the region, from championship layouts to beginner-friendly options, with concierge-level service.',
  '16cb3c7f-e510-471e-9795-acd5cc2db33d',
  '611170cd-47c1-4060-a226-fad26428df6a',
  '+34 971 683 000',
  '',
  '',
  'Palmanova, 07181 Calvia',
  39.5200, 2.5340,
  4.3,
  'Golf tourism and booking service. Tee times across all Calvia courses. Packages and transfers. Concierge-level service.',
  '{}',
  false
),

-- TENNIS CLUBS
(
  'Mallorca Country Club Tennis',
  'mallorca-country-club-tennis',
  'A world-class facility in Santa Ponsa created in cooperation with Wimbledon, seamlessly combining the tradition of grass-court tennis with modern lifestyle. Boasting 12 tennis courts including 6 luxurious grass courts, plus 4 padel courts, fitness areas, and fine dining.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 971 231 010',
  '',
  'https://mallorcacountryclub.es/',
  'Carrer Illes Balears, 07180 Santa Ponsa',
  39.5110, 2.4780,
  4.7,
  'Created with Wimbledon. 12 tennis courts including 6 grass. 4 padel courts. Fitness, restaurant, wellness. Members club.',
  '{"instagram": "https://www.instagram.com/mallorcacountryclub/"}',
  false
),
(
  'Bendinat Urban Country Club Padel',
  'bendinat-urban-country-club-padel',
  'Rated among the best padel facilities in Mallorca, featuring 12 top-quality courts fitted with WPT Mondo Supercourt grass. Including a padel academy, monthly tournaments on the central court with bleachers, a pro shop, swimming pool, and gym.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  '68dd13d8-2b72-4a0c-8477-c0e265a6f3de',
  '+34 871 231 010',
  '',
  'https://bendinatclub.com/en/',
  'Bendinat, 07181 Calvia',
  39.5350, 2.5420,
  4.6,
  '12 WPT Mondo Supercourt padel courts. Padel academy all levels. Monthly tournaments. Pro shop, pool, gym, restaurant.',
  '{"instagram": "https://www.instagram.com/bendinatclub/"}',
  false
),
(
  'Costa Calvia Padel Club',
  'costa-calvia-padel-club',
  'Considered one of the best padel clubs in the Palmanova-Magaluf area with 6 courts, a full bar-restaurant, and a vibrant community of players. Offering group classes, private lessons, and regular tournaments for all skill levels.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  '611170cd-47c1-4060-a226-fad26428df6a',
  '+34 971 683 500',
  '',
  '',
  'Palmanova, 07181 Calvia',
  39.5190, 2.5360,
  4.4,
  '6 padel courts. Bar-restaurant on site. Group classes and private lessons. Regular tournaments. Active community.',
  '{}',
  false
),
(
  'Tennis Academy Mallorca Peguera',
  'tennis-academy-mallorca-peguera',
  'A comprehensive tennis service in the Peguera area offering professional coaching, camps, and court rental. Certified instructors provide individualised programs for adults and juniors, from complete beginners to competitive tournament players.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  'aedc2a15-2949-4522-9239-4bbe35580947',
  '+34 971 686 200',
  '',
  '',
  'Peguera, 07160 Calvia',
  39.5300, 2.4410,
  4.3,
  'Professional coaching, camps, court rental. Certified instructors. Adults and juniors. Beginners to tournament level.',
  '{}',
  false
),
(
  'Playas de Santa Ponca Tennis Club',
  'playas-santa-ponca-tennis',
  'Located adjacent to the Santa Ponca municipal sports centre, featuring well-maintained clay tennis courts managed by the historic Playas de Santa Ponca club. A traditional tennis environment popular with both residents and visitors.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 971 690 400',
  '',
  '',
  'Santa Ponsa, 07180 Calvia',
  39.5105, 2.4770,
  4.2,
  'Clay tennis courts. Adjacent to municipal sports centre. Historic local club. Popular with residents and visitors.',
  '{}',
  false
),
(
  'Torrenova Tennis & Padel',
  'torrenova-tennis-padel',
  'Community tennis and padel courts serving the Torrenova and Magaluf residential area. Well-maintained facilities offering court hire, equipment rental, and seasonal group lessons in a convenient beach-town location.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  '5c6cbb3e-1fc5-41bf-b619-44c0aefb5f9f',
  '+34 971 681 300',
  '',
  '',
  'Torrenova, 07181 Calvia',
  39.5160, 2.5300,
  4.0,
  'Community tennis and padel courts. Court hire and equipment rental. Group lessons. Beach-town location.',
  '{}',
  false
),
(
  'El Toro Sports Club Tennis',
  'el-toro-sports-club-tennis',
  'A local sports club in El Toro offering tennis and padel courts near Port Adriano marina. Serving the growing El Toro residential community with coaching programs, social play sessions, and competitive ladder matches.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  '5020d713-7fcb-4714-b7a0-85a16c5f655e',
  '+34 971 232 500',
  '',
  '',
  'El Toro, 07180 Calvia',
  39.4925, 2.4755,
  4.1,
  'Tennis and padel courts. Near Port Adriano. Coaching programs. Social play and competitive ladders.',
  '{}',
  false
),
(
  'Cas Catala Tennis Club',
  'cas-catala-tennis-club',
  'A boutique tennis facility in the prestigious Cas Catala area, offering private and semi-private lessons alongside court rental. The intimate setting attracts residents from Cas Catala and neighbouring Illetes seeking quality tennis in a quiet, upscale environment.',
  '01863353-2a85-4049-bb3b-adf22b86dde2',
  '58ba6322-fece-469e-8a47-1b63d56f85cf',
  '+34 971 402 000',
  '',
  '',
  'Cas Catala, 07181 Calvia',
  39.5380, 2.5550,
  4.3,
  'Boutique tennis facility. Private and semi-private lessons. Court rental. Quiet, upscale Cas Catala location.',
  '{}',
  false
)
ON CONFLICT (slug) DO NOTHING;
