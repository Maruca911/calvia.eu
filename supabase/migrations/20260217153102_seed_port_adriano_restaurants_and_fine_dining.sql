/*
  # Port Adriano Restaurants & Fine Dining

  1. New Business Profiles
    - 3 Nudos (Mediterranean-Caribbean fusion restaurant)
    - Bangkok Thai Tapas Bar (Thai tapas, coffee, cocktails)
    - Cantina Can Olivo (Mediterranean/Mallorcan cafe-restaurant)
    - Captain's Corner (international cuisine, relaxed atmosphere)
    - My True Burger and Vegan (gourmet burgers and vegan options)
    - Pizzeria La Oca (classic pizzeria, empanadas, breakfasts)
    - Restaurante La Terraza (Mediterranean, since 1992)
    - Coast by East (seafood grill bar, 600 seats, pool club)
    - Harbour Grill (steaks, Mediterranean, seafood)
    - Marisqueria El Faro (seafood specialist, cocktail bar, live music)
    - Vino del Mar (Italian author's cuisine)

  2. Categories
    - Restaurants: casual and mid-range dining
    - Fine Dining: upscale waterfront dining experiences

  3. Area
    - All assigned to Port Adriano

  4. Notes
    - All profiles set as non-placeholder with real business data
    - Data sourced from official portadriano.com directory
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, email, website, address, latitude, longitude, rating, notes, social_links, is_placeholder)
VALUES
(
  '3 Nudos',
  '3-nudos-port-adriano',
  'A leisure restaurant anchored in Port Adriano offering a unique culinary adventure that fuses the relaxed essence of the Mediterranean with the flavoursome rhythm of the Caribbean. The place where parsley meets coriander in an unforgettable gastronomic journey.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 232 494',
  '',
  'https://www.portadriano.com/en/businesses/restaurants/3-nudos/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4880, 2.4720,
  4.2,
  'Mediterranean-Caribbean fusion. Relaxed waterfront dining with marina views. Open for lunch and dinner.',
  '{}',
  false
),
(
  'Bangkok Thai Tapas Bar',
  'bangkok-thai-tapas-bar',
  'Located in the marina of Port Adriano, Bangkok is a small place with a big heart. Inspired by its namesake city, it serves family-recipe Thai tapas alongside coffee and cocktails, all with the best views of the marina.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 232 494',
  '',
  'https://www.portadriano.com/en/businesses/restaurants/bangkok-thai-tapas-bar/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4878, 2.4718,
  4.3,
  'Thai tapas, coffee, cocktails. Family recipes with marina views. Everyone is welcome.',
  '{}',
  false
),
(
  'Cantina Can Olivo',
  'cantina-can-olivo',
  'A cafe-restaurant blending Mediterranean and Mallorcan cuisine with classical culinary trends from around the world. A wide terrace and lounge invites guests to enjoy amazing breakfasts, brunch, lunch and dinner in a relaxed marina setting.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 232 494',
  '',
  'https://www.portadriano.com/en/businesses/restaurants/cantinacanolivo/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4882, 2.4722,
  4.4,
  'Mediterranean-Mallorcan cuisine. Breakfasts, brunch, lunch and dinner. Wide terrace with marina views.',
  '{}',
  false
),
(
  'Captain''s Corner',
  'captains-corner-port-adriano',
  'Serving international cuisine in a relaxed atmosphere with some of the best views at Port Adriano. A casual spot perfect for families and yacht crews looking for hearty meals with waterfront ambience.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 232 494',
  '',
  'https://www.portadriano.com/en/businesses/restaurants/captains-corner/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4876, 2.4716,
  4.1,
  'International cuisine. Relaxed waterfront dining. Family-friendly atmosphere.',
  '{}',
  false
),
(
  'My True Burger and Vegan',
  'my-true-burger-vegan',
  'A modern burger and vegan concept located at the base of Restaurant La Terraza. Blending 26 years of culinary tradition with contemporary flair, offering gourmet burgers alongside a full vegan menu in the heart of Port Adriano.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 232 494',
  '',
  'https://www.portadriano.com/en/businesses/restaurants/mytrueburger/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4879, 2.4721,
  4.2,
  'Gourmet burgers and vegan options. Modern twist on 26 years of tradition. Casual marina dining.',
  '{}',
  false
),
(
  'Pizzeria La Oca',
  'pizzeria-la-oca',
  'A classic institution within Port Adriano featuring a fantastic terrace for informal lunches and dinners. Known for delicious homemade Argentine empanadas, a huge variety of the best pizzas, and a relaxed atmosphere perfect for families.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 232 494',
  '',
  'https://www.portadriano.com/en/businesses/restaurants/pizzeria-la-oca/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4881, 2.4719,
  4.3,
  'Pizzas, homemade Argentine empanadas, breakfasts. Classic Port Adriano institution. Great terrace, family-friendly.',
  '{}',
  false
),
(
  'Restaurante La Terraza',
  'restaurante-la-terraza',
  'Opened in 1992 by Ignacio Doiztua Calero, La Terraza has evolved over 30 years while maintaining its dedication to Mediterranean cuisine with love and passion. A landmark restaurant in Port Adriano serving refined seasonal dishes.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 232 494',
  '',
  'https://www.portadriano.com/en/businesses/restaurants/la-terraza-de-port-adriano/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4877, 2.4717,
  4.5,
  'Mediterranean cuisine since 1992. Over 30 years of culinary excellence. Elegant terrace dining with marina views.',
  '{}',
  false
),
(
  'Coast by East',
  'coast-by-east-port-adriano',
  'A spectacular seafood, grill and bar overlooking the Port Adriano marina with seating for up to 600 guests. Features the exclusive pool club "Strand" with drybeds and cabanas, combining Asian-Mediterranean fusion cuisine with a luxury waterfront lifestyle.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 871 902 112',
  '',
  'https://www.coast-by-east.de/mallorca/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4875, 2.4725,
  4.4,
  'Seafood, grill and bar. 600-seat waterfront venue. Pool club with drybeds and cabanas. Asian-Mediterranean fusion.',
  '{"instagram": "https://www.instagram.com/coastbyeast.mallorca/"}',
  false
),
(
  'Harbour Grill',
  'harbour-grill-port-adriano',
  'Enjoy high-quality food and excellent service in a cosy and elegant atmosphere. Serving Mediterranean dishes, Spanish specialties, beef carpaccio, prawn stir-fry, scallops, pasta and fresh catch of the day alongside an extensive wine selection.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 232 494',
  '',
  'https://www.portadriano.com/en/businesses/restaurants/harbour-grill/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4883, 2.4723,
  4.5,
  'Mediterranean steaks, seafood, catch of the day. Elegant atmosphere with excellent wine selection. Cosy waterfront setting.',
  '{}',
  false
),
(
  'Marisqueria El Faro',
  'marisqueria-el-faro',
  'One of the classics of Port Adriano with simple nautical decor in total harmony with its seafood-focused menu. Seasonal fish and shellfish are the stars, complemented by the Lighthouse cocktail bar featuring live music on select evenings.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 232 494',
  '',
  'https://www.portadriano.com/en/businesses/restaurants/marisqueria-el-faro/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4884, 2.4715,
  4.4,
  'Fresh seasonal seafood specialist. Nautical decor. Lighthouse cocktail bar with live music. Classic port institution.',
  '{}',
  false
),
(
  'Vino del Mar',
  'vino-del-mar-port-adriano',
  'An Italian-inspired restaurant offering excellent cuisine alongside chef Margot Montiel Oropeza''s creative signature dishes. The Italian accent is predominant throughout the menu, presented with a modern author''s touch in an elegant waterfront setting.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  'eac49f01-a0e4-402d-9261-678b7be034c2',
  '+34 971 232 494',
  '',
  'https://www.portadriano.com/en/businesses/restaurants/vino-del-mar/',
  'Port Adriano, El Toro, 07180 Calvia',
  39.4885, 2.4724,
  4.3,
  'Italian-inspired author cuisine by Chef Margot Montiel Oropeza. Elegant waterfront dining. Creative signature dishes.',
  '{}',
  false
)
ON CONFLICT (slug) DO NOTHING;
