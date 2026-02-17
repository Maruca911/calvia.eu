/*
  # Add Banks & Finance and Pharmacies categories

  1. New Categories
    - `Banks & Finance` (slug: banks-finance, icon: landmark, display_order: 31)
    - `Pharmacies` (slug: pharmacies, icon: pill, display_order: 32)

  2. Notes
    - These categories support the new business profiles being imported from CSV data
    - Banks & Finance covers traditional banks, digital banking, and financial services
    - Pharmacies covers pharmacy and wellness retail locations across Calvia
*/

INSERT INTO categories (name, slug, icon_name, description, display_order)
VALUES
  ('Banks & Finance', 'banks-finance', 'landmark', 'Banks, financial services, wealth management, and digital banking options serving the Calvia municipality and surrounding areas.', 31),
  ('Pharmacies', 'pharmacies', 'pill', 'Pharmacies, wellness stores, and health product retailers across Calvia. Multilingual service for residents and visitors.', 32)
ON CONFLICT (slug) DO NOTHING;
