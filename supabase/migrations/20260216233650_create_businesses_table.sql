/*
  # Create businesses table

  1. New Tables
    - `businesses`
      - `id` (uuid, primary key)
      - `name` (text) - Business name
      - `description` (text) - Short description
      - `category_id` (uuid, FK) - Links to categories table
      - `area_id` (uuid, FK) - Links to areas table
      - `phone` (text) - Contact phone
      - `email` (text) - Contact email
      - `website` (text) - Website URL
      - `address` (text) - Physical address
      - `latitude` (double precision) - Map coordinate
      - `longitude` (double precision) - Map coordinate
      - `is_placeholder` (boolean) - Whether this is placeholder data
      - `created_at` (timestamptz) - Record creation timestamp

  2. Security
    - Enable RLS on `businesses` table
    - Add policy for public read access (businesses are publicly browsable)
*/

CREATE TABLE IF NOT EXISTS businesses (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text NOT NULL DEFAULT '',
  category_id uuid NOT NULL REFERENCES categories(id),
  area_id uuid NOT NULL REFERENCES areas(id),
  phone text NOT NULL DEFAULT '',
  email text NOT NULL DEFAULT '',
  website text NOT NULL DEFAULT '',
  address text NOT NULL DEFAULT '',
  latitude double precision DEFAULT 0,
  longitude double precision DEFAULT 0,
  is_placeholder boolean DEFAULT true,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE businesses ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can view businesses"
  ON businesses
  FOR SELECT
  TO anon, authenticated
  USING (true);

CREATE INDEX idx_businesses_category ON businesses(category_id);
CREATE INDEX idx_businesses_area ON businesses(area_id);
CREATE INDEX idx_businesses_name ON businesses USING gin(to_tsvector('english', name));
