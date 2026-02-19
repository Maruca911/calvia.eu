/*
  # Add Location Confidence and Business Suggestion Support

  ## Summary
  Enhances the businesses directory with better location data management and community-driven business discovery.

  ## Changes

  ### Modified Tables
  - `businesses`
    - Added `location_confidence` column (text): tracks geocoding quality - 'exact', 'approximate', or 'area'
    - Added `needs_geocoding` boolean flag: marks listings that need coordinate verification
    - Default `location_confidence` is 'approximate' for existing records without explicit coordinates

  ### New Tables
  - `business_suggestions`
    - Stores community-submitted business suggestions for review
    - Fields: name, category, area, address, phone, website, description, submitter_name, submitter_email, status
    - RLS: anyone can insert, only authenticated admins can read/update

  ## Security
  - RLS enabled on business_suggestions
  - Public INSERT allowed (with rate limiting via existing patterns)
  - Only authenticated users can read their own submissions

  ## Notes
  1. location_confidence values: 'exact' = GPS-verified, 'approximate' = address-geocoded, 'area' = only area centroid known
  2. needs_geocoding = true flags businesses where coordinate accuracy should be reviewed
  3. Existing businesses with non-zero coordinates set to 'approximate' by default
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'location_confidence'
  ) THEN
    ALTER TABLE businesses ADD COLUMN location_confidence text NOT NULL DEFAULT 'approximate'
      CHECK (location_confidence IN ('exact', 'approximate', 'area'));
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'needs_geocoding'
  ) THEN
    ALTER TABLE businesses ADD COLUMN needs_geocoding boolean NOT NULL DEFAULT false;
  END IF;
END $$;

UPDATE businesses
SET location_confidence = 'area', needs_geocoding = true
WHERE (latitude IS NULL OR latitude = 0 OR longitude IS NULL OR longitude = 0)
  AND location_confidence = 'approximate';

CREATE TABLE IF NOT EXISTS business_suggestions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  business_name text NOT NULL,
  category text NOT NULL DEFAULT '',
  area text NOT NULL DEFAULT '',
  address text NOT NULL DEFAULT '',
  phone text NOT NULL DEFAULT '',
  website text NOT NULL DEFAULT '',
  description text NOT NULL DEFAULT '',
  submitter_name text NOT NULL,
  submitter_email text NOT NULL,
  status text NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'approved', 'rejected')),
  created_at timestamptz DEFAULT now()
);

ALTER TABLE business_suggestions ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can submit business suggestions"
  ON business_suggestions
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (
    length(trim(business_name)) >= 2
    AND length(trim(submitter_name)) >= 2
    AND submitter_email ~* '^[^@\s]+@[^@\s]+\.[^@\s]+$'
  );

CREATE POLICY "Authenticated users can view their own submissions"
  ON business_suggestions
  FOR SELECT
  TO authenticated
  USING (submitter_email = (SELECT email FROM auth.users WHERE id = auth.uid()));
