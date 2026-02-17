/*
  # Seed FAQs for new category guides

  Adds 4 FAQs per guide for the 10 newly created category guides:
  - Fine Dining, Wellness/Spa, Fitness/Gym, Shopping, Home Services,
    Event Planning, Dental Care, Legal Services, Supermarkets, Coworking
*/

INSERT INTO faqs (page_type, page_slug, question, answer, display_order)
VALUES
('guide', 'fine-dining-calvia-guide', 'What is the average price for fine dining in Calvia?', 'Tasting menus at Calvia''s top restaurants typically range from EUR 60-150 per person, excluding wine. Lunch tasting menus often offer shorter versions at 40-60% of the dinner price.', 1),
('guide', 'fine-dining-calvia-guide', 'Do I need to book in advance for restaurants in Calvia?', 'During summer (June-September), booking 5-7 days ahead is recommended for popular restaurants. In winter, 1-2 days notice is usually sufficient, though some restaurants close seasonally.', 2),
('guide', 'fine-dining-calvia-guide', 'Are there Michelin-starred restaurants in Calvia?', 'While Michelin stars in Calvia fluctuate year to year, several restaurants consistently feature in major dining guides. Palma, just 20 minutes away, has multiple Michelin-starred options.', 3),
('guide', 'fine-dining-calvia-guide', 'Is there a dress code for fine dining in Calvia?', 'Most upscale restaurants follow a smart-casual dress code. Beachwear and flip-flops are not appropriate. Some establishments at Puerto Portals may expect slightly more formal attire.', 4),

('guide', 'wellness-spa-guide-calvia', 'What types of spa treatments are available in Calvia?', 'Calvia spas offer massages, facials, body wraps, thalassotherapy, hydrotherapy circuits, and holistic therapies. Many use local products like Mallorcan almond oil and sea salt.', 1),
('guide', 'wellness-spa-guide-calvia', 'Can non-hotel guests use hotel spas in Calvia?', 'Yes, most hotel spas offer day passes or individual treatment bookings for non-guests. Day access typically costs EUR 30-60 including pool and thermal area use.', 2),
('guide', 'wellness-spa-guide-calvia', 'How much does a massage cost in Calvia?', 'A 60-minute massage costs EUR 60-90 at independent centres and EUR 80-130 at hotel spas. Specialised treatments like sports or deep tissue massage are at the higher end.', 3),
('guide', 'wellness-spa-guide-calvia', 'Are there outdoor wellness activities in Calvia?', 'Popular outdoor wellness activities include beach yoga, sea swimming, forest bathing in Galatzo nature reserve, coastal meditation walks, and paddleboard yoga.', 4),

('guide', 'fitness-gym-guide-calvia', 'How much does a gym membership cost in Calvia?', 'Monthly memberships range from EUR 30-50 for basic gyms to EUR 80-120 for premium health clubs with pools, classes, and spa facilities. Flexible contracts are available for part-time residents.', 1),
('guide', 'fitness-gym-guide-calvia', 'Are there outdoor fitness areas in Calvia?', 'Yes, several parks and beach areas have free outdoor fitness stations. Popular locations include Palmanova promenade and Santa Ponca beach.', 2),
('guide', 'fitness-gym-guide-calvia', 'Can I find English-speaking personal trainers?', 'Yes, many international personal trainers in Calvia speak English, German, Swedish, and other languages. Rates are EUR 40-80 per session for private training.', 3),
('guide', 'fitness-gym-guide-calvia', 'Do gyms offer short-term passes?', 'Most gyms offer day passes (EUR 10-20) and weekly passes (EUR 25-50). Some offer monthly contracts without long-term commitment, ideal for seasonal residents.', 4),

('guide', 'shopping-guide-calvia', 'What are the best shopping areas in Calvia?', 'Puerto Portals and Port Adriano for luxury brands, El Toro and Son Ferrer for practical shopping, and weekly markets in Calvia Vila (Monday) and Santa Ponca (Wednesday) for local goods.', 1),
('guide', 'shopping-guide-calvia', 'What are typical shopping hours in Calvia?', 'Large supermarkets and chains open 9am-9pm Monday to Saturday. Smaller shops may close for siesta (2-5pm). Most shops are closed on Sundays.', 2),
('guide', 'shopping-guide-calvia', 'Where can I find international food products?', 'Eroski and larger supermarkets stock international products. Specialty shops in Santa Ponca and Palmanova carry British, German, and Scandinavian products.', 3),
('guide', 'shopping-guide-calvia', 'Are there outlet stores in Calvia?', 'Calvia does not have major outlet centres, but Festival Park near Marratxi (20 minutes away) offers outlet shopping. End-of-season sales in July and January offer significant discounts.', 4),

('guide', 'home-services-guide-calvia', 'How do I find a reliable plumber or electrician?', 'Word of mouth from neighbours and community groups is the best method. Calvia.app lists verified providers. Always request a written quote (presupuesto) before work begins.', 1),
('guide', 'home-services-guide-calvia', 'How much do cleaning services cost in Calvia?', 'Regular domestic cleaning costs EUR 12-18 per hour. Deep cleaning ranges from EUR 100-200 depending on property size. Most cleaners require a minimum 3-hour booking.', 2),
('guide', 'home-services-guide-calvia', 'Can I find English-speaking tradespeople?', 'Yes, the large international community means many tradespeople speak English and other languages. Calvia.app helps you find English-speaking providers.', 3),
('guide', 'home-services-guide-calvia', 'How often should I service my pool?', 'Pools should be serviced weekly during summer and every 2 weeks in winter. Annual maintenance contracts typically cost EUR 100-200 per month.', 4),

