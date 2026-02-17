/*
  # Create translations table for multilingual content

  1. New Tables
    - `translations`
      - `id` (uuid, primary key)
      - `entity_type` (text) - The type of entity being translated (category, area, business, guide, faq)
      - `entity_id` (uuid) - The ID of the entity being translated
      - `locale` (text) - The language code (de, es, fr, nl, sv, da, no, pl, ru, uk)
      - `field` (text) - The field being translated (name, description, content, question, answer, etc.)
      - `value` (text) - The translated text
      - `created_at` (timestamptz)

  2. Indexes
    - Composite unique index on (entity_type, entity_id, locale, field)
    - Index on locale for filtering by language
    - Index on entity_type + entity_id for looking up all translations of an entity

  3. Security
    - Enable RLS on translations table
    - Add read policy for authenticated and anonymous users (translations are public content)
*/

CREATE TABLE IF NOT EXISTS translations (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  entity_type text NOT NULL,
  entity_id uuid NOT NULL,
  locale text NOT NULL,
  field text NOT NULL,
  value text NOT NULL DEFAULT '',
  created_at timestamptz DEFAULT now()
);

CREATE UNIQUE INDEX IF NOT EXISTS translations_unique_idx
  ON translations (entity_type, entity_id, locale, field);

CREATE INDEX IF NOT EXISTS translations_locale_idx
  ON translations (locale);

CREATE INDEX IF NOT EXISTS translations_entity_idx
  ON translations (entity_type, entity_id);

ALTER TABLE translations ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Translations are publicly readable"
  ON translations
  FOR SELECT
  TO authenticated, anon
  USING (true);
