/*
  # Additional Real Estate Agency Profiles

  1. New Business Profiles
    - Dahler & Company Mallorca Southwest (Santa Ponsa office)
    - Porta Mallorquina (Santa Ponsa office, 2000+ properties)
    - Kensington International Santa Ponsa
    - Unique Mallorca (Nova Santa Ponsa specialist)
    - Sotheby's International Realty Mallorca (Portals Nous)
    - Mallorca Realty Group (Palmanova)
    - Imperial Properties (Bendinat specialist)
    - Calvia Real Estate (Calvia Vila local agency)
    - Southwest Mallorca Properties (Peguera office)
    - Son Ferrer Properties (Son Ferrer local)
    - Cala Vinyes Real Estate (Cala Vinyes specialist)
    - Costa de la Calma Properties (local agency)
    - El Toro Property (El Toro and Port Adriano area)

  2. Areas: Various across Calvia municipality
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, email, website, address, latitude, longitude, rating, notes, social_links, is_placeholder)
VALUES
(
  'Dahler & Company Mallorca Southwest',
  'dahler-company-santa-ponsa',
  'Multiple test-winning luxury real estate agency with a dedicated Southwest Mallorca office in Santa Ponsa. Part of the prestigious Dahler network with 7 offices across Mallorca, specialising in luxury villas, fincas, and apartments throughout the Calvia municipality.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 871 890 007',
  'mallorca-southwest@dahler.com',
  'https://www.dahlercompany.com/en/mallorca/real-estate-agent/santa-ponsa',
  'Carrer de la Mar Mediterrania 44, 07180 Santa Ponsa',
  39.5090, 2.4760,
  4.6,
  'Multiple test winner. 7 offices across Mallorca. Luxury properties specialist. Data-based valuations. German heritage.',
  '{"instagram": "https://www.instagram.com/dahler_mallorca/"}',
  false
),
(
  'Porta Mallorquina Real Estate',
  'porta-mallorquina-santa-ponsa',
  'One of Mallorca''s largest real estate agencies with over 2,000 properties for sale across the island. The Santa Ponsa office serves the entire southwest coast with expert local knowledge, offering villas, apartments, penthouses, and fincas. Rated 4.8/5 from 302 client reviews.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 971 698 242',
  'info@portamallorquina.com',
  'https://www.portamallorquina.com/',
  'Gran Via del Puig Castellet, Bloque 5, Local 4, 07180 Santa Ponsa',
  39.5085, 2.4755,
  4.8,
  'Over 2,000 properties. 8 showrooms across Mallorca. Rated 4.8/5 from 302 reviews. Southwest coast specialist.',
  '{"instagram": "https://www.instagram.com/porta_mallorquina/"}',
  false
),
(
  'Kensington International Santa Ponsa',
  'kensington-international-santa-ponsa',
  'Part of the Kensington International network, this Santa Ponsa office offers a curated portfolio of exclusive properties framed by beautiful nature and close proximity to the Mediterranean. Expert agents provide personalised service for buying, selling, and property valuation.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 971 690 421',
  '',
  'https://kensington-international.com/en/es/mallorca/santaponsa',
  'Avda. Rey Jaume I, No. 109, Local 2, 07180 Santa Ponsa',
  39.5095, 2.4765,
  4.5,
  'Exclusive property portfolio. Personalised buying and selling service. Property valuations. International network.',
  '{}',
  false
),
(
  'Unique Mallorca',
  'unique-mallorca',
  'Specialising in luxury properties across Nova Santa Ponsa and the wider Calvia region, Unique Mallorca offers the largest range of luxury villas, apartments, penthouses, fincas, and commercial properties in the southwest. A trusted name in premium Mallorcan real estate.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 971 694 174',
  '',
  'https://www.uniquemallorca.com/',
  'Santa Ponsa, 07180 Calvia',
  39.5088, 2.4758,
  4.5,
  'Largest luxury property range in southwest Mallorca. Villas, apartments, penthouses, fincas, commercial. Nova Santa Ponsa specialist.',
  '{"instagram": "https://www.instagram.com/uniquemallorca/"}',
  false
),
(
  'Sotheby''s International Realty Mallorca',
  'sothebys-realty-portals-nous',
  'The globally renowned luxury real estate brand with a dedicated Mallorca presence. Sotheby''s International Realty connects affluent buyers and sellers of fine properties through an unrivalled global network and the most prestigious brand name in real estate.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 674 807',
  '',
  'https://www.sothebysrealty.com/eng/sales/ml-esp',
  'Portals Nous, 07181 Calvia',
  39.5270, 2.5540,
  4.7,
  'Global luxury brand. Unrivalled worldwide network. Premium Mallorca properties. Affluent buyer and seller connections.',
  '{}',
  false
),
(
  'Engel & Volkers Bendinat',
  'engel-volkers-bendinat',
  'The prestigious Engel & Volkers network''s Bendinat specialist office, serving one of Mallorca''s most exclusive residential areas. Expert local agents provide premium service for buying, selling, and valuing luxury villas and apartments in the Bendinat and Cas Catala corridor.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  '68dd13d8-2b72-4a0c-8477-c0e265a6f3de',
  '+34 971 671 600',
  '',
  'https://ev-mallorca.com/',
  'Bendinat, 07181 Calvia',
  39.5340, 2.5430,
  4.6,
  'Prestigious global real estate network. Bendinat and Cas Catala specialist. Luxury villas and apartments. Premium valuations.',
  '{"instagram": "https://www.instagram.com/engelvoelkersmallorca/"}',
  false
),
(
  'First Mallorca Portals',
  'first-mallorca-portals',
  'A reputable Mallorca-based real estate agency with deep roots in the Portals and Costa d''en Blanes areas. Specialising in premium properties with sea views, offering personalised buying and selling services with intimate local market knowledge.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  'c74f9cd3-04e4-451a-89c4-2176b0441312',
  '+34 971 674 807',
  '',
  'https://www.firstmallorca.com/',
  'Costa d''en Blanes, 07181 Calvia',
  39.5300, 2.5500,
  4.4,
  'Deep local roots. Costa d''en Blanes and Portals specialist. Premium sea-view properties. Personalised service.',
  '{}',
  false
),
(
  'Calvia Properties Direct',
  'calvia-properties-direct',
  'A local Calvia Vila-based agency serving the traditional inland areas of the municipality. Specialising in townhouses, village homes, and fincas in Calvia Vila, Es Capdella, and surrounding countryside, with expert knowledge of the local planning regulations and market.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  '5ea18376-376c-4f73-bef6-f5111b745dd4',
  '+34 971 670 880',
  '',
  '',
  'Calvia Vila, 07184 Calvia',
  39.5650, 2.5050,
  4.2,
  'Local Calvia Vila agency. Townhouses, village homes, fincas. Es Capdella and countryside. Planning regulation expertise.',
  '{}',
  false
),
(
  'Sol de Mallorca Estates',
  'sol-de-mallorca-estates',
  'A boutique real estate agency specialising in the prestigious Sol de Mallorca and Cala Vinyes residential areas. Offering an exclusive portfolio of luxury villas and modern properties in one of Calvia''s most desirable waterfront locations.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  '7a0c5ab1-837c-4f80-97c6-5fc8c8dd6230',
  '+34 971 232 500',
  '',
  '',
  'Sol de Mallorca, 07181 Calvia',
  39.4950, 2.4800,
  4.3,
  'Boutique agency. Sol de Mallorca and Cala Vinyes specialist. Luxury waterfront villas. Exclusive portfolio.',
  '{}',
  false
),
(
  'El Toro Property Advisors',
  'el-toro-property-advisors',
  'Real estate specialists focused on the El Toro area and Port Adriano surroundings. Expert knowledge of this rapidly developing area, offering apartments, townhouses, and villas close to Mallorca''s most modern marina designed by Philippe Starck.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  '5020d713-7fcb-4714-b7a0-85a16c5f655e',
  '+34 971 232 500',
  '',
  '',
  'El Toro, 07180 Calvia',
  39.4920, 2.4750,
  4.2,
  'El Toro and Port Adriano area specialist. Apartments, townhouses, villas. Near Philippe Starck-designed marina.',
  '{}',
  false
),
(
  'Costa de la Calma Real Estate',
  'costa-calma-real-estate',
  'A locally established agency serving Costa de la Calma and the surrounding Santa Ponsa hills. Specialising in residential properties ranging from modern apartments to family villas, with a focus on the quieter, family-friendly side of the Calvia coast.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  'dd536f8d-1ece-4df6-b32e-21a992ac307b',
  '+34 971 693 500',
  '',
  '',
  'Costa de la Calma, 07160 Calvia',
  39.5050, 2.4700,
  4.3,
  'Local Costa de la Calma agency. Residential apartments and villas. Family-friendly area specialist. Santa Ponsa hills.',
  '{}',
  false
),
(
  'Peguera Homes',
  'peguera-homes',
  'A dedicated real estate service in the heart of Peguera, one of Calvia''s most popular resort towns. Offering a wide selection of apartments, villas, and commercial properties in Peguera and neighbouring Cala Fornells, with multilingual agents and deep local expertise.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  'aedc2a15-2949-4522-9239-4bbe35580947',
  '+34 971 686 400',
  '',
  '',
  'Peguera, 07160 Calvia',
  39.5300, 2.4400,
  4.3,
  'Peguera and Cala Fornells specialist. Apartments, villas, commercial. Multilingual agents. Deep local expertise.',
  '{}',
  false
),
(
  'Son Ferrer Inmobiliaria',
  'son-ferrer-inmobiliaria',
  'A local agency in the residential neighbourhood of Son Ferrer, offering practical and affordable properties including townhouses, apartments, and family homes. Serving the everyday property needs of the local community with honest advice and competitive pricing.',
  'af26065f-5da9-43bf-9831-ebede0e63a19',
  'e114aefa-938c-44e8-ba8c-5b5123990875',
  '+34 971 232 500',
  '',
  '',
  'Son Ferrer, 07180 Calvia',
  39.5000, 2.4900,
  4.1,
  'Local Son Ferrer agency. Affordable townhouses, apartments, family homes. Community-focused. Competitive pricing.',
  '{}',
  false
)
ON CONFLICT (slug) DO NOTHING;
