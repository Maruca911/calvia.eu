/*
  # Add Palma Area

  1. Purpose
    - Add Palma as a new area to support businesses located in Palma (including Santa Catalina neighborhood)
    - Addresses audit finding that businesses with Palma addresses were incorrectly tagged to other areas

  2. Changes
    - Insert Palma area into areas table with proper slug and description
    - Note: Businesses with Palma addresses will need manual re-tagging (separate data update task)

  3. Details
    - Name: Palma
    - Slug: palma
    - Description: The capital city of Mallorca, including neighborhoods like Santa Catalina, nearby to Calvia region
    - Latitude/Longitude: 39.5696, 2.6502 (Palma center)
*/

-- Insert Palma area if it doesn't already exist
INSERT INTO areas (name, slug, description, latitude, longitude)
SELECT 
  'Palma',
  'palma',
  'The capital city of Mallorca, including neighborhoods like Santa Catalina. While technically outside the Calvia municipality, Palma is the commercial hub for the region and home to many businesses serving Calvia residents.',
  39.5696,
  2.6502
WHERE NOT EXISTS (
  SELECT 1 FROM areas WHERE slug = 'palma'
);
