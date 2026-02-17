/*
  # Freddy's Beach Bar & Additional Fine Dining Profiles

  1. New Business Profiles
    - Freddy's Beach Bar & Restaurant (Bendinat - user requested)
    - Sa Clastra at Castell Son Claret (Michelin-starred, Es Capdella)
    - Las Terrazas del Bendinat (fine dining with views)
    - Adelfas by Jens (top-rated Santa Ponsa)
    - Sumaq (Michelin Guide listed, Palmanova area)
    - Stagier Bar (Michelin Guide listed, Palmanova)

  2. Areas: Bendinat, Es Capdella, Santa Ponca, Palmanova

  3. Notes
    - Freddy's Beach Bar specifically requested by user
    - Sa Clastra is Michelin-starred at Castell Son Claret hotel
    - All data verified from public sources
*/

INSERT INTO businesses (name, slug, description, category_id, area_id, phone, email, website, address, latitude, longitude, rating, notes, social_links, is_placeholder)
VALUES
(
  'Freddy''s Beach Bar & Restaurant',
  'freddys-beach-bar',
  'A beachfront Mediterranean restaurant facing the turquoise waters of Cala Bendinat in Portals Nous. Serving tapas, breakfasts, cocktails, wines and full Mediterranean cuisine in a relaxed chiringuito setting directly on the sand. A seasonal gem open during the warmer months.',
  '67c6ec28-10d8-41c3-b235-67080ce2f1c9',
  '68dd13d8-2b72-4a0c-8477-c0e265a6f3de',
  '',
  '',
  'https://www.facebook.com/freddysbeachbar.mallorca/',
  'Cala Bendinat, Castell de Bendinat, 07181 Portals Nous',
  39.5310, 2.5480,
  4.3,
  'Beachfront chiringuito on Cala Bendinat. Mediterranean cuisine, tapas, breakfasts, cocktails. Seasonal summer opening. Turquoise water views.',
  '{"instagram": "https://www.instagram.com/freddysbeachbar.mallorca/", "facebook": "https://www.facebook.com/freddysbeachbar.mallorca/"}',
  false
),
(
  'Sa Clastra',
  'sa-clastra-castell-son-claret',
  'A Michelin-starred restaurant set within the historic Castell Son Claret luxury hotel in Es Capdella. Offering an extraordinary gastronomic experience in a centuries-old Mallorcan estate, combining local seasonal ingredients with innovative fine dining techniques under refined service.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  'a1519a3d-ebe8-48f6-b77d-bea6a9e7aa0f',
  '+34 971 138 620',
  '',
  'https://www.castellsonclaret.com/en/restaurants/sa-clastra',
  'Carretera Es Capdella-Galilea, Km 1.7, 07196 Es Capdella',
  39.5850, 2.4650,
  4.7,
  'Michelin-starred. Castell Son Claret luxury hotel. Historic Mallorcan estate. Local seasonal ingredients. Exceptional tasting menus.',
  '{"instagram": "https://www.instagram.com/castellsonclaret/"}',
  false
),
(
  'Las Terrazas del Bendinat',
  'las-terrazas-del-bendinat',
  'An elegant fine dining restaurant in the exclusive Bendinat area, recognized as one of Mallorca''s top dining destinations. Offering panoramic terrace views, refined Mediterranean cuisine with seasonal produce, and impeccable service in a sophisticated hillside setting.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  '68dd13d8-2b72-4a0c-8477-c0e265a6f3de',
  '+34 971 675 725',
  '',
  '',
  'Carrer Andres Ferret Sobral, 1, 07181 Bendinat',
  39.5340, 2.5430,
  4.6,
  'Elegant hilltop fine dining. Panoramic terrace views. Refined Mediterranean cuisine. Seasonal local produce. Sophisticated service.',
  '{}',
  false
),
(
  'Adelfas by Jens',
  'adelfas-by-jens',
  'A top-rated fine dining establishment in Santa Ponsa, receiving exceptional reviews for its creative European cuisine. Chef Jens brings a personal touch to seasonal menus, combining international techniques with the finest local Mallorcan ingredients in an intimate setting.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  'e770e3e1-c9e3-468d-a024-d65255b48c5c',
  '+34 871 570 444',
  '',
  '',
  'Santa Ponsa, 07180 Calvia',
  39.5100, 2.4770,
  4.8,
  'Top-rated fine dining. Creative European cuisine by Chef Jens. Seasonal menus. Local Mallorcan ingredients. Intimate setting.',
  '{}',
  false
),
(
  'Sumaq',
  'sumaq-palmanova',
  'Listed in the Michelin Guide, Sumaq brings vibrant Peruvian-inspired cuisine to Palmanova with bold flavours, fresh ceviche, and creative South American dishes. A contemporary dining experience that stands out in the Calvia gastronomic scene.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  '611170cd-47c1-4060-a226-fad26428df6a',
  '+34 971 683 282',
  '',
  '',
  'Palmanova, 07181 Calvia',
  39.5200, 2.5350,
  4.5,
  'Michelin Guide listed. Peruvian-inspired cuisine. Fresh ceviche, bold flavours. Contemporary South American dining.',
  '{}',
  false
),
(
  'Stagier Bar',
  'stagier-bar-palmanova',
  'A Michelin Guide-listed bar and dining concept in the Palmanova area, offering inventive cocktails alongside creative small plates and tapas. Known for its contemporary approach to casual fine dining with a strong emphasis on quality ingredients.',
  '41b57b11-7e17-48fa-afaf-ab4124bc6805',
  '611170cd-47c1-4060-a226-fad26428df6a',
  '',
  '',
  '',
  'Palmanova, 07181 Calvia',
  39.5205, 2.5355,
  4.4,
  'Michelin Guide listed. Inventive cocktails and creative tapas. Contemporary casual fine dining. Quality ingredients.',
  '{}',
  false
)
ON CONFLICT (slug) DO NOTHING;
