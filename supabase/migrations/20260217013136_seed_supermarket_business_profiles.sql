/*
  # Seed Supermarket & Grocery Business Profiles

  1. New Businesses (30 entries)
    - Category: Supermarkets & Grocery (78aa1479-5b41-404b-befa-bf055feca90d)
    - Includes major chains (Mercadona, Eroski, Lidl, Aldi) and local shops
    - Areas: Palmanova, Santa Ponca, Calvia Vila, Magaluf, Peguera, Costa d'en Blanes, Portals Nous

  2. Data Notes
    - Some entries are same chain at different locations (treated as separate profiles)
    - Campos-area entries mapped to Calvia Vila as nearest approximation
    - Ratings extracted from CSV rating field
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, website, address, rating, notes, is_placeholder, social_links)
VALUES
  ('Mercadona Son Caliu', 'mercadona-son-caliu', 'Wide selection of fresh produce near luxury areas in Son Caliu.', '78aa1479-5b41-404b-befa-bf055feca90d', 'a9cccc31-713d-4ad0-a901-11ed36c34683', '+34 971 68 12 00', 'mercadona.es', 'Son Caliu, Palmanova', 4.5, 'HNWI-friendly: Wide selection, fresh produce; near luxury areas.', false, '{}'),
  ('Eroski Santa Ponsa', 'eroski-santa-ponsa', 'Large supermarket with international section for Brits and Germans.', '78aa1479-5b41-404b-befa-bf055feca90d', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 69 40 00', 'eroski.es', 'Avinguda del Rei Jaume I, Santa Ponsa', 4.6, 'Large store; international section for Brits/Germans.', false, '{}'),
  ('Carrefour Calvia', 'carrefour-calvia', 'Hypermarket with premium brands near Calvia.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 08 00', 'carrefour.es', 'Near Calvià', 4.5, 'Hypermarket; premium brands.', false, '{}'),
  ('Lidl Palmanova', 'lidl-palmanova', 'Affordable quality groceries with eco-products in Palmanova.', '78aa1479-5b41-404b-befa-bf055feca90d', '611170cd-47c1-4060-a226-fad26428df6a', '+34 971 68 16 00', 'lidl.es', 'Exit from motorway, Palmanova', 4.4, 'Affordable quality; eco-products.', false, '{}'),
  ('Aldi Palmanova', 'aldi-palmanova', 'Value grocery shopping near Palmanova.', '78aa1479-5b41-404b-befa-bf055feca90d', '611170cd-47c1-4060-a226-fad26428df6a', '+34 971 68 13 00', 'aldi.es', 'Near Lidl, Palmanova', 4.5, 'Limited range; value for HNWIs.', false, '{}'),
  ('Hiper Manacor', 'hiper-manacor-calvia', 'Local favourite supermarket near Calvia.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 55 00 00', 'hipermanacor.com', 'Near Calvià', 4.6, 'Local favorites.', false, '{}'),
  ('Supermercado Spar', 'supermercado-spar-calvia', 'Convenient supermarket with tourist essentials.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 81 00', 'spar.es', 'Near Calvià', 4.5, 'Convenient; tourist essentials.', false, '{}'),
  ('Rui Long Supermarket', 'rui-long-supermarket', 'Chinese family-owned supermarket with friendly service in Magaluf.', '78aa1479-5b41-404b-befa-bf055feca90d', '2a8543a1-49fb-4656-a49f-ec59320b37e5', '+34 971 13 08 00', 'ruilong.com', 'Camí Porrassa 3, Magaluf', 4.6, 'Chinese family-owned; friendly service.', false, '{}'),
  ('Nice Price Mallorca', 'nice-price-mallorca', 'English products with home delivery for residents in Costa d''en Blanes.', '78aa1479-5b41-404b-befa-bf055feca90d', 'c74f9cd3-04e4-451a-89c4-2176b0441312', '+34 971 67 52 00', 'niceprice-mallorca.com', 'Miguel de Cervantes 8, Costa d''en Blanes', 4.5, 'English products; home delivery for HNWIs.', false, '{}'),
  ('Agromart Portals Nous', 'agromart-portals-nous', 'Quality Mallorcan products in a premium grocery setting.', '78aa1479-5b41-404b-befa-bf055feca90d', '90784574-076e-471d-b61a-d18422d0f69f', '+34 971 67 75 00', 'agromart.es', 'Portals Nous', 4.7, 'Quality Mallorcan products; premium.', false, '{}'),
  ('Supermarket Fast Shopping', 'supermarket-fast-shopping', 'Efficient holiday grocery shopping in Peguera.', '78aa1479-5b41-404b-befa-bf055feca90d', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 16 00', 'fastshopping.com', 'Bulevar de Peguera 60, Peguera', 4.6, 'Efficient; holiday groceries.', false, '{}'),
  ('Cecosa Supermercados', 'cecosa-supermercados', 'Well-stocked supermarket near Calvia.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 49 50 29', 'cecosa.com', 'Calle Felip Bauza 4, Palma (near Calvià)', 4.5, 'Well-stocked; near Calvià.', false, '{}'),
  ('Mercadona Campos', 'mercadona-campos', 'Fresh food and convenient shopping for the south of Mallorca.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 65 00 00', 'mercadona.es', 'Campos (near Es Trenc)', 4.7, 'Fresh food; convenient for south.', false, '{}'),
  ('Eroski Campos', 'eroski-campos', 'Large international supermarket in Campos.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 65 00 00', 'eroski.es', 'Campos', 4.6, 'Large; international.', false, '{}'),
  ('Lidl Campos', 'lidl-campos', 'Budget-friendly premium groceries in Campos.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 65 00 00', 'lidl.es', 'Campos', 4.5, 'Budget premium.', false, '{}'),
  ('Aldi Campos', 'aldi-campos', 'Value grocery shopping in Campos.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 65 00 00', 'aldi.es', 'Campos', 4.7, 'Value.', false, '{}'),
  ('Hiper Manacor Campos', 'hiper-manacor-campos', 'Variety grocery store in Campos.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 55 00 00', 'hipermanacor.com', 'Campos', 4.6, 'Variety.', false, '{}'),
  ('Spar Peguera', 'spar-peguera', 'Local convenience store in Peguera.', '78aa1479-5b41-404b-befa-bf055feca90d', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 51 00', 'spar.es', 'Peguera', 4.5, 'Local.', false, '{}'),
  ('Rui Long Magaluf', 'rui-long-magaluf', 'Essential groceries in Magaluf.', '78aa1479-5b41-404b-befa-bf055feca90d', '2a8543a1-49fb-4656-a49f-ec59320b37e5', '+34 971 13 08 00', 'ruilong.com', 'Magaluf', 4.7, 'Essentials.', false, '{}'),
  ('Nice Price Costa', 'nice-price-costa', 'British goods and specialty products in Costa d''en Blanes.', '78aa1479-5b41-404b-befa-bf055feca90d', 'c74f9cd3-04e4-451a-89c4-2176b0441312', '+34 971 67 52 00', 'niceprice.com', 'Costa d''en Blanes', 4.6, 'British goods.', false, '{}'),
  ('Agromart Nous', 'agromart-nous', 'Authentic Mallorcan products in Portals Nous.', '78aa1479-5b41-404b-befa-bf055feca90d', '90784574-076e-471d-b61a-d18422d0f69f', '+34 971 67 75 00', 'agromart.es', 'Portals Nous', 4.5, 'Authentic Mallorcan.', false, '{}'),
  ('Fast Shopping Peguera', 'fast-shopping-peguera', 'Quick convenience shopping in Peguera.', '78aa1479-5b41-404b-befa-bf055feca90d', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 16 00', 'fastshopping.com', 'Peguera', 4.7, 'Quick grabs.', false, '{}'),
  ('Cecosa Palma', 'cecosa-palma', 'Large supermarket in Palma near Calvia.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 49 50 00', 'cecosa.com', 'Palma', 4.6, 'Large.', false, '{}'),
  ('Mercadona Calvia', 'mercadona-calvia', 'Central Mercadona location in Calvia.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 81 00', 'mercadona.es', 'Calvià', 4.5, 'Central.', false, '{}'),
  ('Eroski Calvia', 'eroski-calvia', 'Convenient Eroski supermarket in Calvia.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 81 00', 'eroski.es', 'Calvià', 4.7, 'Convenient.', false, '{}'),
  ('Lidl Calvia', 'lidl-calvia', 'Affordable groceries in Calvia.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 81 00', 'lidl.es', 'Calvià', 4.6, 'Affordable.', false, '{}'),
  ('Aldi Calvia', 'aldi-calvia', 'Value grocery store in Calvia.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 81 00', 'aldi.es', 'Calvià', 4.5, 'Value.', false, '{}'),
  ('Hiper Manacor Calvia', 'hiper-manacor-calvia-town', 'Variety supermarket in Calvia town.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 55 00 00', 'hipermanacor.com', 'Calvià', 4.7, 'Variety.', false, '{}'),
  ('Spar Calvia', 'spar-calvia', 'Local Spar convenience store in Calvia.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 81 00', 'spar.es', 'Calvià', 4.6, 'Local.', false, '{}'),
  ('Rui Long Calvia', 'rui-long-calvia', 'Asian products and groceries in Calvia.', '78aa1479-5b41-404b-befa-bf055feca90d', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 81 00', 'ruilong.com', 'Calvià', 4.5, 'Asian products.', false, '{}')
ON CONFLICT (slug) DO NOTHING;
