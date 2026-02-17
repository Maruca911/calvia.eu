/*
  # Create Guides Table for Editorial Content Pages

  1. New Tables
    - `guides`
      - `id` (uuid, primary key)
      - `title` (text) - Guide title (e.g., "Best Restaurants in Santa Ponsa")
      - `slug` (text, unique) - URL-friendly slug
      - `description` (text) - Meta description / intro paragraph
      - `content` (text) - Full editorial content in markdown/HTML
      - `area_slug` (text, nullable) - Related area slug for cross-linking
      - `category_slug` (text, nullable) - Related category slug for cross-linking
      - `meta_title` (text) - SEO meta title
      - `meta_description` (text) - SEO meta description
      - `image_url` (text) - Hero image URL
      - `published` (boolean) - Whether the guide is live
      - `created_at` (timestamptz)
      - `updated_at` (timestamptz)

  2. Security
    - Enable RLS on `guides` table
    - Add policy for public read access on published guides

  3. Notes
    - Supports area+category combo pages (e.g., "Restaurants in Santa Ponsa")
    - Supports standalone editorial guides (e.g., "Living in Calvia")
    - Content field supports rich text for flexible formatting
*/

CREATE TABLE IF NOT EXISTS guides (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  slug text UNIQUE NOT NULL,
  description text NOT NULL DEFAULT '',
  content text NOT NULL DEFAULT '',
  area_slug text,
  category_slug text,
  meta_title text NOT NULL DEFAULT '',
  meta_description text NOT NULL DEFAULT '',
  image_url text NOT NULL DEFAULT '',
  published boolean DEFAULT false,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

ALTER TABLE guides ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can view published guides"
  ON guides
  FOR SELECT
  TO anon, authenticated
  USING (published = true);

CREATE INDEX idx_guides_slug ON guides(slug);
CREATE INDEX idx_guides_area ON guides(area_slug);
CREATE INDEX idx_guides_category ON guides(category_slug);
