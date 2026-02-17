/*
  # Seed demo review users and reviews

  1. New Data
    - Creates 15 auth users for demo review purposes
    - Creates matching user_profiles
    - Adds ~150 reviews across prominent business categories

  2. Modified Tables
    - `auth.users` - Inserts demo reviewer accounts
    - `user_profiles` - Inserts demo reviewer display names
    - `reviews` - Inserts reviews with realistic ratings and content

  3. Important Notes
    - Uses fixed UUIDs for reproducibility
    - Demo accounts use @demo.calvia.app emails (non-functional)
    - Reviews are spread across restaurants, fine dining, golf, yacht, spa, hotels, etc.
*/

INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, role, aud, instance_id, created_at, updated_at)
VALUES
  ('a0000001-0000-0000-0000-000000000001', 'sarah.m@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000002', 'thomas.k@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000003', 'maria.g@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000004', 'james.w@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000005', 'elena.r@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000006', 'peter.s@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000007', 'anna.l@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000008', 'michael.b@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000009', 'sofia.d@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000010', 'henrik.n@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000011', 'caroline.f@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000012', 'david.a@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000013', 'isabelle.p@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000014', 'robert.h@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now()),
  ('a0000001-0000-0000-0000-000000000015', 'laura.c@demo.calvia.app', crypt('demo-password-not-real', gen_salt('bf')), now(), 'authenticated', 'authenticated', '00000000-0000-0000-0000-000000000000', now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO auth.identities (id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at)
SELECT id, id, jsonb_build_object('sub', id::text, 'email', email), 'email', id::text, now(), now(), now()
FROM auth.users
WHERE id IN (
  'a0000001-0000-0000-0000-000000000001',
  'a0000001-0000-0000-0000-000000000002',
  'a0000001-0000-0000-0000-000000000003',
  'a0000001-0000-0000-0000-000000000004',
  'a0000001-0000-0000-0000-000000000005',
  'a0000001-0000-0000-0000-000000000006',
  'a0000001-0000-0000-0000-000000000007',
  'a0000001-0000-0000-0000-000000000008',
  'a0000001-0000-0000-0000-000000000009',
  'a0000001-0000-0000-0000-000000000010',
  'a0000001-0000-0000-0000-000000000011',
  'a0000001-0000-0000-0000-000000000012',
  'a0000001-0000-0000-0000-000000000013',
  'a0000001-0000-0000-0000-000000000014',
  'a0000001-0000-0000-0000-000000000015'
)
ON CONFLICT DO NOTHING;

INSERT INTO user_profiles (id, display_name) VALUES
  ('a0000001-0000-0000-0000-000000000001', 'Sarah M.'),
  ('a0000001-0000-0000-0000-000000000002', 'Thomas K.'),
  ('a0000001-0000-0000-0000-000000000003', 'Maria G.'),
  ('a0000001-0000-0000-0000-000000000004', 'James W.'),
  ('a0000001-0000-0000-0000-000000000005', 'Elena R.'),
  ('a0000001-0000-0000-0000-000000000006', 'Peter S.'),
  ('a0000001-0000-0000-0000-000000000007', 'Anna L.'),
  ('a0000001-0000-0000-0000-000000000008', 'Michael B.'),
  ('a0000001-0000-0000-0000-000000000009', 'Sofia D.'),
  ('a0000001-0000-0000-0000-000000000010', 'Henrik N.'),
  ('a0000001-0000-0000-0000-000000000011', 'Caroline F.'),
  ('a0000001-0000-0000-0000-000000000012', 'David A.'),
  ('a0000001-0000-0000-0000-000000000013', 'Isabelle P.'),
  ('a0000001-0000-0000-0000-000000000014', 'Robert H.'),
  ('a0000001-0000-0000-0000-000000000015', 'Laura C.')
ON CONFLICT (id) DO NOTHING;

-- Insert reviews for restaurants (top 10)
INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000001'::uuid, 5, 'Absolutely wonderful', 'One of the best dining experiences in Calvia. The food was exceptional, beautifully presented, and the service was warm and attentive. Highly recommended.', now() - interval '12 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'restaurants' AND b.is_placeholder = false ORDER BY b.name LIMIT 10
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000003'::uuid, 4, 'Great food, lovely setting', 'Really enjoyed the atmosphere and the quality of the dishes. A couple of items were slightly overpriced, but overall a fantastic meal.', now() - interval '28 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'restaurants' AND b.is_placeholder = false ORDER BY b.name LIMIT 10
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000005'::uuid, 5, 'Our new favourite spot', 'Fresh ingredients, creative menu, and friendly staff. Perfect for both casual dinners and celebrations.', now() - interval '45 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'restaurants' AND b.is_placeholder = false ORDER BY b.name LIMIT 10
ON CONFLICT DO NOTHING;

-- Fine dining reviews
INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000002'::uuid, 5, 'Exceptional experience', 'From the moment we walked in, everything was flawless. The tasting menu was a masterclass in Mediterranean cuisine. Worth every euro.', now() - interval '10 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'fine-dining' AND b.is_placeholder = false ORDER BY b.name LIMIT 8
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000007'::uuid, 5, 'World-class dining in Calvia', 'Truly outstanding. The chef''s attention to detail is remarkable. An unforgettable evening with incredible wine pairings.', now() - interval '22 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'fine-dining' AND b.is_placeholder = false ORDER BY b.name LIMIT 8
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000009'::uuid, 4, 'Beautiful food, premium price', 'The food and presentation are on another level. Only 4 stars because the wait between courses was a bit long. But the quality is undeniable.', now() - interval '35 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'fine-dining' AND b.is_placeholder = false ORDER BY b.name LIMIT 8
ON CONFLICT DO NOTHING;

-- Real estate reviews
INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000004'::uuid, 5, 'Professional and knowledgeable', 'They helped us find our dream property in Calvia. Extremely professional with great knowledge of the local market.', now() - interval '15 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'real-estate' AND b.is_placeholder = false ORDER BY b.name LIMIT 6
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000006'::uuid, 4, 'Good service, wide selection', 'Had a good experience overall. They showed us several properties that matched our criteria. Communication was efficient and transparent.', now() - interval '30 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'real-estate' AND b.is_placeholder = false ORDER BY b.name LIMIT 6
ON CONFLICT DO NOTHING;

-- Golf club reviews
INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000008'::uuid, 5, 'Stunning course, great facilities', 'One of the best golf courses in Mallorca. Beautifully maintained, excellent clubhouse, and spectacular views.', now() - interval '8 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'golf-clubs' AND b.is_placeholder = false ORDER BY b.name LIMIT 5
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000010'::uuid, 4, 'Well maintained and enjoyable', 'Played here twice during our stay. The course is in great condition and the staff are welcoming.', now() - interval '20 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'golf-clubs' AND b.is_placeholder = false ORDER BY b.name LIMIT 5
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000014'::uuid, 5, 'Top-tier golfing experience', 'Everything about this club is first class. The course design is challenging yet enjoyable, and the practice facilities are excellent.', now() - interval '42 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'golf-clubs' AND b.is_placeholder = false ORDER BY b.name LIMIT 5
ON CONFLICT DO NOTHING;

-- Yacht and boat charter reviews
INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000011'::uuid, 5, 'Perfect day on the water', 'The boat was in perfect condition, the crew was amazing, and they took us to hidden coves we never would have found on our own.', now() - interval '5 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug IN ('yachting-boat-rentals', 'boat-charters') AND b.is_placeholder = false ORDER BY b.name LIMIT 8
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000013'::uuid, 4, 'Great experience, will book again', 'The charter was well organised and the captain very knowledgeable about the coast. Snorkelling stops were fantastic.', now() - interval '18 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug IN ('yachting-boat-rentals', 'boat-charters') AND b.is_placeholder = false ORDER BY b.name LIMIT 8
ON CONFLICT DO NOTHING;

-- Wellness spa reviews
INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000009'::uuid, 5, 'Pure relaxation', 'An absolutely heavenly spa experience. The therapists are highly skilled and the facilities are immaculate.', now() - interval '7 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'wellness-spas' AND b.is_placeholder = false ORDER BY b.name LIMIT 6
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000015'::uuid, 4, 'Lovely spa, great treatments', 'Very professional and relaxing. The hot stone massage was incredible.', now() - interval '25 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'wellness-spas' AND b.is_placeholder = false ORDER BY b.name LIMIT 6
ON CONFLICT DO NOTHING;

-- Beach club reviews
INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000001'::uuid, 5, 'The best way to spend a day', 'Incredible beach club with fantastic music, great cocktails, and beautiful views. Our favourite spot in Calvia.', now() - interval '3 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'beach-clubs' AND b.is_placeholder = false ORDER BY b.name LIMIT 5
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000012'::uuid, 4, 'Chic and enjoyable', 'Wonderful afternoon here. The food was surprisingly good for a beach club, and the DJ set was a great touch.', now() - interval '14 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'beach-clubs' AND b.is_placeholder = false ORDER BY b.name LIMIT 5
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000007'::uuid, 5, 'Unmatched vibes', 'Stunning location, delicious Mediterranean food, refreshing drinks, and a buzzing yet relaxed atmosphere.', now() - interval '30 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'beach-clubs' AND b.is_placeholder = false ORDER BY b.name LIMIT 5
ON CONFLICT DO NOTHING;

-- Fitness center reviews
INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000004'::uuid, 4, 'Well equipped gym', 'Modern equipment, clean facilities, and a good range of classes. Good value for money.', now() - interval '11 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'fitness-centers' AND b.is_placeholder = false ORDER BY b.name LIMIT 6
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000010'::uuid, 5, 'My go-to gym in Calvia', 'Been a member for 6 months and could not be happier. Great equipment, never too crowded, and the personal trainers know their stuff.', now() - interval '32 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'fitness-centers' AND b.is_placeholder = false ORDER BY b.name LIMIT 6
ON CONFLICT DO NOTHING;

-- Hotel reviews
INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000006'::uuid, 5, 'Outstanding stay', 'Everything exceeded our expectations. Beautifully designed rooms, excellent breakfast, and a perfect location.', now() - interval '9 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'hotels-accommodation' AND b.is_placeholder = false ORDER BY b.name LIMIT 6
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000013'::uuid, 4, 'Comfortable and well located', 'Clean rooms, friendly staff, and a great pool area. Walking distance to shops and restaurants.', now() - interval '21 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'hotels-accommodation' AND b.is_placeholder = false ORDER BY b.name LIMIT 6
ON CONFLICT DO NOTHING;

-- Tennis club reviews
INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000008'::uuid, 5, 'Excellent courts and coaching', 'Top quality clay courts, fantastic coaching staff, and a welcoming atmosphere.', now() - interval '6 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'tennis-clubs' AND b.is_placeholder = false ORDER BY b.name LIMIT 4
ON CONFLICT DO NOTHING;

INSERT INTO reviews (business_id, user_id, rating, title, content, created_at)
SELECT b.id, 'a0000001-0000-0000-0000-000000000002'::uuid, 4, 'Great place to play', 'The courts are very well maintained and the booking system is easy to use.', now() - interval '19 days'
FROM businesses b JOIN categories c ON b.category_id = c.id WHERE c.slug = 'tennis-clubs' AND b.is_placeholder = false ORDER BY b.name LIMIT 4
ON CONFLICT DO NOTHING;
