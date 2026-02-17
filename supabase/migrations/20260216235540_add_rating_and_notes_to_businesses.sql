/*
  # Add rating and notes columns to businesses table

  1. Modified Tables
    - `businesses`
      - Added `rating` (numeric, nullable) - Star rating from 0-5
      - Added `notes` (text, nullable) - Additional descriptive notes about the business

  2. Important Notes
    - Both columns are nullable to maintain compatibility with existing data
    - No default values set as not all businesses have ratings
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'rating'
  ) THEN
    ALTER TABLE businesses ADD COLUMN rating numeric;
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'notes'
  ) THEN
    ALTER TABLE businesses ADD COLUMN notes text;
  END IF;
END $$;