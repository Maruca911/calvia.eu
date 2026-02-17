/*
  # Add FAQs for Remaining Categories - Batch 1

  1. New Data
    - FAQ entries for 13 categories: cafes, water sports, supermarkets, taxi, wellness, fitness, golf,
      fine dining, real estate, property management, home services, shopping, health clinics
  2. Notes
    - 4-5 FAQs per category covering common questions
    - Supports FAQPage schema markup for SEO
*/

INSERT INTO faqs (page_type, page_slug, question, answer, display_order) VALUES
-- Cafes & Coffee Shops
('category', 'cafes-coffee-shops', 'Where are the best cafes in Calvia?', 'The best cafes in Calvia are spread across the municipality. Portals Nous has upscale options like Cappuccino, Palmanova has specialty coffee shops like The Coffee Lab, and Santa Ponsa offers a mix of brunch cafes and traditional coffee bars.', 1),
('category', 'cafes-coffee-shops', 'Do cafes in Calvia serve food?', 'Most cafes in Calvia serve food alongside coffee. Brunch menus, pastries, sandwiches, and light meals are common. Many cafes double as all-day dining spots, particularly during the tourist season from April to October.', 2),
('category', 'cafes-coffee-shops', 'What time do cafes open in Calvia?', 'Most cafes in Calvia open between 7:30am and 9am. Some traditional Spanish cafes may close for a siesta between 2-5pm. Specialty coffee shops and tourist-area cafes typically stay open throughout the day until 6-8pm.', 3),
('category', 'cafes-coffee-shops', 'Is there specialty coffee in Calvia?', 'Yes, the specialty coffee scene in Calvia has grown significantly. Several cafes now serve single-origin beans, pour-over coffee, and expertly prepared espresso drinks. The quality rivals what you would find in major European cities.', 4),

-- Water Sports & Diving
('category', 'water-sports-diving', 'What water sports are available in Calvia?', 'Calvia offers a wide range of water sports including scuba diving, snorkelling, paddleboarding, kayaking, jet skiing, parasailing, sailing, windsurfing, and boat rental. Most activities operate from May through October when sea conditions are optimal.', 1),
('category', 'water-sports-diving', 'Where are the best diving spots in Calvia?', 'The El Toro Marine Reserve offers the best diving in the area with protected waters home to grouper, barracuda, and colourful reef fish. Portals Vells has interesting underwater caves, and the Ses Illetes reef is excellent for snorkelling.', 2),
('category', 'water-sports-diving', 'Do I need certification to dive in Calvia?', 'No certification is needed for introductory discovery dives, which most dive centres offer. For deeper independent diving you will need at least a PADI Open Water certification. Several centres in Santa Ponsa and Magaluf offer certification courses.', 3),
('category', 'water-sports-diving', 'Can I rent a boat without a licence in Calvia?', 'In Spain, boats under 15 horsepower can be rented without a licence. For more powerful boats, you need a navigation licence or must hire a skipper. Several charter companies at Port Adriano and Puerto Portals offer both options.', 4),

-- Supermarkets & Grocery
('category', 'supermarkets-grocery', 'What supermarkets are in Calvia?', 'Calvia has all major Spanish supermarket chains including Mercadona, Eroski, Lidl, and Aldi. You will also find smaller local shops and international food stores catering to the large British and German expat communities.', 1),
('category', 'supermarkets-grocery', 'Where is the nearest Mercadona in Calvia?', 'There are Mercadona stores in Palmanova, Santa Ponsa, and Peguera. Mercadona is the most popular supermarket chain in Spain, known for good quality own-brand products and competitive prices.', 2),
('category', 'supermarkets-grocery', 'Do Calvia supermarkets stock international products?', 'Yes, many supermarkets in Calvia stock British, German, and Scandinavian products alongside Spanish goods. Eroski and Mercadona have broad international ranges. There are also specialist shops selling specific national products.', 3),
('category', 'supermarkets-grocery', 'What are supermarket opening hours in Calvia?', 'Most supermarkets in Calvia open from 9am to 9pm Monday to Saturday. Some larger stores like Eroski may open until 9:30pm. Sunday opening varies — some stores open limited hours while others remain closed. Hours may extend during summer.', 4),

