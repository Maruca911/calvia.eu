/*
  # Create FAQs Table for LLM-Optimized Content

  1. New Tables
    - `faqs`
      - `id` (uuid, primary key)
      - `page_type` (text) - Type of page: 'area', 'category', 'guide'
      - `page_slug` (text) - The slug matching the area or category slug
      - `question` (text) - The FAQ question in natural language
      - `answer` (text) - The FAQ answer with rich detail
      - `display_order` (integer) - Sort order within the page
      - `created_at` (timestamptz) - Record timestamp

  2. Security
    - Enable RLS on `faqs` table
    - Add policy for public read access (FAQs are publicly browsable)

  3. Notes
    - Designed for FAQPage schema markup integration
    - Questions written in conversational style for LLM/featured snippet optimization
    - Each page (area or category) should have minimum 5 FAQs
*/

CREATE TABLE IF NOT EXISTS faqs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  page_type text NOT NULL DEFAULT 'category',
  page_slug text NOT NULL,
  question text NOT NULL,
  answer text NOT NULL,
  display_order integer NOT NULL DEFAULT 0,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE faqs ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can view faqs"
  ON faqs
  FOR SELECT
  TO anon, authenticated
  USING (true);

CREATE INDEX idx_faqs_page ON faqs(page_type, page_slug);
