/*
  # Seed Accountant Business Profiles

  1. New Businesses (23 entries)
    - 23 unique accounting and tax advisory firms (deduplicated from 40-row CSV)
    - Category: Accountants & Tax Advisors (3a32913e-744c-46dc-9ea6-f327d64b27ad)
    - Includes tax consultants, accounting firms, expat financial compliance
    - Areas mapped: Calvia Vila, Ses Illetes, Son Ferrer

  2. Data Notes
    - Rows 24-40 in source CSV were duplicates of rows 7-23 and have been removed
    - Cross-listed firms use -accounting slug suffix to avoid conflicts with lawyer entries
    - Pont d''Inca and Alaior addresses mapped to Calvia Vila as nearest default
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, website, address, rating, notes, is_placeholder, social_links)
VALUES
  ('Vanrell & Company', 'vanrell-and-company', 'Tax, legal, and accounting firm in Illetas providing multilingual services for expats.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', 'f3fa2a2d-fd7d-4bb0-96e7-5384ca1c76c7', '+34 971 401 000', 'vanrell-company.com', 'Illetas, Calvià', 4.9, 'HNWI-friendly: Tax/legal/accounting; multilingual for expats.', false, '{}'),
  ('Garcia Lopez Barbara', 'garcia-lopez-barbara', 'Comprehensive accounting practice with premium services for affluent clients.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 601 762', 'garcialopez.com', 'Pont d''Inca (near Calvià)', 4.8, 'Comprehensive accounting; premium for affluent.', false, '{}'),
  ('Asesoría C&C Baleares', 'asesoria-cc-baleares', 'Tax compliance and accounting services for international clients in Palma.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 000', 'cc-baleares.com', 'Palma de Mallorca', 4.7, 'Tax/compliance; international clients.', false, '{}'),
  ('Cladera Terrasa', 'cladera-terrasa', 'Business accounting firm with a focus on high-net-worth clients.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 228 000', 'claderaterrasa.com', 'Palma de Mallorca', 4.6, 'Business accounting; HNWI focus.', false, '{}'),
  ('Lullius Partners', 'lullius-partners-accounting', 'Boutique tax advisory firm specialising in global mobility and international taxation.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 202', 'lullius.com', 'Mallorca', 4.8, 'Boutique tax advisory; global mobility.', false, '{}'),
  ('Baleario', 'baleario-accounting', 'Xero-certified accounting firm managing finances for expatriates in Mallorca.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 699 163', 'baleario.com', 'Mallorca', 4.7, 'Expat finances; Xero-certified.', false, '{}'),
  ('Garcia Elsener', 'garcia-elsener-accounting', 'International tax consultant with expertise in cross-border financial matters.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 000', 'garciaelsener.com', 'Palma de Mallorca', 4.6, 'Tax consultant; international expertise.', false, '{}'),
  ('Dsureda', 'dsureda-accounting', 'Reliable tax, accounting, and HR services for high-net-worth individuals.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 228 000', 'dsureda.com', 'Mallorca', 4.8, 'Tax/accounting/HR; reliable for HNWIs.', false, '{}'),
  ('Joan Cerdà', 'joan-cerda-accounting', 'Leading consultancy practice established in 1970 serving the Balearic Islands.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 717 171', 'joancerda.com', 'Balearic Islands', 4.7, 'Leading consultancy since 1970.', false, '{}'),
  ('Emprendix', 'emprendix-accounting', 'Company formation and ongoing accounting services for new businesses in Mallorca.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 214 000', 'emprendix.com', 'Palma de Mallorca', 4.6, 'Company formation/accounting.', false, '{}'),
  ('Global Accountancy', 'global-accountancy', 'Tax and residency advisory services for international clients relocating to Mallorca.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 202', 'globalaccountancy.es', 'Mallorca', 4.8, 'Tax/residency for internationals.', false, '{}'),
  ('Moya & Emery', 'moya-and-emery-accounting', 'Full-service accounting and advisory firm with a business-focused approach.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 699 163', 'moyaemery.com', 'Palma de Mallorca', 4.7, '360° services; business focus.', false, '{}'),
  ('De Micco & Friends', 'de-micco-and-friends-accounting', 'Tax consultancy and company administration for international businesses.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 871 955 077', 'lawyers-auditors.com', 'Palma de Mallorca', 4.6, 'Law/tax; company administration.', false, '{}'),
  ('Blevins Franks', 'blevins-franks-accounting', 'Wealth management and tax planning services for expatriates.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 699 163', 'blevinsfranks.com', 'Mallorca', 4.8, 'Wealth management/tax.', false, '{}'),
  ('Manor Tax Services', 'manor-tax-services', 'Bilingual tax advisory firm serving English and Spanish-speaking clients.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 228 000', 'manortax.com', 'Mallorca', 4.7, 'Bilingual tax advisors.', false, '{}'),
  ('Legal Steps', 'legal-steps', 'Tax return preparation and accounting services for individuals and businesses.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 000', 'legal-steps.com', 'Mallorca', 4.6, 'Tax returns/accounting.', false, '{}'),
  ('C.Sedano & Asociados', 'c-sedano-and-asociados', 'Labour and financial advisory practice for businesses and private clients.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 717 171', 'csedano.com', 'Mallorca', 4.8, 'Labour/financial advisor.', false, '{}'),
  ('Puga & Alarcón', 'puga-and-alarcon-accounting', 'Legal and financial advisory firm established in 2001 serving Calvia and Andratx.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 214 000', 'puga-alarcon.com', 'Andratx/Calvià', 4.7, 'Legal/financial since 2001.', false, '{}'),
  ('FR&P Abogados', 'frp-abogados-accounting', 'Dedicated accounting and tax department within an established Mallorca law firm.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 724 111', 'frpabogados.com', 'Palma de Mallorca', 4.6, 'Tax/accounting department.', false, '{}'),
  ('Cecome Alaior', 'cecome-alaior', 'Accounting services practice based in Alaior with island-wide coverage.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 372 795', 'cecome.com', 'Alaior', 4.8, 'Accounting services.', false, '{}'),
  ('Gestio Alaior', 'gestio-alaior', 'Tax and accounting advisory firm based in Alaior.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 372 795', 'gestioalaior.com', 'Alaior', 4.7, 'Tax/accounting.', false, '{}'),
  ('Elisa Bohorquez Castro', 'elisa-bohorquez-castro', 'Local tax expert serving businesses and individuals in Son Ferrer.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', 'e114aefa-938c-44e8-ba8c-5b5123990875', '+34 971 238 147', 'elisabohorquez.com', 'Son Ferrer, Calvià', 4.6, 'Local tax expert.', false, '{}'),
  ('Asesoría Tramuntana', 'asesoria-tramuntana', 'Full-service accounting, labour, and tax advisory firm in Calvia.', '3a32913e-744c-46dc-9ea6-f327d64b27ad', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 123 456', 'asesoriatramuntana.com', 'Calvià, Mallorca', 4.8, 'Accounting/labour/tax.', false, '{}');
