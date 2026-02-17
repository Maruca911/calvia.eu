/*
  # Add FAQs for Remaining Areas - Batch 2

  1. New Data
    - FAQ entries for 7 areas: Cala Fornells, Es Capdella, Galatzo, Port Adriano, Portals Vells, Sa Porrasa, Sol de Mallorca
  2. Notes
    - 5 FAQs per area covering common visitor/resident questions
    - Completes FAQ coverage for all 23 areas in the database
*/

INSERT INTO faqs (page_type, page_slug, question, answer, display_order) VALUES
-- Cala Fornells
('area', 'cala-fornells', 'What is Cala Fornells?', 'Cala Fornells is a picturesque small resort area near Peguera on the southwest coast of Mallorca. Known for its terraced architecture built into the hillside and a series of small rocky coves with crystal-clear water, it has a distinctly tranquil Mediterranean character.', 1),
('area', 'cala-fornells', 'Is Cala Fornells a sandy beach?', 'Cala Fornells has small pebbly and rocky coves rather than large sandy beaches. The water is exceptionally clear and good for snorkelling. For sandy beaches, the main Peguera beaches are just a short walk or drive away.', 2),
('area', 'cala-fornells', 'What nationality are most visitors to Cala Fornells?', 'Cala Fornells is particularly popular with German visitors and residents, as is much of the Peguera area. Many restaurants and businesses operate in German, English, and Spanish.', 3),
('area', 'cala-fornells', 'Are there restaurants at Cala Fornells?', 'There are several well-regarded restaurants at Cala Fornells, many offering terrace dining with beautiful sea views. The area is known for a more refined dining experience compared to larger resort areas. Peguera offers additional dining variety within walking distance.', 4),
('area', 'cala-fornells', 'How do I get to Cala Fornells?', 'Cala Fornells is located just west of Peguera, about 30 minutes by car from Palma airport. Follow the MA-1 motorway towards Andratx and exit at Peguera. The area has limited parking during peak summer months.', 5),

-- Es Capdella
('area', 'es-capdella', 'What is Es Capdella?', 'Es Capdella is a traditional Mallorcan village nestled in the foothills of the Tramuntana mountains, within the Calvia municipality. It is one of the most authentically rural areas in Calvia, surrounded by almond groves, olive trees, and hiking trails.', 1),
('area', 'es-capdella', 'Is Es Capdella near the beach?', 'Es Capdella is an inland village about 10-15 minutes by car from the nearest beaches at Santa Ponsa and Peguera. It attracts residents who prefer mountain tranquillity over coastal living while maintaining easy access to the sea.', 2),
('area', 'es-capdella', 'What can I do in Es Capdella?', 'Es Capdella is a base for hiking, cycling, and enjoying rural Mallorca. The nearby Galatzo nature reserve offers trails and outdoor activities. The village itself has traditional restaurants, a church, and a peaceful atmosphere for exploring on foot.', 3),
('area', 'es-capdella', 'Are there restaurants in Es Capdella?', 'Es Capdella has several traditional Mallorcan restaurants serving local cuisine at reasonable prices. The village restaurants offer an authentic alternative to coastal tourist dining. Try the lamb dishes and local wines.', 4),
('area', 'es-capdella', 'Is Es Capdella a good place to buy property?', 'Es Capdella offers more affordable property than coastal Calvia areas, with traditional fincas, village houses, and newer developments available. It appeals to buyers seeking rural character within easy reach of beaches and Palma.', 5),

-- Galatzo
('area', 'galatzo', 'What is the Galatzo area?', 'Galatzo refers to the mountainous area around the Puig de Galatzo peak in the northwest of the Calvia municipality. It includes the Galatzo nature reserve, one of the most popular outdoor recreation areas in southwest Mallorca.', 1),
('area', 'galatzo', 'What can I do at Galatzo nature reserve?', 'The Galatzo nature reserve offers hiking trails through mountain forests, natural pools and waterfalls for swimming, rope bridges, and zip lines. It is suitable for families and nature lovers. Activities vary by season so check availability before visiting.', 2),
('area', 'galatzo', 'Is Galatzo suitable for children?', 'Galatzo nature reserve is an excellent family day out. The trails are manageable for school-age children, and the natural pools and adventure activities appeal to all ages. Bring water shoes for the rocky pool areas.', 3),
('area', 'galatzo', 'How do I get to Galatzo?', 'Galatzo is accessed via Es Capdella. From Calvia Vila or Santa Ponsa, follow signs to Es Capdella and then to the nature reserve. The road is narrow and winding in places. A car is essential as there is no public transport.', 4),
('area', 'galatzo', 'Is there an entrance fee for Galatzo?', 'The Galatzo nature reserve charges an entrance fee which varies by season and included activities. Check the official Calvia municipality website for current prices and opening hours. The reserve may close during periods of fire risk in summer.', 5),

