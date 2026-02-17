/*
  # Puerto Portals Restaurants & Fine Dining

  1. New Business Profiles (Restaurants)
    - Beewi Portals (fresh fish, paellas, seafood)
    - Diablito Puerto Portals (food & music, pizza, open kitchen)
    - Cappuccino Puerto Portals (iconic Mallorca cafe chain)
    - Lila Portals Beach Restaurant & Bar (fine casual dining)
    - Il Tano Portals Nous (authentic Italian, pizza)

  2. New Business Profiles (Fine Dining)
    - Ritzi Puerto Portals (Italian-Mediterranean, waterfront)
    - Wellies Restaurant (Mediterranean since 1986)
    - Lucy Wang (Japanese Newstyle & French Brasserie)
    - Tahini (Japanese sushi and fusion)
    - Adenauer & Co (Restaurant & RoofTop)
    - Collins Restaurant at Portals Hills (boutique hotel fine dining)
    - Um Beach House Mallorca (top-rated beach dining)

  3. Area: Portals Nous
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, email, website, address, latitude, longitude, rating, notes, social_links, is_placeholder)
VALUES
(
  'Ritzi Puerto Portals',
  'ritzi-puerto-portals',
  'Upmarket Italian restaurant with Mediterranean influences in a prime waterfront location overlooking the yachting harbour of Puerto Portals. Open year-round under the direction of Chef Sven Grabolle, serving refined Italian cuisine with spectacular marina views.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 684 104',
  '',
  'https://www.ritzirestaurants.com/',
  'Puerto Portals, Local 1, 07181 Portals Nous',
  39.5265, 2.5533,
  4.3,
  'Italian-Mediterranean fine dining. Open year-round. Chef Sven Grabolle. Prime waterfront location at Puerto Portals marina.',
  '{"instagram": "https://www.instagram.com/ritzi_puertoportals/"}',
  false
),
(
  'Wellies Restaurant',
  'wellies-puerto-portals',
  'A beloved Puerto Portals institution since 1986, Wellies serves refined Mediterranean cuisine with an extensive wine selection and stunning marina views. Known for consistent quality, warm service, and an atmosphere that has made it a favourite of residents and visitors for nearly four decades.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 676 444',
  '',
  'https://www.wellies.com/',
  'Puerto Portals, Local 14, 07181 Portals Nous',
  39.5267, 2.5535,
  4.4,
  'Mediterranean cuisine since 1986. Extensive wine selection. Nearly four decades of excellence. Marina views.',
  '{}',
  false
),
(
  'Lucy Wang Puerto Portals',
  'lucy-wang-puerto-portals',
  'One of the island''s top restaurants for many years, Lucy Wang combines Japanese Newstyle cuisine with French Brasserie flair in the exclusive harbour of Puerto Portals. Ideal for both relaxed lunches and elegant dinners with spectacular views across the bay to Palma.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 676 585',
  '',
  'https://www.lucywangportals.com/',
  'Puerto Portals, Local 63, 07181 Portals Nous',
  39.5264, 2.5531,
  4.5,
  'Japanese Newstyle and French Brasserie fusion. Sushi, sashimi, Asian-European dishes. Views across bay to Palma.',
  '{"instagram": "https://www.instagram.com/lucywangportals/"}',
  false
),
(
  'Tahini Puerto Portals',
  'tahini-puerto-portals',
  'A Japanese sushi and fusion restaurant offering creative Asian cuisine in the heart of Puerto Portals. Known for its striking bamboo entrance and intimate waterway setting, serving an innovative menu of sushi, sashimi, and contemporary Asian-inspired dishes.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 676 025',
  '',
  'https://www.tahinirestaurant.com/',
  'Puerto Portals, 07181 Portals Nous',
  39.5266, 2.5534,
  4.4,
  'Japanese sushi and Asian fusion. Creative contemporary cuisine. Striking bamboo entrance. Open daily lunch and dinner.',
  '{}',
  false
),
(
  'Adenauer & Co',
  'adenauer-co-puerto-portals',
  'Created in Germany by Andreas Adenauer, this is much more than a clothing brand -- it is a lifestyle destination at Puerto Portals. Featuring a restaurant and rooftop bar with European production, highest quality fabrics, and creative graphics alongside innovative dining.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://www.puertoportals.com/en/commercial-guide/',
  'Puerto Portals, 07181 Portals Nous',
  39.5268, 2.5536,
  4.3,
  'German lifestyle brand. Restaurant and rooftop bar. European production, premium quality. Fashion and dining combined.',
  '{}',
  false
),
(
  'Collins Restaurant',
  'collins-restaurant-portals-hills',
  'An authentic culinary dining experience at the Portals Hills Boutique Hotel in Portals Nous. Lively, chic, and full of energy, Collins serves contemporary European cuisine with a Mediterranean accent in an intimate boutique setting above the harbour.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 679 167',
  '',
  'https://www.portals-hills.com/restaurant-portals-nous/',
  'Carrer de Na Nadala, 07181 Portals Nous',
  39.5280, 2.5550,
  4.5,
  'Boutique hotel fine dining. Contemporary European-Mediterranean cuisine. Chic atmosphere with harbour views.',
  '{"instagram": "https://www.instagram.com/portalshills/"}',
  false
),
(
  'Um Beach House Mallorca',
  'um-beach-house-mallorca',
  'The top-rated restaurant in Portals Nous, Um Beach House offers an elevated beach dining experience with direct Mediterranean views. Serving creative contemporary cuisine with local Mallorcan ingredients in a relaxed yet sophisticated waterfront setting.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 871 024 060',
  '',
  'https://umbeachhouse.com/',
  'Playa de Portals Nous, 07181 Portals Nous',
  39.5260, 2.5525,
  4.6,
  'Top-rated in Portals Nous. Elevated beach dining. Creative Mediterranean cuisine with local ingredients. Direct sea views.',
  '{"instagram": "https://www.instagram.com/umbeachhouse/"}',
  false
),
(
  'Beewi Portals',
  'beewi-portals',
  'A restaurant with the best views of Portals, specializing in fresh market fish, grilled fish and seafood, paellas and fideuas. Open kitchen all day with spectacular views, perfect for enjoying refreshing cocktails and wonderful sangrias.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://www.puertoportals.com/en/commercial-guide/',
  'Puerto Portals, 07181 Portals Nous',
  39.5263, 2.5530,
  4.3,
  'Fresh market fish, grilled seafood, paellas, fideuas. Open kitchen all day. Cocktails and sangrias. Best views of Portals.',
  '{}',
  false
),
(
  'Diablito Puerto Portals',
  'diablito-puerto-portals',
  'The first of seven Diablito locations across Mallorca, and the largest. Known for quality fast food with a gourmet twist, open from 9am to midnight daily. The kitchen runs uninterrupted, serving breakfast through late dinner with a fun, energetic atmosphere.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://diablito.es/en/',
  'Puerto Portals, Local 48, 07181 Portals Nous',
  39.5269, 2.5537,
  4.2,
  'First and largest of 7 Mallorca locations. Open 9am-midnight. Breakfast through late dinner. Quality fast food, gourmet twist.',
  '{"instagram": "https://www.instagram.com/diablitomallorca/"}',
  false
),
(
  'Cappuccino Puerto Portals',
  'cappuccino-puerto-portals',
  'The iconic Mallorca cafe chain''s Puerto Portals location, situated on Placa de Portals and open until 11pm. Serving breakfast, brunch, lunch and dinner in the signature Cappuccino style that has become a beloved island institution.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 677 293',
  '',
  'https://www.cappuccino.com/',
  'Placa de Portals, 07181 Portals Nous',
  39.5270, 2.5538,
  4.3,
  'Iconic Mallorca cafe chain. Open until 11pm. Breakfast, brunch, lunch and dinner. Placa de Portals location.',
  '{"instagram": "https://www.instagram.com/cappuccinograndcafe/"}',
  false
),
(
  'Lila Portals Beach Restaurant & Bar',
  'lila-portals-beach',
  'Combining high-quality cuisine with personal service in a relaxed atmosphere overlooking the stunning Mediterranean bay of Portals Nous. Whether culinary classics with meat, seafood, or modern vegan creations, everyone finds their favourite dish at Lila Portals.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://www.lila-portals.com/en/',
  'Playa de Portals Nous, 07181 Portals Nous',
  39.5261, 2.5526,
  4.4,
  'Beach restaurant and bar. Fine and casual dining. Meat, seafood, vegan options. Mediterranean bay views. Daily changing lunch menu.',
  '{"instagram": "https://www.instagram.com/lilaportals/"}',
  false
),
(
  'Il Tano Portals Nous',
  'il-tano-portals-nous',
  'Authentic Italian restaurant in Portals Nous where you eat real Italian food. The staff, both pizza chefs and waiters, are largely Italian, and the pizza is excellent with high-quality ingredients and proper Neapolitan technique.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  '',
  'Portals Nous, 07181 Calvia',
  39.5275, 2.5542,
  4.5,
  'Authentic Italian cuisine. Italian staff and pizza chefs. Neapolitan-style pizza. High-quality ingredients.',
  '{}',
  false
)
ON CONFLICT (slug) DO NOTHING;
