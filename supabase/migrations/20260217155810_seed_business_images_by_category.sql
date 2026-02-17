/*
  # Seed business images by category

  1. Modified Tables
    - `businesses` - Sets image_url for businesses based on their category

  2. Changes
    - Assigns relevant stock photos from Pexels to businesses grouped by category
    - Covers all major categories: restaurants, fine dining, real estate, fitness, etc.
    - Each category gets a thematic image appropriate to the business type
    - Only updates businesses that currently have no image_url set

  3. Important Notes
    - Uses category_id subqueries to match businesses by category slug
    - Only updates rows where image_url is empty or null
    - No data is removed
*/

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/67468/pexels-photo-67468.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'restaurants')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'fine-dining')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/1134176/pexels-photo-1134176.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'bars-nightlife')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'cafes-bakeries')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'hotels-accommodation')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'real-estate')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'fitness-centers')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/3822906/pexels-photo-3822906.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'yoga-pilates')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/3735747/pexels-photo-3735747.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'wellness-spas')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/305568/pexels-photo-305568.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'dentists-dental-clinics')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/5668858/pexels-photo-5668858.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'lawyers-legal')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/6863183/pexels-photo-6863183.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'accountants-tax')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/210990/pexels-photo-210990.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'banks-finance')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/159211/headache-pain-pills-medication-159211.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'pharmacies')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/264636/pexels-photo-264636.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'supermarkets-grocery')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/1005638/pexels-photo-1005638.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'shopping-retail')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/1001682/pexels-photo-1001682.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'beach-clubs')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/1295036/pexels-photo-1295036.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'water-sports')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'yachting-boat-rentals')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'boat-charters')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/914682/pexels-photo-914682.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'golf-clubs')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'tennis-clubs')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/5191390/pexels-photo-5191390.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'padel-clubs')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/7578798/pexels-photo-7578798.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'events-planning')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/2199293/pexels-photo-2199293.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'home-services')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/7688336/pexels-photo-7688336.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'transport-car-rental')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/7688336/pexels-photo-7688336.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'emergency-services')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/7974/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'coworking-offices')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'pet-services')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/1179229/pexels-photo-1179229.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'nature-outdoors')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/3184405/pexels-photo-3184405.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'financial-advisors')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/3771110/pexels-photo-3771110.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'property-management')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/1416530/pexels-photo-1416530.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'beaches')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/554609/pexels-photo-554609.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'hiking-trails')
AND (image_url IS NULL OR image_url = '');

UPDATE businesses SET image_url = 'https://images.pexels.com/photos/38296/cycling-bicycle-riding-sport-38296.jpeg?auto=compress&cs=tinysrgb&w=800'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'bike-trails')
AND (image_url IS NULL OR image_url = '');
