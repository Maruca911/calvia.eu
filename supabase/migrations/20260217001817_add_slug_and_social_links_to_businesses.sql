/*
  # Add slug and social_links to businesses

  1. Modified Tables
    - `businesses`
      - `slug` (text, unique) - URL-friendly identifier for individual profile pages
      - `social_links` (jsonb) - JSON object storing social media URLs (linkedin, twitter, facebook, instagram, etc.)

  2. Changes
    - Adds slug column with auto-generation from business name
    - Adds social_links column defaulting to empty object
    - Creates unique index on slug for fast lookups
    - Creates index on slug for profile page queries

  3. Important Notes
    - Existing businesses will get auto-generated slugs from their names
    - Slugs are lowercase, hyphenated versions of business names
    - social_links stores a flexible JSON object so new platforms can be added without schema changes
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'slug'
  ) THEN
    ALTER TABLE businesses ADD COLUMN slug text;
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'businesses' AND column_name = 'social_links'
  ) THEN
    ALTER TABLE businesses ADD COLUMN social_links jsonb DEFAULT '{}'::jsonb;
  END IF;
END $$;

UPDATE businesses
SET slug = lower(regexp_replace(regexp_replace(name, '[^a-zA-Z0-9\s-]', '', 'g'), '\s+', '-', 'g'))
WHERE slug IS NULL;

UPDATE businesses b1
SET slug = b1.slug || '-' || substring(b1.id::text from 1 for 8)
WHERE EXISTS (
  SELECT 1 FROM businesses b2
  WHERE b2.slug = b1.slug AND b2.id <> b1.id AND b2.created_at < b1.created_at
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_businesses_slug ON businesses(slug);