-- Port Adriano
('area', 'port-adriano', 'What is Port Adriano?', 'Port Adriano is a modern luxury marina located between Santa Ponsa and El Toro, designed by the famous French designer Philippe Starck. It accommodates superyachts and features designer boutiques, premium restaurants, and regular events.', 1),
('area', 'port-adriano', 'What restaurants are at Port Adriano?', 'Port Adriano has several excellent restaurants including Italian, Mediterranean, and Asian cuisine options. The waterfront setting with views of luxury yachts creates a sophisticated dining atmosphere. Weekend brunch is particularly popular.', 2),
('area', 'port-adriano', 'Can I visit Port Adriano without a boat?', 'Port Adriano is open to all visitors. You can walk along the marina, browse the boutiques, dine at the restaurants, and enjoy the architecture without any boat connection. It is a popular destination for an evening stroll or dinner.', 3),
('area', 'port-adriano', 'Does Port Adriano host events?', 'Port Adriano regularly hosts events including markets, live music, art exhibitions, and sailing regattas. The Christmas market and summer concert series are particular highlights. Check local event listings for the current schedule.', 4),
('area', 'port-adriano', 'How do I get to Port Adriano?', 'Port Adriano is located off the MA-1 motorway between Santa Ponsa and Palmanova. It has ample free parking. The marina is about 20 minutes by car from Palma and 25 minutes from the airport.', 5),

-- Portals Vells
('area', 'portals-vells', 'What makes Portals Vells special?', 'Portals Vells is a stunning natural area at the southern tip of the Calvia peninsula, featuring three small beaches set in pine-forested coves with exceptionally clear turquoise water. It feels remote and unspoilt despite being just 15 minutes from Magaluf.', 1),
('area', 'portals-vells', 'How many beaches are at Portals Vells?', 'There are three beaches at Portals Vells. The main beach (Playa del Mago) has a restaurant and is the easiest to access. Two smaller coves to the west require a short walk through the pine forest and are quieter and more secluded.', 2),
('area', 'portals-vells', 'Is Portals Vells clothing-optional?', 'One of the smaller coves at Portals Vells (El Mago) is traditionally a clothing-optional beach. The main beach and the other smaller cove are standard. Signs at the entrance to each beach area indicate the policy.', 3),
('area', 'portals-vells', 'Can I eat at Portals Vells?', 'There is a well-known beach restaurant at the main Portals Vells beach serving seafood and Mediterranean dishes. It is open during the summer season. Bringing your own food and water is recommended if visiting the more secluded coves.', 4),
('area', 'portals-vells', 'How do I get to Portals Vells?', 'Portals Vells is reached by a narrow road that winds through pine forest from the Magaluf area. Follow signs from the main road past Cala Vinyes. Parking is available but fills up quickly in summer, especially on weekends. Arrive early.', 5),

-- Sa Porrasa
('area', 'sa-porrasa', 'What is Sa Porrasa?', 'Sa Porrasa is a small islet just offshore from Magaluf beach, and the name also refers to the surrounding residential area. The islet is a recognisable landmark visible from the Magaluf and Palmanova coastline.', 1),
('area', 'sa-porrasa', 'Can I visit Sa Porrasa island?', 'Sa Porrasa island is privately owned and generally not accessible to the public. However, it is a popular landmark for kayaking and paddleboarding around. The surrounding waters are clear and pleasant for swimming.', 2),
('area', 'sa-porrasa', 'What is the residential area of Sa Porrasa like?', 'The Sa Porrasa residential area is a quiet neighbourhood between Magaluf and Palmanova. It consists mainly of apartments and villas and offers a peaceful living environment close to both resorts and their amenities.', 3),
('area', 'sa-porrasa', 'Is Sa Porrasa close to the beach?', 'The Sa Porrasa area is within walking distance of both Magaluf beach and the western end of Palmanova beach. The seafront promenade provides pleasant walking access to both areas.', 4),
('area', 'sa-porrasa', 'Are there shops and restaurants near Sa Porrasa?', 'Sa Porrasa itself has limited commercial activity, but Magaluf and Palmanova are both within easy walking distance, providing access to numerous restaurants, shops, supermarkets, and entertainment options.', 5),

-- Sol de Mallorca
('area', 'sol-de-mallorca', 'What is Sol de Mallorca?', 'Sol de Mallorca is an exclusive, low-density residential area on the coast between Portals Vells and Magaluf. It consists primarily of luxury villas with large plots, offering privacy, sea views, and a very quiet atmosphere.', 1),
('area', 'sol-de-mallorca', 'Is there a beach at Sol de Mallorca?', 'Sol de Mallorca has rocky coastal access points rather than sandy beaches. Residents typically drive to nearby Portals Vells or the beaches of Palmanova and Magaluf. The rocky coastline itself is attractive for coastal walks.', 2),
('area', 'sol-de-mallorca', 'Who lives in Sol de Mallorca?', 'Sol de Mallorca is home to a mix of wealthy Spanish and international residents. Properties tend to be high-value villas with gardens and pools. The area has a very private, gated-community atmosphere in some sections.', 3),
('area', 'sol-de-mallorca', 'Are there any facilities in Sol de Mallorca?', 'Sol de Mallorca has very limited commercial facilities — it is primarily residential. A few restaurants serve the local community. For shopping, dining, and other services, residents typically travel to Magaluf, Palmanova, or Palma.', 4),
('area', 'sol-de-mallorca', 'How do I get to Sol de Mallorca?', 'Sol de Mallorca is accessed via roads from Magaluf heading south towards Portals Vells. The area is about 25 minutes from Palma by car. A vehicle is essential as there is no public transport serving this area directly.', 5);
