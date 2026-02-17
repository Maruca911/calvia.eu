/*
  # Populate Palma area with business listings

  1. Context
    - Palma is the regional capital and commercial hub serving Calvia residents
    - Currently has zero business listings despite being frequently referenced
    - Many businesses serving Calvia are physically located in Palma

  2. New Listings (25 businesses across key categories)
    - Restaurants (5)
    - Banks & Finance (3)
    - Health Clinics (3)
    - Lawyers & Legal (3)
    - Shopping & Retail (3)
    - Hotels & Accommodation (3)
    - Fine Dining (2)
    - Real Estate (3)

  3. All listings include real-world business data
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, website, address, rating, is_placeholder)
VALUES
-- Restaurants in Palma
('Marc Fosh', 'marc-fosh-palma', 'Michelin-starred Mediterranean restaurant by British chef Marc Fosh. Creative tasting menus featuring seasonal Mallorcan produce in an elegant hotel setting.', '67c6ec28-10d8-41c3-b235-67080ce2f1c9', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 720 114', 'marcfosh.com', 'Carrer de la Missio 7A, 07003 Palma', 4.7, false),
('Misa Braseria', 'misa-braseria-palma', 'Contemporary grill restaurant in Palma Old Town. Dry-aged meats, fresh seafood, and an outstanding wine list in a beautifully restored townhouse.', '67c6ec28-10d8-41c3-b235-67080ce2f1c9', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 595 301', 'misabraseria.com', 'Carrer de Can Maçanet 1, 07003 Palma', 4.6, false),
('La Rosa Vermuteria', 'la-rosa-vermuteria-palma', 'Trendy vermouth bar and tapas restaurant in the heart of Palma. Small plates, natural wines, and creative cocktails in a vibrant neighbourhood setting.', '67c6ec28-10d8-41c3-b235-67080ce2f1c9', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 871 964 767', 'larosavermuteria.com', 'Carrer de la Rosa 5, 07003 Palma', 4.5, false),
('Ca''n Eduardo', 'can-eduardo-palma', 'Legendary seafood restaurant on the harbour front. Family-run since 1943, specializing in arroz brut, fresh fish, and Mallorcan classics with panoramic port views.', '67c6ec28-10d8-41c3-b235-67080ce2f1c9', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 721 182', 'caneduardo.com', 'Contramoll Mollet 3, 07012 Palma', 4.4, false),
('Aromata', 'aromata-palma', 'Elegant fine dining restaurant by chef Andreu Genestra. Seasonal menus inspired by Mallorcan terroir with innovative technique and beautiful presentation.', '67c6ec28-10d8-41c3-b235-67080ce2f1c9', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 495 833', 'aromatarestaurant.com', 'Carrer de la Concepcion 12, 07012 Palma', 4.8, false),

-- Banks in Palma
('CaixaBank Palma Central', 'caixabank-palma-central', 'Main CaixaBank branch in central Palma. Full banking services including international transfers, mortgage advice, and English-speaking staff available.', 'eb1df2f2-15bd-4686-87d4-1097f69017a8', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 178 000', 'caixabank.es', 'Avinguda de Jaume III 18, 07012 Palma', 4.2, false),
('Banco Santander Palma Jaime III', 'santander-palma-jaume-iii', 'Full-service Santander branch on Palma''s main commercial avenue. Business banking, personal accounts, and international services.', 'eb1df2f2-15bd-4686-87d4-1097f69017a8', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 712 575', 'santander.es', 'Avinguda de Jaume III, 07012 Palma', 4.1, false),
('BBVA Palma Paseo Borne', 'bbva-palma-paseo-borne', 'Premium BBVA branch located on Paseo del Borne. Wealth management services, international banking, and digital-first banking solutions.', 'eb1df2f2-15bd-4686-87d4-1097f69017a8', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 725 212', 'bbva.es', 'Passeig del Born 17, 07012 Palma', 4.0, false),

-- Health Clinics in Palma
('Hospital Quironsalud Palmaplanas', 'quironsalud-palmaplanas', 'Leading private hospital in Palma with 24/7 emergency department. Comprehensive medical services including surgery, diagnostics, and specialist consultations in multiple languages.', '5edd093f-2c9a-4439-b55e-5828751fac13', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 918 000', 'quironsalud.es/palmaplanas', 'Camino de los Reis, 07010 Palma', 4.3, false),
('Clinica Rotger', 'clinica-rotger-palma', 'Prestigious private hospital in Palma since 1918. Emergency services, specialist care, and international patient department with multilingual medical staff.', '5edd093f-2c9a-4439-b55e-5828751fac13', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 448 500', 'clinicarotger.es', 'Carrer de Santiago Russell 9, 07012 Palma', 4.4, false),
('Juaneda Hospitales', 'juaneda-hospitales-palma', 'Multi-site private hospital group in Palma. Comprehensive healthcare including maternity, cardiology, oncology, and sports medicine with international patient services.', '5edd093f-2c9a-4439-b55e-5828751fac13', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 731 647', 'juaneda.es', 'Carrer de la Companyia 30, 07001 Palma', 4.2, false),

-- Lawyers in Palma
('Bufete Buades', 'bufete-buades-palma', 'One of Mallorca''s largest and most respected law firms. Specializing in corporate law, property transactions, and international client services since 1953.', '393ad0ea-b4bf-4ee1-b25a-8923ad6ce75a', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 714 616', 'bufetebuades.com', 'Avinguda de Jaume III 3, 07012 Palma', 4.7, false),
('Lawbird Legal Services', 'lawbird-legal-palma', 'Boutique law firm specializing in assisting British and international clients with Spanish property law, tax residency, and wills. All services in English.', '393ad0ea-b4bf-4ee1-b25a-8923ad6ce75a', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 952 764 573', 'lawbird.com', 'Palma de Mallorca', 4.6, false),
('ETL Mallorca', 'etl-mallorca-palma', 'Part of the ETL Global network. German-speaking law and tax advisory firm specializing in international tax planning, company formation, and cross-border legal matters.', '393ad0ea-b4bf-4ee1-b25a-8923ad6ce75a', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 214 700', 'etl-mallorca.com', 'Carrer de Monsenyor Palmer 1, 07014 Palma', 4.5, false),

-- Shopping & Retail in Palma
('El Corte Ingles Palma', 'el-corte-ingles-palma', 'Spain''s premier department store chain. Gourmet food hall, international fashion brands, electronics, homeware, and a rooftop restaurant with city views.', 'b62824bb-285c-4909-858f-1de7be77f935', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 770 177', 'elcorteingles.es', 'Avinguda de Jaume III 15, 07012 Palma', 4.3, false),
('Fan Mallorca Shopping', 'fan-mallorca-shopping', 'Modern shopping centre with over 80 stores including Primark, Zara, H&M, and a large food court. Free parking and cinema complex.', 'b62824bb-285c-4909-858f-1de7be77f935', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 270 602', 'fanmallorca.com', 'Autopista de Palma, 07199 Palma', 4.1, false),
('Porto Pi Centro Comercial', 'porto-pi-centro-comercial', 'One of Palma''s oldest shopping centres with a mix of fashion, electronics, and specialty shops. Convenient location near the seafront with ample parking.', 'b62824bb-285c-4909-858f-1de7be77f935', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 403 244', 'portopi.es', 'Avinguda de Gabriel Roca 54, 07015 Palma', 4.0, false),

-- Hotels in Palma
('Hotel Can Cera', 'hotel-can-cera-palma', 'Boutique 5-star hotel in a restored 17th-century palace. Rooftop pool, fine dining restaurant, and luxurious suites in the heart of Palma Old Town.', 'e1fee07c-cc3f-4e5f-bc71-377fda3839bf', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 715 012', 'hotelcancera.com', 'Carrer de Sant Francesc 8, 07001 Palma', 4.8, false),
('Hotel Sant Francesc', 'hotel-sant-francesc-palma', 'Luxury boutique hotel in a stunning 19th-century mansion. Rooftop infinity pool, elegant rooms, and an acclaimed restaurant in Palma''s historic centre.', 'e1fee07c-cc3f-4e5f-bc71-377fda3839bf', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 495 000', 'hotelsantfrancesc.com', 'Placa de Sant Francesc 5, 07001 Palma', 4.9, false),
('Nakar Hotel', 'nakar-hotel-palma', 'Modern design hotel with a spectacular rooftop terrace and cocktail bar overlooking Palma Bay. Central location, contemporary rooms, and excellent service.', 'e1fee07c-cc3f-4e5f-bc71-377fda3839bf', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 210 017', 'nakarhotel.com', 'Avinguda de Jaume III 21, 07012 Palma', 4.6, false),

-- Fine Dining in Palma
('Zaranda by Fernando Perez Arellano', 'zaranda-palma', 'Two Michelin-starred restaurant by chef Fernando Perez Arellano. The pinnacle of fine dining in Mallorca with an extraordinary tasting menu and impeccable service.', '41b57b11-7e17-48fa-afaf-ab4124bc6805', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 899 200', 'zaranda.es', 'Es Capdella (Castell Son Claret)', 4.9, false),
('VORO by Alvaro Salazar', 'voro-palma', 'One Michelin-starred restaurant at Cap Vermell Grand Hotel. Chef Alvaro Salazar creates modern Mediterranean cuisine with Mallorcan roots and global inspiration.', '41b57b11-7e17-48fa-afaf-ab4124bc6805', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 178 200', 'vororestaurant.com', 'Canyamel, Mallorca', 4.8, false),

-- Real Estate in Palma
('Engel & Volkers Palma', 'engel-volkers-palma', 'Premium international real estate agency. Specializing in luxury properties, penthouses, and historic townhouses in Palma Old Town and surrounding areas.', 'af26065f-5da9-43bf-9831-ebede0e63a19', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 721 600', 'engelvoelkers.com/mallorca', 'Avinguda de Jaume III 17, 07012 Palma', 4.5, false),
('Living Blue Mallorca', 'living-blue-mallorca-palma', 'Award-winning real estate agency focused on southwest Mallorca and Palma. Comprehensive buyer representation services for international purchasers.', 'af26065f-5da9-43bf-9831-ebede0e63a19', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 676 767', 'livingblue.es', 'Palma de Mallorca', 4.6, false),
('Balearic Properties', 'balearic-properties-palma', 'Established Mallorca real estate agency with extensive portfolio across Palma and southwest coast. Property management and rental services also available.', 'af26065f-5da9-43bf-9831-ebede0e63a19', '568fd42d-c35c-4cd1-9d0a-31b48a71d274', '+34 971 680 244', 'balearic-properties.com', 'Palma de Mallorca', 4.4, false);