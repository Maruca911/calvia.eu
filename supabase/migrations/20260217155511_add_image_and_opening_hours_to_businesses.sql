/*
  # Add image_url, images, and opening_hours columns to businesses table

  1. Modified Tables
    - `businesses`
      - `image_url` (text) - Primary hero photo URL for the business
      - `images` (jsonb) - Array of additional image URLs for gallery support
      - `opening_hours` (jsonb) - Structured opening hours per day of week

  2. Important Notes
    - All columns are nullable with sensible defaults
    - Uses IF NOT EXISTS checks for safety
    - No data is removed or modified
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'image_url'
  ) THEN
    ALTER TABLE businesses ADD COLUMN image_url text DEFAULT '';
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'images'
  ) THEN
    ALTER TABLE businesses ADD COLUMN images jsonb DEFAULT '[]'::jsonb;
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'opening_hours'
  ) THEN
    ALTER TABLE businesses ADD COLUMN opening_hours jsonb DEFAULT '{}'::jsonb;
  END IF;
END $$;
