/*
  # Seed Gym & Fitness Center Business Profiles

  1. New Businesses (30 entries)
    - 30 gyms and fitness centers across Calvia municipality
    - Category: Fitness Centers (7c21e2d9-4a52-4dd2-9e7f-98da030880f5)
    - Includes boutique gyms, CrossFit, wellness clubs, hotel gyms, and sports centres
    - Areas mapped: Son Caliu, Palmanova, Calvia Vila, Portals Nous, Santa Ponca, Magaluf, Peguera, Bendinat, Ses Illetes

  2. Data Notes
    - Ratings extracted from CSV rating field (e.g. 4.8/High -> 4.8)
    - Slugs auto-generated from business names
    - is_placeholder set to false for all entries
    - Vague addresses ("Near Calvia") mapped to Calvia Vila area
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, website, address, rating, notes, is_placeholder, social_links)
VALUES
  ('Fit Club Mallorca', 'fit-club-mallorca', 'Boutique gym with personal training near luxury villas in Son Caliu.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', 'a9cccc31-713d-4ad0-a901-11ed36c34683', '+34 971 68 12 00', 'fitclubmallorca.com', 'Carrer Castello, Son Caliu', 4.8, 'HNWI-friendly: Boutique gym, personal training; near luxury villas.', false, '{}'),
  ('CrossFit Mallorca', 'crossfit-mallorca', 'Strength conditioning and group fitness classes near Palmanova.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '611170cd-47c1-4060-a226-fad26428df6a', '+34 971 13 08 00', 'crossfitmallorca.com', 'Near Palmanova', 4.7, 'Strength conditioning; group classes.', false, '{}'),
  ('Viva Gym', 'viva-gym', 'Modern equipment and affordable premium memberships in Calvia.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 68 16 00', 'vivagym.es', 'Near Calvià', 4.6, 'Modern equipment; affordable premium.', false, '{}'),
  ('The Club', 'the-club-calvia', 'Exclusive fitness club with HNWI networking opportunities.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 40 21 00', 'theclub.com', 'Near Calvià', 4.5, 'Exclusive access; HNWI networking.', false, '{}'),
  ('Sporting Club Bendinat', 'sporting-club-bendinat', 'Multisport facility with luxury spa integration in Portals Nous.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '90784574-076e-471d-b61a-d18422d0f69f', '+34 971 67 52 00', 'sportingclubbendinat.com', 'Urbanización Bendinat, Portals Nous', 4.7, 'Multisport; luxury spa integration.', false, '{}'),
  ('Fraile Gym', 'fraile-gym', 'Local favourite gym with a strong wellness focus.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 81 00', 'frailegym.com', 'Near Calvià', 4.6, 'Local favorite; wellness focus.', false, '{}'),
  ('Illes Gym', 'illes-gym', 'Open daily with day passes available for tourists in Son Bugadelles.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 69 40 00', 'illes.com', 'Son Bugadelles', 4.5, 'Open daily; day passes for tourists.', false, '{}'),
  ('Happy Gym', 'happy-gym', 'Family-friendly gym with holistic wellness programmes.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 68 13 00', 'happygym.com', 'Near Calvià', 4.7, 'Family-friendly; holistic wellness.', false, '{}'),
  ('Block HQ', 'block-hq', 'Fitness classes and ice bath recovery sessions in Santa Ponsa.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 69 40 71', 'blockhq.com', 'Avinguda del Rei Jaume I, Santa Ponsa', 4.6, 'Fitness classes; ice baths.', false, '{}'),
  ('Choice Training Club', 'choice-training-club', 'Personal trainers specialising in vitality and performance.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 68 16 00', 'choicetraining.com', 'Near Calvià', 4.5, 'Personal trainers; HNWI vitality.', false, '{}'),
  ('Donna Health & Spa', 'donna-health-spa', 'Women-focused fitness and luxury spa experiences.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 67 75 00', 'donnahealth.com', 'Near Calvià', 4.7, 'Women-focused; luxury spa.', false, '{}'),
  ('Shinkai', 'shinkai-fitness', 'Yoga, pilates, and mindful movement studio.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 86 00', 'shinkai.com', 'Near Calvià', 4.6, 'Yoga and pilates.', false, '{}'),
  ('Fit 4 Life Mallorca', 'fit-4-life-mallorca', 'Modern gym machines and fun training zones.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 87 92 00', 'fit4life.com', 'Near Calvià', 4.5, 'Modern machines; fun training zones.', false, '{}'),
  ('Aysla Wellness Club', 'aysla-wellness-club', 'Holistic wellness with premium facilities at Kimpton Aysla, Santa Ponsa.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 62 99 00', 'ayslawellnessclub.com', 'Kimpton Aysla, Santa Ponsa', 4.7, 'Holistic; premium facilities.', false, '{}'),
  ('The Fit Family Tree', 'the-fit-family-tree', 'Personal training focused on family fitness and bonding.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 00 00 00', 'thefitfamilytree.com', 'Avinguda de Joan Miró 327, Palma (near Calvià)', 4.6, 'Personal training; family bonds.', false, '{}'),
  ('Mallorca Country Club', 'mallorca-country-club', 'Tennis, padel, and high-end fitness integrated in Santa Ponsa.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 69 40 00', 'mallorcacountryclub.es', 'Avinguda del Golf, Santa Ponsa', 4.5, 'Tennis/padel integrated; high-end.', false, '{}'),
  ('Palma Tennis Club', 'palma-tennis-club', 'Sports hub offering tennis and fitness near Calvia.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 40 21 00', 'palmatennis.com', 'Palma', 4.7, 'Sports hub.', false, '{}'),
  ('Soller Tennis Club', 'soller-tennis-club', 'Scenic tennis club with wellness facilities near Calvia.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 63 40 00', 'sollerclub.com', 'Sóller (near Calvià)', 4.6, 'Scenic; wellness.', false, '{}'),
  ('Bendinat Urban Country Club', 'bendinat-urban-country-club', 'Luxury fitness retreat in the Bendinat area.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '68dd13d8-2b72-4a0c-8477-c0e265a6f3de', '+34 971 67 52 00', 'bendinatclub.com', 'Bendinat', 4.5, 'Luxury retreat.', false, '{}'),
  ('Profitness', 'profitness-calvia', 'Professional training and gym near Calvia.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 68 16 00', 'profitness.com', 'Near Calvià', 4.7, 'Professional training.', false, '{}'),
  ('Megasport Centre', 'megasport-centre', 'Large multi-purpose sports facility near Calvia.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 08 00', 'megasport.com', 'Near Calvià', 4.6, 'Large facility.', false, '{}'),
  ('The Box Mallorca', 'the-box-mallorca', 'CrossFit-style training facility near Calvia.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 68 12 00', 'thebox.com', 'Near Calvià', 4.5, 'CrossFit style.', false, '{}'),
  ('Beach Fit Social', 'beach-fit-social', 'Outdoor beach training sessions in Palmanova.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '611170cd-47c1-4060-a226-fad26428df6a', '+34 971 13 08 00', 'beachfit.com', 'Palmanova beach', 4.7, 'Outdoor training; fun for tourists.', false, '{}'),
  ('Municipal Sports Centre Magaluf', 'municipal-sports-centre-magaluf', 'Public gym with affordable rates in Magaluf.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '2a8543a1-49fb-4656-a49f-ec59320b37e5', '+34 971 13 10 00', 'calviadeportes.com', 'Magaluf', 4.6, 'Public gym; affordable.', false, '{}'),
  ('Dreams Calvia Mallorca Gym', 'dreams-calvia-mallorca-gym', 'State-of-the-art hotel gym in Magaluf.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '2a8543a1-49fb-4656-a49f-ec59320b37e5', '+34 971 13 03 12', 'dreamsresorts.com', 'Av. Notario Alemany 32, Magaluf', 4.5, 'Hotel gym; state-of-the-art.', false, '{}'),
  ('Elba Sunset Gym', 'elba-sunset-gym', 'Gym with thalasso spa integration in Torrenova.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5c6cbb3e-1fc5-41bf-b619-44c0aefb5f9f', '+34 971 68 13 66', 'elbahotels.com', 'Carrer Torrenova, Magaluf', 4.7, 'Thalasso integrated.', false, '{}'),
  ('Tent Calvia Beach Gym', 'tent-calvia-beach-gym', 'Fitness hub near Calvia beach in Magaluf.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '2a8543a1-49fb-4656-a49f-ec59320b37e5', '+34 971 13 09 00', 'tenthotels.com', 'Magaluf', 4.6, 'Fitness hub.', false, '{}'),
  ('Mallorca Select Gym', 'mallorca-select-gym', 'Elite personal training near Calvia.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 68 16 00', 'mallorcaselect.com', 'Near Calvià', 4.5, 'Elite training.', false, '{}'),
  ('Calvia Sports Centres', 'calvia-sports-centres', 'Over 50 public sports facilities including athletics and gyms across Calvia.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 00 00', 'calviadeportes.com', 'Various in Calvià', 4.7, '+50 facilities; athletics/gyms.', false, '{}'),
  ('Maison CODAGE Aysla', 'maison-codage-aysla', 'Wellness oasis at Kimpton Aysla resort in Santa Ponsa.', '7c21e2d9-4a52-4dd2-9e7f-98da030880f5', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 62 99 00', 'codageparis.com', 'Kimpton Aysla, Santa Ponsa', 4.6, 'Wellness oasis.', false, '{}')
ON CONFLICT (slug) DO NOTHING;