-- Taxi & Transport
('category', 'taxi-transport', 'How do I get a taxi in Calvia?', 'Taxis in Calvia can be hailed on the street, found at designated taxi ranks (particularly at beaches and major hotels), or booked by phone. Many restaurants will call a taxi for you. Ride-hailing apps have limited availability compared to mainland Spain.', 1),
('category', 'taxi-transport', 'How much does a taxi cost from Palma airport to Calvia?', 'A taxi from Palma airport to the main Calvia areas typically costs between 35-55 euros depending on the specific destination. Fares are metered, and there may be supplements for luggage, night service, and Sundays.', 2),
('category', 'taxi-transport', 'Is there public transport in Calvia?', 'Yes, the TIB bus service connects Calvia towns to each other and to Palma. Route 104 runs through Palmanova and Magaluf, while other routes serve Santa Ponsa, Peguera, and inland towns. Service frequency is reduced outside summer.', 3),
('category', 'taxi-transport', 'Can I rent a car in Calvia?', 'Several car rental agencies operate in Calvia, particularly around the major resort areas. Renting at Palma airport typically offers the widest selection and most competitive prices. A car is recommended for exploring the full municipality.', 4),

-- Wellness & Spas
('category', 'wellness-spas', 'What wellness services are available in Calvia?', 'Calvia offers a full range of wellness services including luxury hotel spas, day spas, yoga studios, massage therapy, beauty treatments, and holistic wellness centres. Many high-end hotels open their spa facilities to non-guests.', 1),
('category', 'wellness-spas', 'Where are the best spas in Calvia?', 'The best spas in Calvia are found in the luxury hotels of Portals Nous and Bendinat. Gran Melia de Mar, Kimpton Aysla, and several boutique hotels offer world-class spa treatments. There are also independent day spas in Santa Ponsa and Palmanova.', 2),
('category', 'wellness-spas', 'Do I need to book spa treatments in advance?', 'Booking in advance is recommended, particularly during the summer season and on weekends. Most spas accept bookings by phone or through their websites. Last-minute availability can sometimes be found midweek outside peak season.', 3),
('category', 'wellness-spas', 'Are there yoga retreats in Calvia?', 'Several yoga studios and wellness centres in Calvia offer regular classes, workshops, and retreat experiences. The combination of beautiful natural surroundings, good climate, and wellness-focused community makes it a popular yoga destination.', 4),

-- Fitness Centers
('category', 'fitness-centers', 'What gyms are in Calvia?', 'Calvia has several gyms ranging from budget-friendly fitness chains to premium boutique studios. Major areas like Santa Ponsa, Palmanova, and Magaluf all have gym facilities. Many hotels also have fitness centres accessible to non-guests.', 1),
('category', 'fitness-centers', 'Can I get a short-term gym membership in Calvia?', 'Most gyms in Calvia offer flexible membership options including weekly, monthly, and pay-per-visit passes. This makes them accessible to both residents and visitors staying for extended periods.', 2),
('category', 'fitness-centers', 'Are there outdoor fitness options in Calvia?', 'Calvia offers excellent outdoor fitness opportunities including beach running, cycling (with dedicated paths), outdoor fitness equipment along the Palmanova promenade, hiking in the Galatzo area, and open-air yoga classes during summer.', 3),
('category', 'fitness-centers', 'Is padel popular in Calvia?', 'Padel tennis is extremely popular in Calvia and across Mallorca. Several clubs and facilities offer padel courts for rent, group classes, and competitive leagues. It has become one of the most popular social sports in the area.', 4),

