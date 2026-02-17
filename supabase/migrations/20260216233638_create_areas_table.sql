/*
  # Create areas table

  1. New Tables
    - `areas`
      - `id` (uuid, primary key)
      - `name` (text, unique) - Display name of the village/area
      - `slug` (text, unique) - URL-friendly slug
      - `description` (text) - Brief description of the area
      - `latitude` (double precision) - Map coordinate
      - `longitude` (double precision) - Map coordinate
      - `highlights` (text[]) - Key attractions (beaches, events, etc.)
      - `image_url` (text) - Cover image URL for the area card
      - `created_at` (timestamptz) - Record creation timestamp

  2. Security
    - Enable RLS on `areas` table
    - Add policy for public read access (areas are publicly browsable)
*/

CREATE TABLE IF NOT EXISTS areas (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text UNIQUE NOT NULL,
  slug text UNIQUE NOT NULL,
  description text NOT NULL DEFAULT '',
  latitude double precision DEFAULT 0,
  longitude double precision DEFAULT 0,
  highlights text[] DEFAULT '{}',
  image_url text NOT NULL DEFAULT '',
  created_at timestamptz DEFAULT now()
);

ALTER TABLE areas ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can view areas"
  ON areas
  FOR SELECT
  TO anon, authenticated
  USING (true);
