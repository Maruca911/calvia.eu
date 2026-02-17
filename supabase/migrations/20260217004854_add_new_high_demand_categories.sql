/*
  # Add 10 New High-Demand Business Categories

  1. New Data
    - Bars & Nightlife - Evening entertainment venues across Calvia
    - Cafes & Coffee Shops - Daily cafes, brunch spots, specialty coffee
    - Beach Clubs - Day clubs, beach bars, sun lounger venues
    - Hotels & Accommodation - Hotels, boutique stays, aparthotels
    - Water Sports & Diving - Diving, jet ski, kayaking, SUP, sailing
    - Supermarkets & Grocery - Daily grocery shopping, supermarkets
    - Taxi & Transport - Airport transfers, taxi services, car rental
    - Dentists & Dental Clinics - Dental practices serving expat community
    - Coworking & Office Spaces - Remote work and office spaces
    - Pet Services - Veterinary, grooming, pet boarding

  2. Notes
    - These categories target the highest search volume verticals missing from the directory
    - Icon names correspond to existing Lucide icon mappings
    - Display order continues from existing categories (starting at 21)
*/

INSERT INTO categories (name, slug, icon_name, description, display_order)
VALUES
  ('Bars & Nightlife', 'bars-nightlife', 'wine', 'Discover bars, pubs, cocktail lounges, and nightlife venues across all areas of Calvia, from laid-back beach bars to lively nightspots.', 21),
  ('Cafes & Coffee Shops', 'cafes-coffee-shops', 'utensils', 'Find the best cafes, coffee shops, bakeries, and brunch spots in Calvia. From specialty espresso to beachside breakfast terraces.', 22),
  ('Beach Clubs', 'beach-clubs', 'anchor', 'Premium beach clubs and day clubs across Calvia coastline. Day beds, pools, cocktails, and Mediterranean dining by the sea.', 23),
  ('Hotels & Accommodation', 'hotels-accommodation', 'building', 'Hotels, boutique stays, resorts, and accommodation across Calvia. From 5-star luxury to family-friendly options.', 24),
  ('Water Sports & Diving', 'water-sports-diving', 'ship', 'Water sports operators, diving centers, jet ski rental, kayaking, SUP, sailing, and marine activities in Calvia waters.', 25),
  ('Supermarkets & Grocery', 'supermarkets-grocery', 'shopping-bag', 'Supermarkets, grocery stores, and fresh food markets across all Calvia areas. Essential daily shopping for residents and visitors.', 26),
  ('Taxi & Transport', 'taxi-transport', 'briefcase', 'Taxi services, airport transfers, car rental, and local transport options serving all areas of Calvia municipality.', 27),
  ('Dentists & Dental Clinics', 'dentists-dental-clinics', 'stethoscope', 'Dental clinics and practices across Calvia, many with English and German-speaking staff serving the international community.', 28),
  ('Coworking & Office Spaces', 'coworking-offices', 'briefcase', 'Coworking spaces, shared offices, and professional workspaces for remote workers and digital nomads in Calvia.', 29),
  ('Pet Services', 'pet-services', 'heart', 'Veterinary clinics, pet grooming, boarding kennels, and pet shops across Calvia for your four-legged family members.', 30)
ON CONFLICT (slug) DO NOTHING;
