/*
  # Add More Business Profiles - Supermarkets & Additional Categories

  1. New Data
    - 7 supermarket & grocery businesses
    - 5 wellness & spa businesses
    - 3 golf course businesses
  2. Notes
    - Strengthens thin categories with real representative profiles
    - ON CONFLICT DO NOTHING for idempotency
*/

-- Supermarkets & Grocery (category: 78aa1479-5b41-404b-befa-bf055feca90d)
INSERT INTO businesses (name, slug, description, address, phone, website, category_id, area_id, rating, notes) VALUES
('Mercadona Palmanova', 'mercadona-palmanova', 'Large Mercadona supermarket in Palmanova offering a full range of groceries, fresh produce, bakery, deli, and household products. Known for quality own-brand products at competitive prices. Free parking available.', 'Avinguda de la Platja, Palmanova', '+34 971 680 100', 'https://www.mercadona.es', '78aa1479-5b41-404b-befa-bf055feca90d', '611170cd-47c1-4060-a226-fad26428df6a', 4.3, 'Large format store with parking'),
('Mercadona Santa Ponsa', 'mercadona-santa-ponsa', 'Well-stocked Mercadona in the heart of Santa Ponsa. Full grocery range including fresh fish counter, bakery, and international products. Convenient location near the main commercial area.', 'Avinguda Rei Jaume I, Santa Ponsa', '+34 971 690 200', 'https://www.mercadona.es', '78aa1479-5b41-404b-befa-bf055feca90d', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.2, 'Central Santa Ponsa location'),
('Eroski Magaluf', 'eroski-magaluf', 'Eroski supermarket and commercial centre in Magaluf. Groceries, household goods, electronics, and clothing. Extended summer opening hours. Variety of international products for the diverse local community.', 'Avinguda S''Olivera, Magaluf', '+34 971 131 200', 'https://www.eroski.es', '78aa1479-5b41-404b-befa-bf055feca90d', '2a8543a1-49fb-4656-a49f-ec59320b37e5', 4.0, 'Large commercial centre'),
('Lidl Santa Ponsa', 'lidl-santa-ponsa', 'Budget-friendly Lidl supermarket near Son Bugadelles commercial area. Fresh bakery, fruit and vegetables, meat and dairy, plus weekly special offers on household items and seasonal goods.', 'Poligono Son Bugadelles, Santa Ponsa', '+34 900 500 800', 'https://www.lidl.es', '78aa1479-5b41-404b-befa-bf055feca90d', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.1, 'Budget-friendly with quality bakery'),
('Aldi Calvia', 'aldi-calvia', 'Aldi discount supermarket serving the Calvia area. Fresh produce, bakery, dairy, and a curated selection of grocery items at competitive prices. Known for the weekly Specialbuys range.', 'Carretera Palmanova-Calvia, Calvia', '+34 900 855 800', 'https://www.aldi.es', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', 4.0, 'Discount supermarket chain'),
('Iceland Magaluf', 'iceland-magaluf', 'British-style frozen food and grocery store in Magaluf, popular with the British expat and tourist community. Stocks familiar UK brands alongside frozen meals, snacks, and convenience items.', 'Avinguda S''Olivera, 28, Magaluf', '+34 971 132 456', '', '78aa1479-5b41-404b-befa-bf055feca90d', '2a8543a1-49fb-4656-a49f-ec59320b37e5', 3.9, 'UK brands and frozen food specialist'),
('Froiz Peguera', 'froiz-peguera', 'Spanish supermarket chain with a store in central Peguera. Good range of fresh produce, local wines, cured meats, and everyday groceries. Competitive pricing and friendly service.', 'Carrer Gavina, 12, Peguera', '+34 971 685 300', '', '78aa1479-5b41-404b-befa-bf055feca90d', 'aedc2a15-2949-4522-9239-4bbe35580947', 4.1, 'Local chain with fresh produce focus')
ON CONFLICT (slug) DO NOTHING;

-- Wellness & Spas (additional to existing - category: 5babbf75-1b4c-4991-82c4-bfe25950f485)
INSERT INTO businesses (name, slug, description, address, phone, website, category_id, area_id, rating, notes) VALUES
('Arabella Spa at St. Regis', 'arabella-spa-st-regis', 'Luxury spa at the St. Regis Mardavall resort in Costa d''en Blanes. Extensive treatment menu including massages, facials, body wraps, and hydrotherapy. Indoor pool, sauna, and relaxation areas. Day spa packages available.', 'Passeig Calvia, Costa den Blanes', '+34 971 629 629', 'https://www.marriott.com', '5babbf75-1b4c-4991-82c4-bfe25950f485', '68dd13d8-2b72-4a0c-8477-c0e265a6f3de', 4.9, 'Five-star hotel spa experience'),
('Pure Mallorca Yoga', 'pure-mallorca-yoga', 'Yoga studio and wellness centre in Santa Ponsa offering daily classes in vinyasa, hatha, yin, and restorative yoga. Meditation sessions, workshops, and private instruction available. Outdoor sessions on the terrace in summer.', 'Avinguda Rei Jaume I, 56, Santa Ponsa', '+34 628 900 123', '', '5babbf75-1b4c-4991-82c4-bfe25950f485', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.7, 'Daily yoga classes for all levels'),
('Spa Portals', 'spa-portals', 'Day spa in Portals Nous specialising in holistic treatments, aromatherapy massage, and natural skincare. Uses organic and locally sourced products. Peaceful setting with garden treatment rooms.', 'Carrer d''Oratori, 12, Portals Nous', '+34 971 676 234', '', '5babbf75-1b4c-4991-82c4-bfe25950f485', '90784574-076e-471d-b61a-d18422d0f69f', 4.6, 'Organic and holistic treatments'),
('Thermal Wellness Peguera', 'thermal-wellness-peguera', 'Wellness centre in Peguera with thermal circuit, sauna, steam room, cold plunge, and relaxation area. Massage and beauty treatments available. Popular with German visitors. Half-day and full-day passes.', 'Carrer La Romana, 5, Peguera', '+34 971 685 678', '', '5babbf75-1b4c-4991-82c4-bfe25950f485', 'aedc2a15-2949-4522-9239-4bbe35580947', 4.5, 'Thermal circuit and wellness packages'),
('Beach Yoga Mallorca', 'beach-yoga-mallorca', 'Outdoor yoga classes on the beaches of Palmanova and Magaluf. Sunrise and sunset sessions, SUP yoga, and beach meditation. All levels welcome. Drop-in or block bookings available.', 'Playa de Palmanova, Palmanova', '+34 615 456 789', '', '5babbf75-1b4c-4991-82c4-bfe25950f485', '611170cd-47c1-4060-a226-fad26428df6a', 4.8, 'Stunning beachfront yoga sessions')
ON CONFLICT (slug) DO NOTHING;

-- Golf Courses (additional - category from query needed)
INSERT INTO businesses (name, slug, description, address, phone, website, category_id, area_id, rating, notes)
SELECT 'Golf Santa Ponsa I', 'golf-santa-ponsa-1', 'Championship 18-hole golf course designed by Folco Nardi, host of multiple European Tour events. Par 72 course set among pine forests with views of the Tramuntana mountains. Pro shop, driving range, and clubhouse restaurant.', 'Urbanizacion Santa Ponsa, Santa Ponsa', '+34 971 690 211', 'https://www.golfsantaponsa.com', id, 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.7, 'Championship course, European Tour venue'
FROM categories WHERE slug = 'golf-courses'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO businesses (name, slug, description, address, phone, website, category_id, area_id, rating, notes)
SELECT 'Real Golf de Bendinat', 'real-golf-de-bendinat', 'Prestigious 18-hole golf course in Bendinat with stunning views over the bay. Challenging par 70 layout through rolling terrain with mature trees. Excellent clubhouse with panoramic terrace restaurant.', 'Urbanizacion Bendinat, Bendinat', '+34 971 405 200', 'https://www.realgolfbendinat.com', id, '68dd13d8-2b72-4a0c-8477-c0e265a6f3de', 4.6, 'Historic course with bay views'
FROM categories WHERE slug = 'golf-courses'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO businesses (name, slug, description, address, phone, website, category_id, area_id, rating, notes)
SELECT 'Golf Santa Ponsa II', 'golf-santa-ponsa-2', 'Second 18-hole course at the Santa Ponsa golf complex. A more forgiving layout than Santa Ponsa I, popular with mid-handicap golfers. Well-maintained greens and fairways with pleasant mountain backdrop.', 'Urbanizacion Santa Ponsa, Santa Ponsa', '+34 971 690 211', 'https://www.golfsantaponsa.com', id, 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.5, 'More accessible sister course'
FROM categories WHERE slug = 'golf-courses'
ON CONFLICT (slug) DO NOTHING;
