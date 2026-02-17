/*
  # Seed Financial Advisor Business Profiles

  1. New Businesses (24 entries)
    - 24 unique financial advisors and wealth managers (deduplicated from 40-row CSV)
    - Category: Financial Advisors (1988196b-ebb9-4770-871f-2eee282fe153)
    - Includes wealth management, pension planning, investment advice, mortgage brokerage
    - Areas mapped: Calvia Vila

  2. Data Notes
    - Rows 25-40 in source CSV were duplicates of rows 10-24 and have been removed
    - Cross-listed firms use -advisor slug suffix to avoid conflicts with lawyer/accountant entries
    - Spain-wide and Balearics-wide addresses mapped to Calvia Vila as nearest default
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, website, address, rating, notes, is_placeholder, social_links)
VALUES
  ('Piña Ripoll Antonio', 'pina-ripoll-antonio', 'Multilingual financial advisor providing tailored wealth management in Palma.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 000', 'pinaripoll.com', 'Palma de Mallorca', 4.9, 'HNWI-friendly: Financial advising; multilingual.', false, '{}'),
  ('Tous Barcelo Jose Francisco', 'tous-barcelo-jose-francisco', 'Investment planning specialist for private and corporate clients.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 228 000', 'tousbarcelo.com', 'Palma de Mallorca', 4.8, 'Investment planning.', false, '{}'),
  ('Gingal', 'gingal', 'Wealth management firm offering comprehensive financial planning services.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 717 171', 'gingal.com', 'Palma de Mallorca', 4.7, 'Wealth management.', false, '{}'),
  ('Spectrum IFA', 'spectrum-ifa', 'Independent financial advice on QROPS, investments, and pensions for expats across the Balearics.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 93 665 8596', 'spectrum-ifa.com', 'Balearic Islands', 4.6, 'QROPS/investments for expats.', false, '{}'),
  ('Susan Worthington', 'susan-worthington', 'Independent financial advisor with over 40 years of experience in Mallorca.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 670 308 987', 'spectrum-ifa.com', 'Mallorca', 4.8, 'Independent advice.', false, '{}'),
  ('Richard Rose', 'richard-rose', 'Specialist financial advisor for yacht crew and maritime professionals in Mallorca.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 656 374 960', 'spectrum-ifa.com', 'Mallorca', 4.7, 'Yacht crew finance.', false, '{}'),
  ('Tom Worthington', 'tom-worthington', 'Pensions and tax planning advisor helping expats manage their retirement in Spain.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 688 988 686', 'spectrum-ifa.com', 'Mallorca', 4.6, 'Pensions/tax.', false, '{}'),
  ('Jonathan Ralph', 'jonathan-ralph', 'Qualified financial planner serving the expat community from Sineu.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 520 000', 'jonathanralph.com', 'Sineu, Mallorca', 4.8, 'Qualified planner for expats.', false, '{}'),
  ('José Sellés', 'jose-selles', 'Investment and mortgage specialist advising on savings and asset management.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 202', 'joseselles.com', 'Palma de Mallorca', 4.7, 'Investment/mortgages.', false, '{}'),
  ('Blevins Franks', 'blevins-franks-advisor', 'Cross-border tax and wealth advisory for expats across the Balearic Islands.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 699 163', 'blevinsfranks.com', 'Mallorca', 4.6, 'Cross-border tax.', false, '{}'),
  ('Puga & Alarcón', 'puga-and-alarcon-advisor', 'Legal and financial advice firm with established expertise since 2001.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 213 096', 'puga-alarcon.com', 'Palma de Mallorca', 4.8, 'Legal/financial advice.', false, '{}'),
  ('Lullius Partners', 'lullius-partners-advisor', 'Private wealth and tax advisory firm for high-net-worth individuals.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 000', 'lullius.com', 'Mallorca', 4.7, 'Private wealth/tax.', false, '{}'),
  ('Luis Heymann & Antonio Escamilla', 'luis-heymann-and-antonio-escamilla', 'Property investment specialists guiding clients through Mallorca real estate.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 228 000', 'dilaurarealestate.com', 'Mallorca', 4.6, 'Property investment.', false, '{}'),
  ('Garcia Elsener', 'garcia-elsener-advisor', 'Tax and wealth consultant with international financial expertise.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 000', 'garciaelsener.com', 'Palma de Mallorca', 4.8, 'Tax/wealth.', false, '{}'),
  ('Joan Cerdà', 'joan-cerda-advisor', 'Tax consultancy firm operating across the Balearic Islands since 1970.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 717 171', 'joancerda.com', 'Balearic Islands', 4.7, 'Tax consultancy.', false, '{}'),
  ('Moya & Emery', 'moya-and-emery-advisor', 'Team of expert financial advisors serving businesses and individuals.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 214 000', 'moyaemery.com', 'Palma de Mallorca', 4.6, 'Advisors.', false, '{}'),
  ('De Micco & Friends', 'de-micco-and-friends-advisor', 'Full-service business consulting and financial advisory for international clients.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 871 955 077', 'lawyers-auditors.com', 'Palma de Mallorca', 4.8, 'Business consulting.', false, '{}'),
  ('Graeme Callaghan', 'graeme-callaghan', 'English-speaking financial advisor specialising in British expat planning.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 202', 'gcqrops.com', 'Palma de Mallorca', 4.7, 'English-speaking advisor.', false, '{}'),
  ('Private Client Consultancy', 'private-client-consultancy', 'Tailored wealth solutions for private clients with complex financial needs.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 207 998 0570', 'pccwealth.com', 'Mallorca', 4.6, 'Wealth solutions.', false, '{}'),
  ('Chorus Financial', 'chorus-financial', 'Award-winning financial advisory firm rated highest for expat services in Spain.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 951 120 000', 'chorusfinancial.es', 'Spain', 4.8, 'Highest-rated for expats.', false, '{}'),
  ('Finance Mallorca', 'finance-mallorca', 'Specialist mortgage brokerage helping clients secure property financing in Mallorca.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 228 000', 'finance-mallorca.com', 'Mallorca', 4.7, 'Mortgage brokerage.', false, '{}'),
  ('Unique Mallorca', 'unique-mallorca', 'Combined real estate and financial advisory services across the island.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 720 000', 'uniquemallorca.com', 'Mallorca', 4.6, 'Real estate/finance.', false, '{}'),
  ('Fiduciary Wealth', 'fiduciary-wealth', 'Certified wealth managers providing independent financial planning in Spain.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+44 207 998 0570', 'financialplanningspain.com', 'Spain', 4.8, 'Certified managers.', false, '{}'),
  ('Zaino''s Capital', 'zainos-capital', 'Financial consultancy and portfolio management firm based in Mallorca.', '1988196b-ebb9-4770-871f-2eee282fe153', '5ea18376-376c-4f73-bef6-f5111b745dd4', '+34 971 717 171', 'zainoscapital.com', 'Mallorca', 4.7, 'Consultancy/management.', false, '{}');
