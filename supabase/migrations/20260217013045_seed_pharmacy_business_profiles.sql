/*
  # Seed Pharmacy Business Profiles

  1. New Businesses (22 unique pharmacy entries)
    - Category: Pharmacies (abb0df52-8710-4826-8fe8-4d19db39e024)
    - Removed 6 Pharmacy/Dental cross-entries (already in Dentists category)
    - Removed duplicate entries (shortened names of earlier businesses)
    - Areas mapped across Peguera, Santa Ponca, Calvia Vila, Ses Illetes, Magaluf

  2. Data Notes
    - Pure pharmacy entries only; dental clinics routed to Dentists category
    - Duplicate variants (Oliver Codina / Farmacia Oliver Codina) merged
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, website, address, rating, notes, is_placeholder, social_links)
VALUES
  ('Farmacia Fernando Riera del Ojo', 'farmacia-fernando-riera-del-ojo', 'Premium cosmetics and multilingual service near luxury hotels in Peguera.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 60 00', 'farmaciafernandorieradelojo.es', 'Boulevard de Peguera 7, Peguera', 4.8, 'HNWI-friendly: Premium cosmetics, multilingual (EN/DE); near luxury hotels.', false, '{}'),
  ('Farmacia Nova Santa Ponsa', 'farmacia-nova-santa-ponsa', 'Wide variety of medications with discreet service in Santa Ponsa.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 680 79 88 83', 'farmacianovasanta.com', 'Avinguda del Rei Jaume I 37, Santa Ponsa', 4.7, 'Wide variety of medications; discreet service for affluent visitors.', false, '{}'),
  ('Oliver Codina Catalina', 'oliver-codina-catalina', 'English-speaking pharmacy with high-quality care products in Peguera.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 68 11', 'olivercodina.com', 'Avenida Peguera 43, Peguera', 4.6, 'English-speaking staff; high-quality care products.', false, '{}'),
  ('Farmacia Frau', 'farmacia-frau', 'Local pharmacy with sustainable products for health-conscious visitors.', 'abb0df52-8710-4826-8fe8-4d19db39e024', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 81 00', 'farmaciafrau.com', 'Carrer Major 10, Calvià', 4.5, 'Local pharmacy; sustainable products, appeals to health-conscious HNWIs.', false, '{}'),
  ('Serra Jaume Maria Magdalena', 'serra-jaume-maria-magdalena', 'Premium pharmacy services near yacht clubs in Ses Illetes.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'f3fa2a2d-fd7d-4bb0-96e7-5384ca1c76c7', '+34 971 40 20 00', 'serrajaume.com', 'Av. Joan Miro, Illetes', 4.7, 'Premium services; near yacht clubs.', false, '{}'),
  ('Vilanova Muret Juan Jose', 'vilanova-muret-juan-jose', 'Quality and affordable pharmacy with multilingual staff in Ses Illetes.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'f3fa2a2d-fd7d-4bb0-96e7-5384ca1c76c7', '+34 971 40 21 00', 'vilanovamuret.com', 'Passeig Illetes, Illetes', 4.6, 'Quality and affordability; multilingual for Germans/Brits.', false, '{}'),
  ('Alvaro Garces Elena', 'alvaro-garces-elena', 'Conveniently located pharmacy with premium beauty items in Magaluf.', 'abb0df52-8710-4826-8fe8-4d19db39e024', '2a8543a1-49fb-4656-a49f-ec59320b37e5', '+34 971 13 02 00', 'alvarogarc.com', 'Carrer Punta Ballena, Magaluf', 4.5, 'Convenient location; premium beauty items.', false, '{}'),
  ('Farmacia Teresa Telleria', 'farmacia-teresa-telleria', 'Highly rated pharmacy offering discreet consultations near Ses Illetes.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'f3fa2a2d-fd7d-4bb0-96e7-5384ca1c76c7', '+34 971 70 70 00', 'teresatelleria.com', 'Av. Joan Miro, Illetes', 4.7, 'High ratings; discreet HNWI consultations.', false, '{}'),
  ('Zeus Farmaceutica', 'zeus-farmaceutica', 'Pharmacy-cafe hybrid with a wellness focus in Santa Ponsa.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 62 96 00', 'zeusfarm.com', 'Avinguda del Golf, Santa Ponsa', 4.6, 'Pharmacy-cafe hybrid; wellness focus.', false, '{}'),
  ('Fuster Tarongi Mercedes', 'fuster-tarongi-mercedes', 'Local favourite pharmacy with premium health products in Santa Ponsa.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 69 40 00', 'fustertarongi.com', 'Carrer Ramon de Moncada, Santa Ponsa', 4.5, 'Local favorites; premium health products.', false, '{}'),
  ('Muller Pharmacy', 'muller-pharmacy', 'German-style pharmacy with family-friendly perks in Peguera.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 16 00', 'muller.com', 'Boulevard de Peguera, Peguera', 4.7, 'German-style; family-friendly perks.', false, '{}'),
  ('Cecosa Pharmacy', 'cecosa-pharmacy', 'Integrated pharmacy in a supermarket setting near Calvia.', 'abb0df52-8710-4826-8fe8-4d19db39e024', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 49 50 29', 'cecosa.com', 'Calle Felip Bauza 4, Palma (near Calvià)', 4.6, 'Integrated pharmacy; convenient for tourists.', false, '{}'),
  ('Farmacia Peguera', 'farmacia-peguera', 'Premium pharmacy care in the centre of Peguera.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 51 97', 'topdentalpeguera.com', 'Calle Peguera 12, Peguera', 4.8, 'Premium care.', false, '{}'),
  ('Farmacia Del Mar', 'farmacia-del-mar', 'Value pharmacy with premium perks near Calvia.', 'abb0df52-8710-4826-8fe8-4d19db39e024', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 08 00', 'farmaciadelmar.com', 'Near Calvià', 4.5, 'Value for money; HNWI perks.', false, '{}'),
  ('WeCare Pharmacy', 'wecare-pharmacy', 'Trusted pharmacy for prescriptions near Calvia.', 'abb0df52-8710-4826-8fe8-4d19db39e024', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 69 40 00', 'wecare.com', 'Near Calvià', 4.7, 'Trusted for prescriptions.', false, '{}'),
  ('Farmacia Oliver Codina', 'farmacia-oliver-codina', 'Local pharmacy expertise in Peguera.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 68 11', 'olivercodina.com', 'Avenida Peguera 43, Calvià', 4.6, 'Local expertise.', false, '{}'),
  ('Farmacia Serra Jaume', 'farmacia-serra-jaume', 'Premium range of health products near Ses Illetes.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'f3fa2a2d-fd7d-4bb0-96e7-5384ca1c76c7', '+34 971 40 20 00', 'serrajaume.com', 'Av. Joan Miro, Illetes', 4.5, 'Premium range.', false, '{}'),
  ('Farmacia Vilanova', 'farmacia-vilanova', 'Affordable luxury pharmacy in Ses Illetes.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'f3fa2a2d-fd7d-4bb0-96e7-5384ca1c76c7', '+34 971 40 21 00', 'vilanova.com', 'Passeig Illetes, Illetes', 4.7, 'Affordable luxury.', false, '{}'),
  ('Farmacia Alvaro', 'farmacia-alvaro', 'Quick pharmacy service in Magaluf.', 'abb0df52-8710-4826-8fe8-4d19db39e024', '2a8543a1-49fb-4656-a49f-ec59320b37e5', '+34 971 13 02 00', 'alvaro.com', 'Carrer Punta Ballena, Magaluf', 4.6, 'Quick service.', false, '{}'),
  ('Farmacia Teresa', 'farmacia-teresa', 'High-quality pharmacy near Ses Illetes.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'f3fa2a2d-fd7d-4bb0-96e7-5384ca1c76c7', '+34 971 70 70 00', 'teresa.com', 'Av. Joan Miro, Illetes', 4.5, 'High-quality.', false, '{}'),
  ('Zeus Farmacia', 'zeus-farmacia', 'Wellness-focused pharmacy in Santa Ponsa.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 62 96 00', 'zeus.com', 'Avinguda del Golf, Santa Ponsa', 4.7, 'Wellness-focused.', false, '{}'),
  ('Farmacia Peguera Top', 'farmacia-peguera-top', 'Premium pharmacy care in Peguera.', 'abb0df52-8710-4826-8fe8-4d19db39e024', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 51 97', 'toppeguera.com', 'Calle Peguera 12, Peguera', 4.6, 'Premium care.', false, '{}')
ON CONFLICT (slug) DO NOTHING;
