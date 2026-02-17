/*
  # Add 4 New Business Categories

  1. New Categories
    - `Lawyers & Legal Services` (slug: lawyers-legal, icon: scale, display_order: 33)
      - Law firms, solicitors, property/tax/commercial lawyers serving Calvia
    - `Accountants & Tax Advisors` (slug: accountants-tax, icon: calculator, display_order: 34)
      - Accounting firms, tax consultants, financial compliance services
    - `Financial Advisors` (slug: financial-advisors, icon: trending-up, display_order: 35)
      - Wealth managers, investment advisors, pension/tax planners for expats
    - `Yoga & Pilates` (slug: yoga-pilates, icon: flower-2, display_order: 36)
      - Yoga studios, pilates centres, wellness movement classes

  2. Security
    - RLS already enabled on categories table
    - Existing policies apply to new rows
*/

INSERT INTO categories (name, slug, icon_name, description, display_order)
VALUES
  ('Lawyers & Legal Services', 'lawyers-legal', 'scale', 'Law firms, solicitors, and legal professionals specialising in property, tax, commercial, and international law across Calvia and southwest Mallorca.', 33),
  ('Accountants & Tax Advisors', 'accountants-tax', 'calculator', 'Accounting firms, tax consultants, and financial compliance specialists serving businesses and expats in the Calvia region.', 34),
  ('Financial Advisors', 'financial-advisors', 'trending-up', 'Wealth managers, investment advisors, and pension planners helping expats and high-net-worth individuals with financial planning in Mallorca.', 35),
  ('Yoga & Pilates', 'yoga-pilates', 'flower-2', 'Yoga studios, pilates centres, and mindful movement classes across Calvia and southwest Mallorca.', 36)
ON CONFLICT (slug) DO NOTHING;