-- Golf Courses
('category', 'golf-courses', 'How many golf courses are in the Calvia area?', 'The Calvia municipality and immediate surroundings have several championship golf courses including Golf Santa Ponsa, Real Golf de Bendinat, and others within a short drive. Southwest Mallorca is one of the best golfing regions in the Mediterranean.', 1),
('category', 'golf-courses', 'What is the best time of year for golf in Calvia?', 'Calvia offers year-round golfing thanks to its mild Mediterranean climate. Spring (March-May) and autumn (September-November) are considered ideal with pleasant temperatures and lower green fees. Summer can be hot for midday rounds.', 2),
('category', 'golf-courses', 'Do I need to book tee times in advance?', 'Advance booking is recommended, especially during peak season (October-May when the weather is ideal and golf tourism peaks) and on weekends. Most courses accept online bookings and offer early bird or twilight rates.', 3),
('category', 'golf-courses', 'Can I rent golf equipment in Calvia?', 'All golf courses in the Calvia area offer club hire and trolley rental. Pro shops stock a range of equipment and accessories. Some courses also offer golf lessons for all skill levels with PGA-qualified professionals.', 4),

-- Fine Dining
('category', 'fine-dining', 'Where are the best fine dining restaurants in Calvia?', 'Calvia is home to several notable fine dining establishments, particularly in the Portals Nous, Bendinat, and Puerto Portals areas. These restaurants offer Mediterranean cuisine with creative flair, often using locally sourced Mallorcan ingredients.', 1),
('category', 'fine-dining', 'Do I need reservations for fine dining in Calvia?', 'Reservations are strongly recommended for all fine dining restaurants in Calvia, especially during summer and on weekends. Some popular establishments may require booking several days or even weeks in advance during peak season.', 2),
('category', 'fine-dining', 'What is the dress code for fine dining in Calvia?', 'Most fine dining restaurants in Calvia maintain a smart casual dress code. While Mallorca is generally relaxed, shorts and flip-flops are typically not welcome at upscale venues. Smart casual clothing is appropriate for most fine dining experiences.', 3),
('category', 'fine-dining', 'How expensive is fine dining in Calvia?', 'Expect to spend between 80-200 euros per person at top restaurants in Calvia, depending on the venue and wine selection. Tasting menus typically range from 70-150 euros. Lunchtime tasting menus often offer better value than evening service.', 4),

-- Real Estate
('category', 'real-estate', 'What are property prices like in Calvia?', 'Property prices in Calvia vary significantly by area. Premium locations like Portals Nous and Bendinat command the highest prices, while inland areas like Son Ferrer and Es Capdella offer more affordable options. The market is competitive with strong international demand.', 1),
('category', 'real-estate', 'Can foreigners buy property in Calvia?', 'Yes, there are no restrictions on foreigners purchasing property in Calvia or anywhere in Spain. EU citizens and non-EU citizens alike can buy. You will need a NIE (foreigner identification number) and should engage a local lawyer familiar with Spanish property law.', 2),
('category', 'real-estate', 'What taxes apply when buying property in Calvia?', 'Property purchase taxes in the Balearic Islands include transfer tax (ITP) of 8-13% for resale properties or VAT of 10% plus stamp duty for new builds. Legal fees, notary costs, and registration fees add approximately 2-3% to the purchase price.', 3),
('category', 'real-estate', 'Is rental property a good investment in Calvia?', 'Calvia is one of the strongest rental markets in Mallorca due to tourist demand and the large expat community. Holiday rental regulations are strict — a tourism licence is required for short-term lets. Long-term rentals are in high demand.', 4),

-- Property Management
('category', 'property-management', 'What do property management companies in Calvia do?', 'Property management companies in Calvia handle maintenance, tenant management, key holding, cleaning, pool maintenance, garden care, and administrative tasks for property owners. Many specialise in managing holiday rental properties for absent owners.', 1),
('category', 'property-management', 'Do I need a property manager in Calvia?', 'If you own property in Calvia but do not live there full-time, a property manager is highly recommended. They handle emergencies, maintenance, utility issues, and can manage holiday rentals. This is particularly important for properties with pools and gardens.', 2),
('category', 'property-management', 'How much does property management cost in Calvia?', 'Property management fees in Calvia typically range from 10-25% of rental income for managed holiday lets, or a fixed monthly fee of 100-400 euros for maintenance-only services. Costs depend on the property size and services required.', 3),
('category', 'property-management', 'Can property managers arrange holiday rental licences?', 'Many property management companies in Calvia can assist with the tourism licence application process. The regulations in the Balearic Islands are complex and frequently updated, so professional help is valuable for ensuring compliance.', 4),