('guide', 'event-planning-guide-calvia', 'What is the best time of year for outdoor events?', 'May-June and September-October offer warm weather, lower humidity, and better venue availability than peak summer. July-August are hot but popular for beach events.', 1),
('guide', 'event-planning-guide-calvia', 'How much does a wedding in Calvia cost?', 'A mid-range destination wedding for 80-100 guests typically costs EUR 20,000-40,000. Luxury finca weddings with premium catering can exceed EUR 60,000.', 2),
('guide', 'event-planning-guide-calvia', 'Are there beachfront wedding venues?', 'Yes, several locations offer beachfront options around Palmanova, Portals Vells, and Port Adriano. Beach ceremonies require permits from the Calvia town hall.', 3),
('guide', 'event-planning-guide-calvia', 'Do I need a wedding planner for a Calvia wedding?', 'Highly recommended for destination weddings. They handle coordination, vendors, paperwork, and day-of logistics, typically charging 10-15% of total budget.', 4),

('guide', 'dental-care-guide-calvia', 'Are dental prices cheaper than in the UK or Germany?', 'Yes, dental treatment is typically 30-50% less expensive with comparable quality. A dental implant costs EUR 800-1,500 compared to EUR 2,000-3,500 in northern Europe.', 1),
('guide', 'dental-care-guide-calvia', 'Do dentists in Calvia speak English?', 'Most dental clinics have English-speaking staff. Many dentists trained in the UK, Germany, or Scandinavia. Confirm language capabilities when booking.', 2),
('guide', 'dental-care-guide-calvia', 'Is dental insurance accepted?', 'Most clinics accept Spanish insurance like Sanitas, Adeslas, and Asisa. For international insurance, pay upfront and claim reimbursement. Many offer payment plans.', 3),
('guide', 'dental-care-guide-calvia', 'How do I find an emergency dentist?', 'Several clinics in Palmanova and Santa Ponca offer emergency services. For out-of-hours emergencies, Hospital de Son Espases in Palma has a dental emergency department.', 4),

('guide', 'legal-services-guide-calvia', 'Do I need a lawyer to buy property?', 'While not legally required, hiring an independent lawyer for property purchases is strongly recommended. They verify legal status, review contracts, and represent you at notary. Budget EUR 1,500-3,000.', 1),
('guide', 'legal-services-guide-calvia', 'How much do lawyers charge in Calvia?', 'Initial consultations are EUR 50-100 or free if you proceed. Hourly rates range EUR 100-250. Property conveyancing is usually EUR 1,500-3,000.', 2),
('guide', 'legal-services-guide-calvia', 'Can I find English-speaking lawyers?', 'Yes, many lawyers specialize in serving the international community and speak English, German, Swedish, and other languages.', 3),
('guide', 'legal-services-guide-calvia', 'What is a gestor?', 'A licensed administrative agent who handles bureaucratic procedures -- tax filings, vehicle registration, residency applications, and business paperwork. Widely used in Spain.', 4),

('guide', 'supermarket-grocery-guide-calvia', 'What are the main supermarket chains?', 'Mercadona, Eroski, Lidl, and Aldi. Mercadona has the best own-brand range, Eroski carries more international products, and Lidl/Aldi are best for budget shopping.', 1),
('guide', 'supermarket-grocery-guide-calvia', 'Are supermarkets open on Sundays?', 'Most are closed on Sundays. Some smaller tourist-area shops may open in summer. Plan your weekly shop for Saturday at the latest.', 2),
('guide', 'supermarket-grocery-guide-calvia', 'Where can I find British or German products?', 'Eroski stocks international products. Specialty shops in Santa Ponca and Palmanova carry British, German, and Scandinavian items.', 3),
('guide', 'supermarket-grocery-guide-calvia', 'When are the weekly food markets?', 'Calvia Vila on Mondays, Peguera on Tuesdays, Santa Ponca on Wednesdays. These feature fresh local produce, cheeses, and baked goods.', 4),

('guide', 'coworking-remote-work-guide-calvia', 'How much does coworking cost?', 'Day passes cost EUR 15-25. Monthly memberships range from EUR 150-350 for hot desk, dedicated desk, or private office packages.', 1),
('guide', 'coworking-remote-work-guide-calvia', 'Is internet speed reliable for remote work?', 'Yes, fibre optic with 100 Mbps to 1 Gbps is widely available. Mobile 4G/5G provides reliable backup connectivity throughout the region.', 2),
('guide', 'coworking-remote-work-guide-calvia', 'Do I need a special visa to work remotely?', 'EU citizens can work freely. Non-EU nationals staying over 90 days should apply for Spain''s digital nomad visa, valid for up to 5 years.', 3),
('guide', 'coworking-remote-work-guide-calvia', 'Are there networking events for remote workers?', 'Yes, business networking groups meet regularly and coworking spaces host community events, workshops, and social gatherings.', 4)
ON CONFLICT DO NOTHING;