/*
  # Puerto Portals Yachting, Shops & Services

  1. New Business Profiles (Yachting & Boat Rentals)
    - Argo Yachting (50+ years luxury motor yacht retail)
    - Astondoa Baleares (centuries-old Spanish yacht builder)
    - Azimut Grande Boutique (Italian superyachts 26-44m)
    - Azimut Spain by Marina Estrella (multi-brand dealer)
    - Puerto Portals Sailing School (official sailing school)

  2. New Business Profiles (Shopping & Retail)
    - ABT Cars & Estate (Audi/Lamborghini tuner since 1896)
    - Arias (luxury multi-brand fashion, 30 years)
    - Barok (fine jewellery since 1969)
    - Benibeca Puerto Portals (men's sustainable fashion)

  3. New Business Profiles (Other)
    - Big Blue Diving (SSI dive school)
    - Banco Santander Puerto Portals (commercial bank)

  4. Area: Portals Nous
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, email, website, address, latitude, longitude, rating, notes, social_links, is_placeholder)
VALUES
(
  'Argo Yachting',
  'argo-yachting-puerto-portals',
  'Bringing over 50 years of experience in the retailing of luxury motor yachts to owners throughout Europe. Official distributors of exclusive high-end yacht brands, providing brokerage services, advice and support at every stage of purchase and sale, plus refit, refurbishment, and maintenance.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://www.argoyachting.com/',
  'Puerto Portals, 07181 Portals Nous',
  39.5265, 2.5540,
  4.6,
  '50+ years experience. Luxury motor yacht retail and brokerage. Refit, refurbishment, service, maintenance. European-wide.',
  '{}',
  false
),
(
  'Astondoa Baleares',
  'astondoa-baleares',
  'A boutique showroom for the centuries-old Spanish shipyard Astondoa, designed along the same lines as their boats with premium quality materials, woods, leathers and decorative details. Welcoming customers who live in the Balearic Islands or sail along their coasts.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://www.astondoa.com/',
  'Puerto Portals, 07181 Portals Nous',
  39.5266, 2.5541,
  4.5,
  'Centuries-old Spanish yacht builder. Immersive boutique showroom. Premium materials and craftsmanship. Balearic Islands base.',
  '{}',
  false
),
(
  'Azimut Grande Boutique',
  'azimut-grande-boutique',
  'The Azimut-Benetti Group optimises comfort and performance from a sustainable point of view to develop completely original aesthetic taste. Azimut Grande offers vessels from 26 to 44 metres, distributed from their own dedicated Puerto Portals showroom.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://www.azimutyachts.com/',
  'Puerto Portals, 07181 Portals Nous',
  39.5267, 2.5542,
  4.7,
  'Italian superyachts 26-44 metres. Azimut-Benetti Group. Sustainable luxury. Own Puerto Portals showroom.',
  '{}',
  false
),
(
  'Azimut Spain by Marina Estrella',
  'azimut-marina-estrella',
  'Marina Estrella has selected the very best boat brands for discerning clients in the Balearics, with a long history of meeting customers'' boating needs for both power and sail. The company operates from 8+ offices throughout Spain.',
  '4b4d4ba1-6832-4e12-9a0a-a2ff91fe7bf8',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://www.marinaestrella.com/',
  'Puerto Portals, 07181 Portals Nous',
  39.5268, 2.5543,
  4.5,
  'Multi-brand yacht dealer. 8+ offices across Spain. Power and sail. Full service and after-sales.',
  '{}',
  false
),
(
  'Puerto Portals Sailing School',
  'puerto-portals-sailing-school',
  'The official sailing school of Puerto Portals marina, offering courses for all levels from beginners to advanced sailors. Professional instruction in one of the Mediterranean''s most prestigious marinas with ideal sailing conditions year-round.',
  'a72f5414-476b-49d4-9b65-3fdd60337f2e',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 666 591 159',
  'escueladevela@puertoportals.com',
  'https://www.puertoportals.com/',
  'Puerto Portals, Captaincy Tower, 07181 Portals Nous',
  39.5264, 2.5532,
  4.4,
  'Official marina sailing school. All levels beginner to advanced. Year-round instruction. Mediterranean conditions.',
  '{}',
  false
),
(
  'ABT Cars & Estate',
  'abt-cars-estate',
  'The world''s leading tuner of Audi, Lamborghini, CUPRA, Volkswagen, and Skoda vehicles. Founded in 1896 in Germany as a blacksmith''s shop for horse-drawn carriages, ABT Sportsline combines powerful engine tuning, suspension upgrades, and limited-edition high-performance special models.',
  'b62824bb-285c-4909-858f-1de7be77f935',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://www.abt-sportsline.com/',
  'Puerto Portals, 07181 Portals Nous',
  39.5270, 2.5544,
  4.6,
  'World''s leading vehicle tuner since 1896. Audi, Lamborghini, CUPRA, VW, Skoda. Engine, suspension, bodywork. Limited editions.',
  '{}',
  false
),
(
  'Arias Fashion Boutique',
  'arias-fashion-boutique',
  'A luxury multi-brand fashion boutique born from a passion for fashion and lifestyle. For 30 years and in constant evolution, Arias has been synonymous with excellence and professionalism, travelling worldwide to find the most exclusive products for demanding customers.',
  'b62824bb-285c-4909-858f-1de7be77f935',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  '',
  'Puerto Portals, 07181 Portals Nous',
  39.5271, 2.5545,
  4.5,
  'Luxury multi-brand fashion. 30 years in the industry. World''s most requested brands. Exclusive selection.',
  '{}',
  false
),
(
  'Barok Fine Jewellery',
  'barok-fine-jewellery',
  'Creating handcrafted pieces of fine jewellery with the highest quality gold and gemstones since 1969. All own-brand products are manufactured and handcrafted in-house. Also featuring collections from Carrera y Carrera, FOPE, and Anna Maria Cammilli.',
  'b62824bb-285c-4909-858f-1de7be77f935',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  '',
  'Puerto Portals, 07181 Portals Nous',
  39.5272, 2.5546,
  4.7,
  'Handcrafted fine jewellery since 1969. Gold and gemstones. Carrera y Carrera, FOPE, Anna Maria Cammilli. In-house manufacture.',
  '{}',
  false
),
(
  'Benibeca Puerto Portals',
  'benibeca-puerto-portals',
  'From the heart of the Mediterranean, Benibeca redefines masculine elegance through timeless garments crafted in noble fabrics: linen, organic cotton, Pima cotton, and Royal Alpaca. Even swimwear is made with advanced textile innovation from recycled materials while preserving true luxury.',
  'b62824bb-285c-4909-858f-1de7be77f935',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://benibeca.com/',
  'Puerto Portals, 07181 Portals Nous',
  39.5273, 2.5547,
  4.5,
  'Mediterranean menswear. Linen, organic cotton, Pima cotton, Royal Alpaca. Recycled material swimwear. Sustainable luxury.',
  '{"instagram": "https://www.instagram.com/benibeca/"}',
  false
),
(
  'Big Blue Diving',
  'big-blue-diving-portals',
  'The perfect dive school to discover the fascinating underwater world at Puerto Portals. Offering courses for all levels from try dives to internationally recognised SSI certifications, guided excursions to explore Mallorca''s breathtaking marine landscapes, and rental of modern equipment.',
  'fff617f0-5928-4339-bca2-5e9199303e49',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  '',
  'Puerto Portals, 07181 Portals Nous',
  39.5262, 2.5528,
  4.5,
  'SSI dive school. All levels from beginners to certification. Guided excursions. Modern equipment rental. Sustainable diving.',
  '{}',
  false
),
(
  'Banco Santander Puerto Portals',
  'banco-santander-puerto-portals',
  'A branch of Spain''s leading commercial bank, founded in 1857, located within the Puerto Portals marina complex. Providing full banking services to individuals, SMEs, and yacht owners with the convenience of a premium marina location.',
  'eb1df2f2-15bd-4686-87d4-1097f69017a8',
  '90784574-076e-471d-b61a-d18422d0f69f',
  '+34 971 171 100',
  '',
  'https://www.bancosantander.es/',
  'Puerto Portals, 07181 Portals Nous',
  39.5274, 2.5548,
  4.0,
  'Spain''s leading commercial bank since 1857. Full banking services. Convenient marina location. Individual and business accounts.',
  '{}',
  false
)
ON CONFLICT (slug) DO NOTHING;
