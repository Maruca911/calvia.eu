/*
  # Create categories table

  1. New Tables
    - `categories`
      - `id` (uuid, primary key)
      - `name` (text, unique) - Display name of the category
      - `slug` (text, unique) - URL-friendly slug
      - `icon_name` (text) - Lucide icon name for UI display
      - `description` (text) - Brief description of the category
      - `display_order` (integer) - Sorting order for display
      - `created_at` (timestamptz) - Record creation timestamp

  2. Security
    - Enable RLS on `categories` table
    - Add policy for public read access (categories are publicly browsable)
*/

CREATE TABLE IF NOT EXISTS categories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text UNIQUE NOT NULL,
  slug text UNIQUE NOT NULL,
  icon_name text NOT NULL DEFAULT 'tag',
  description text NOT NULL DEFAULT '',
  display_order integer NOT NULL DEFAULT 0,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE categories ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can view categories"
  ON categories
  FOR SELECT
  TO anon, authenticated
  USING (true);
