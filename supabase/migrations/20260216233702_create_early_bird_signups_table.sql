/*
  # Create early bird signups table

  1. New Tables
    - `early_bird_signups`
      - `id` (uuid, primary key)
      - `signup_type` (text) - 'consumer' or 'business'
      - `email` (text) - Contact email
      - `full_name` (text) - Full name
      - `nationality` (text) - Consumer field: nationality
      - `property_type` (text) - Consumer field: property type
      - `business_name` (text) - Business field: business name
      - `business_category` (text) - Business field: category
      - `business_size` (text) - Business field: size
      - `created_at` (timestamptz) - Record creation timestamp

  2. Security
    - Enable RLS on `early_bird_signups` table
    - Add insert-only policy for anonymous users (signup submissions)
    - No read/update/delete policies for public access
*/

CREATE TABLE IF NOT EXISTS early_bird_signups (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  signup_type text NOT NULL CHECK (signup_type IN ('consumer', 'business')),
  email text NOT NULL,
  full_name text NOT NULL DEFAULT '',
  nationality text NOT NULL DEFAULT '',
  property_type text NOT NULL DEFAULT '',
  business_name text NOT NULL DEFAULT '',
  business_category text NOT NULL DEFAULT '',
  business_size text NOT NULL DEFAULT '',
  created_at timestamptz DEFAULT now()
);

ALTER TABLE early_bird_signups ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can submit early bird signup"
  ON early_bird_signups
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);
