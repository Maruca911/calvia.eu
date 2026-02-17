/*
  # Seed Dentist & Dental Clinic Business Profiles

  1. New Businesses (24 unique entries, deduplicated from 30 CSV rows)
    - Category: Dentists & Dental Clinics (56e7c56e-0c41-4cb9-9aab-558ffbba7952)
    - Removed 6 duplicate "Leandro Gomila Forio" rows (kept 1)
    - Areas mapped from addresses across Calvia municipality

  2. Data Quality
    - Cross-category Pharmacy/Dental entries from pharmacy CSV reclassified here
    - Vague "Near Calvia" addresses mapped to Calvia Vila area
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, website, address, rating, notes, is_placeholder, social_links)
VALUES
  ('Clinica Dental Art', 'clinica-dental-art', 'Personalised dental care with multilingual staff near Santa Ponsa.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5020d713-7fcb-4714-b7a0-85a16c5f655e', '+34 971 23 73 73', 'clinicadentalartmallorca.com', 'C/ Gran Vía 13-15, El Toro', 4.8, 'HNWI-friendly: Personalized care, multilingual; near Santa Ponsa.', false, '{}'),
  ('A2 Dental Mallorca', 'a2-dental-mallorca', 'Aesthetic dentistry and premium implants near Puerto Portals.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '90784574-076e-471d-b61a-d18422d0f69f', '+34 971 67 52 00', 'a2dentalmallorca.com', 'Near Puerto Portals, Calvià', 4.7, 'Aesthetic dentistry; premium implants.', false, '{}'),
  ('Dental Clinic Magaluf', 'dental-clinic-magaluf', 'British-owned family dental practice in Magaluf.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '2a8543a1-49fb-4656-a49f-ec59320b37e5', '+34 971 13 08 00', 'dentalclinicmagaluf.com', 'La Vila Centro Comercio, Magaluf', 4.6, 'British-owned; family practice.', false, '{}'),
  ('Advance Dental Institute', 'advance-dental-institute', 'State-of-the-art painless dental treatments in Bendinat.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '68dd13d8-2b72-4a0c-8477-c0e265a6f3de', '+34 971 13 86 20', 'clinicadentaladvance.com', 'C/ Carrer Ginesta 1, Bendinat', 4.5, 'State-of-the-art; painless treatments.', false, '{}'),
  ('Santa Ponsa Dental Practice', 'santa-ponsa-dental-practice', 'British GDC registered dental practice with orthodontics in Santa Ponsa.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 69 40 71', 'santaponsadental.com', 'Avenida del Rey Jaime I 108, Santa Ponsa', 4.8, 'British GDC registered; orthodontics.', false, '{}'),
  ('Clinica Pronova', 'clinica-pronova', 'Specialist dental clinic with ethical care standards in Palma, near Calvia.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 22 00 00', 'clinicapronova.com', 'Costa de les Germanetes 8, Palma (near Calvià)', 4.7, 'Specialists; ethical care.', false, '{}'),
  ('Top Dental Peguera', 'top-dental-peguera', 'Multilingual dental clinic near the beaches of Peguera.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 51 97', 'topdentalpeguera.com', 'Calle Peguera 12, Peguera', 4.6, 'Multilingual; near beaches.', false, '{}'),
  ('Clinica Dental Brada', 'clinica-dental-brada', 'Full-service dental clinic with discreet care near Peguera.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', 'aedc2a15-2949-4522-9239-4bbe35580947', '+34 971 68 50 00', 'clinicadentalbrada.com', 'Near Peguera', 4.5, 'Full services; HNWI discretion.', false, '{}'),
  ('Globaldent Balear', 'globaldent-balear', 'Multilingual dental practice serving international patients near Calvia.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 13 00 00', 'globaldent.com', 'Near Calvià', 4.7, 'International patients.', false, '{}'),
  ('Clinica Dental Dr Besant', 'clinica-dental-dr-besant', 'Highly rated dental consultations near Calvia.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 40 00 00', 'drbesant.com', 'Near Calvià', 4.6, 'High ratings; premium consultations.', false, '{}'),
  ('Dr Azarias Garcia', 'dr-azarias-garcia', 'Expert dental care with discreet service near Calvia.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 70 00 00', 'azariasgarcia.com', 'Near Calvià', 4.5, 'Expert care; discreet service.', false, '{}'),
  ('Clinica Dental Schmieder', 'clinica-dental-schmieder', 'German-speaking dental specialists near Calvia.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 68 00 00', 'schmieder.com', 'Near Calvià', 4.7, 'German specialists.', false, '{}'),
  ('Centro Liberix Dental', 'centro-liberix-dental', 'Multilingual dental team in Palma near Calvia.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 57 36 87', 'liberix-dental.com', 'Avenida Picasso 61, Palma', 4.6, 'Multilingual team.', false, '{}'),
  ('Christina Prats Vidal', 'christina-prats-vidal', 'Full dental services in Calvia Vila.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 67 07 46', 'crstnprtsvdl.com', 'Calvià', 4.5, 'Full dental services.', false, '{}'),
  ('Althaus and Bondulich', 'althaus-and-bondulich', 'Premium aesthetic dentistry in Palma near Calvia.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 72 54 44', 'althausbondulich.com', 'C/ Pere Dezcallar i Net 13, Palma', 4.7, 'Premium aesthetics.', false, '{}'),
  ('Clinica Dental AB', 'clinica-dental-ab', 'Local dental expertise in Palma Nova.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '611170cd-47c1-4060-a226-fad26428df6a', '+34 971 68 12 00', 'clinicadentalab.com', 'Palma Nova', 4.6, 'Local expertise.', false, '{}'),
  ('Dr Philipp Vogelsang', 'dr-philipp-vogelsang', 'Part of the Centro Liberix dental team in Palma.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 57 36 87', 'vogelsang.com', 'Centro Liberix, Palma', 4.5, 'Wonderful team.', false, '{}'),
  ('Dra Yuen Yee Chan', 'dra-yuen-yee-chan', 'Prosthodontics specialist at the El Toro clinic.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5020d713-7fcb-4714-b7a0-85a16c5f655e', '+34 971 23 73 73', 'yuenchan.com', 'C/ Gran Vía 13-15, El Toro', 4.7, 'Prosthodontics specialist.', false, '{}'),
  ('Howard Forge BDS', 'howard-forge-bds', 'Cosmetic dental treatments in Santa Ponsa.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 69 40 71', 'howardforge.com', 'Avenida del Rey Jaime I 108, Santa Ponsa', 4.6, 'Cosmetic treatments.', false, '{}'),
  ('Aleksandra Sosnowska', 'aleksandra-sosnowska', 'Approachable dental team in Santa Ponsa.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 69 40 00', 'aleksandra.com', 'Santa Ponsa', 4.5, 'Approachable team.', false, '{}'),
  ('Rodrigo Gonzalez Terrats', 'rodrigo-gonzalez-terrats', 'Periodontics expert practising in Santa Ponsa.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', '+34 971 69 40 00', 'rodrigo.com', 'Santa Ponsa', 4.7, 'Periodontics expert.', false, '{}'),
  ('Marga Prats', 'marga-prats-dentist', 'Aesthetic dentistry at Pronova Clinic, Palma.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 22 00 00', 'margaprats.com', 'Pronova Clinic, Palma', 4.6, 'Aesthetics.', false, '{}'),
  ('Daniela Figueroa', 'daniela-figueroa-dentist', 'Children''s dentistry specialist at Pronova.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 22 00 00', 'daniela.com', 'Pronova, Palma', 4.5, 'Children''s dentistry.', false, '{}'),
  ('Leandro Gomila Forio', 'leandro-gomila-forio', 'Local dental practice in Calvia Vila.', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 67 07 46', 'leandrogomila.com', 'Calvià', 4.6, 'Local practice.', false, '{}')
ON CONFLICT (slug) DO NOTHING;
