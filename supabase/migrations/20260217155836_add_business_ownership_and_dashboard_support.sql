/*
  # Add business ownership and dashboard support

  1. Modified Tables
    - `businesses`
      - `owner_id` (uuid, nullable) - References auth.users, the user who claimed the business
      - `claimed` (boolean) - Whether the business has been claimed by an owner
      - `view_count` (integer) - Simple page view counter for analytics

  2. Security
    - Add RLS policy allowing business owners to update their own listings
    - Add RLS policy allowing business owners to read their own claimed businesses

  3. Important Notes
    - Uses IF NOT EXISTS for safety
    - Owner can be set via claim process matching email
    - view_count defaults to 0
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'owner_id'
  ) THEN
    ALTER TABLE businesses ADD COLUMN owner_id uuid REFERENCES auth.users(id);
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'claimed'
  ) THEN
    ALTER TABLE businesses ADD COLUMN claimed boolean DEFAULT false;
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'view_count'
  ) THEN
    ALTER TABLE businesses ADD COLUMN view_count integer DEFAULT 0;
  END IF;
END $$;

CREATE INDEX IF NOT EXISTS idx_businesses_owner_id ON businesses(owner_id);

CREATE POLICY "Business owners can update own listings"
  ON businesses FOR UPDATE
  TO authenticated
  USING (auth.uid() = owner_id)
  WITH CHECK (auth.uid() = owner_id);

CREATE POLICY "Business owners can read own claimed businesses"
  ON businesses FOR SELECT
  TO authenticated
  USING (auth.uid() = owner_id);
