/*
  # Seed images for businesses missing image_url

  1. Changes
    - Assigns Pexels stock photo URLs to 88 businesses across 9 categories
      that currently have empty or null image_url
    - Categories covered: Cafes & Coffee Shops, Water Sports & Diving,
      Health Clinics, Golf Courses, Beauty Salons, Professional Services,
      Hairdressers, Education Centers, Taxi & Transport

  2. Impact
    - All 777 businesses will now have an image for their profile card
    - No more fallback gradient placeholders on the directory pages
*/

UPDATE businesses
SET image_url = 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'cafes-coffee-shops')
  AND (image_url IS NULL OR image_url = '');

UPDATE businesses
SET image_url = 'https://images.pexels.com/photos/1452701/pexels-photo-1452701.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'water-sports-diving')
  AND (image_url IS NULL OR image_url = '');

UPDATE businesses
SET image_url = 'https://images.pexels.com/photos/247786/pexels-photo-247786.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'health-clinics')
  AND (image_url IS NULL OR image_url = '');

UPDATE businesses
SET image_url = 'https://images.pexels.com/photos/1325659/pexels-photo-1325659.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'golf-courses')
  AND (image_url IS NULL OR image_url = '');

UPDATE businesses
SET image_url = 'https://images.pexels.com/photos/3993449/pexels-photo-3993449.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'beauty-salons')
  AND (image_url IS NULL OR image_url = '');

UPDATE businesses
SET image_url = 'https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'professional-services')
  AND (image_url IS NULL OR image_url = '');

UPDATE businesses
SET image_url = 'https://images.pexels.com/photos/3993467/pexels-photo-3993467.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'hairdressers')
  AND (image_url IS NULL OR image_url = '');

UPDATE businesses
SET image_url = 'https://images.pexels.com/photos/5212345/pexels-photo-5212345.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'education')
  AND (image_url IS NULL OR image_url = '');

UPDATE businesses
SET image_url = 'https://images.pexels.com/photos/2526127/pexels-photo-2526127.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE category_id = (SELECT id FROM categories WHERE slug = 'taxi-transport')
  AND (image_url IS NULL OR image_url = '');