-- Home Services
('category', 'home-services', 'What home services are available in Calvia?', 'Calvia has a comprehensive range of home services including plumbers, electricians, builders, painters, pool maintenance, garden care, pest control, air conditioning servicing, and general handyman services. Many providers serve the international community in multiple languages.', 1),
('category', 'home-services', 'How do I find a reliable tradesperson in Calvia?', 'Word of mouth remains the most reliable way to find good tradespeople in Calvia. Local expat groups on social media are excellent resources. Calvia.app lists vetted home service providers to help you find trusted professionals in the area.', 2),
('category', 'home-services', 'Do home service providers in Calvia speak English?', 'Many home service providers in Calvia speak English or German due to the large international community. When booking, it is worth confirming language capabilities upfront. Some providers bring bilingual assistants to appointments.', 3),
('category', 'home-services', 'What does pool maintenance cost in Calvia?', 'Regular pool maintenance in Calvia typically costs between 80-200 euros per month depending on pool size and service frequency. This usually includes water testing, chemical balancing, filter cleaning, and basic equipment checks.', 4),

-- Shopping & Retail
('category', 'shopping-retail', 'Where are the best shopping areas in Calvia?', 'Puerto Portals offers designer boutiques and luxury shopping. Santa Ponsa has the widest range of everyday shops. Port Adriano features upscale retail. For larger shopping centres, FAN Mallorca Shopping and Porto Pi in Palma are within easy reach.', 1),
('category', 'shopping-retail', 'Are there markets in Calvia?', 'Yes, weekly markets rotate through Calvia areas. The Santa Ponsa market is one of the largest, selling fresh produce, clothes, crafts, and souvenirs. Calvia Vila and other towns also host regular markets. Check local schedules for specific days and locations.', 2),
('category', 'shopping-retail', 'What are shopping hours in Calvia?', 'Most shops in Calvia open from 10am to 1:30pm and 5pm to 8pm. Larger stores and those in tourist areas may stay open throughout the day. Sunday opening is limited, though some shops in resort areas open during the summer tourist season.', 3),
('category', 'shopping-retail', 'Is there late-night shopping in Calvia?', 'Late-night shopping is not common in Calvia, though some shops in tourist areas may stay open until 10pm during summer. For extended shopping hours, the shopping centres in Palma offer later closing times, particularly on Fridays and Saturdays.', 4),

-- Health Clinics
('category', 'health-clinics', 'What healthcare is available in Calvia?', 'Calvia has public health centres (centros de salud) in major towns, private clinics, dental practices, and specialist medical centres. The main public hospital for the area is Son Espases in Palma, about 20 minutes away.', 1),
('category', 'health-clinics', 'Do doctors in Calvia speak English?', 'Many private doctors and clinics in Calvia have English-speaking staff due to the large international community. Some public health centres also have multilingual staff. Private clinics generally offer more language options than public facilities.', 2),
('category', 'health-clinics', 'Do I need health insurance in Calvia?', 'EU citizens can access public healthcare with a European Health Insurance Card (EHIC) for temporary stays. Residents should register with the Spanish social security system or arrange private health insurance. Private insurance is recommended for faster access and English-speaking providers.', 3),
('category', 'health-clinics', 'Is there an emergency hospital near Calvia?', 'The nearest major hospital is Hospital Universitari Son Espases in Palma, approximately 15-20 minutes from most Calvia areas. For emergencies, call 112. Local health centres handle non-emergency urgent care during opening hours.', 4);
