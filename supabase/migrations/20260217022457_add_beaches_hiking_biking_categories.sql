/*
  # Add Beaches, Hiking Trails, and Bike Trails categories

  1. New Categories
    - `beaches` - Beaches & Coves
    - `hiking-trails` - Hiking Trails
    - `bike-trails` - Bike Trails

  2. Updates
    - Set category_slug on existing best-beaches-calvia guide to 'beaches'
*/

INSERT INTO categories (name, slug, icon_name, description, display_order)
VALUES
  ('Beaches & Coves', 'beaches', 'Waves', 'Sandy beaches, hidden coves, and coastal spots across Calvia''s 54km coastline', 40),
  ('Hiking Trails', 'hiking-trails', 'Mountain', 'Walking and hiking trails through the Tramuntana foothills and Calvia coastline', 41),
  ('Bike Trails', 'bike-trails', 'Bike', 'Cycling routes for road bikes, mountain bikes, and e-bikes across Calvia', 42)
ON CONFLICT (slug) DO NOTHING;

UPDATE guides
SET category_slug = 'beaches'
WHERE slug = 'best-beaches-calvia' AND (category_slug IS NULL OR category_slug = '');
