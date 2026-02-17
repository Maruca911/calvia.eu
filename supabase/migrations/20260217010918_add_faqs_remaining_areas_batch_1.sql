/*
  # Add FAQs for Remaining Areas - Batch 1

  1. New Data
    - FAQ entries for 8 areas: Son Caliu, Torrenova, Son Ferrer, Costa de la Calma, Cala Vinyes, Cas Catala, Costa den Blanes, El Toro
  2. Notes
    - 5 FAQs per area covering common visitor/resident questions
    - Supports FAQPage schema markup for SEO
*/

INSERT INTO faqs (page_type, page_slug, question, answer, display_order) VALUES
-- Son Caliu
('area', 'son-caliu', 'Where is Son Caliu located?', 'Son Caliu is a small coastal area situated between Palmanova and Santa Ponsa on the southwest coast of Mallorca. It falls within the municipality of Calvia and is about 20 minutes by car from Palma.', 1),
('area', 'son-caliu', 'Is Son Caliu good for families?', 'Son Caliu is excellent for families. The beach is small, sheltered, and has calm shallow water ideal for young children. There is a playground near the beach, and several family-friendly restaurants and hotels are within walking distance.', 2),
('area', 'son-caliu', 'What is the beach like in Son Caliu?', 'Son Caliu beach is a compact sandy cove with crystal-clear water. It is less crowded than neighbouring Palmanova and has a relaxed, local atmosphere. Sunbed and umbrella rental is available during summer months.', 3),
('area', 'son-caliu', 'Are there restaurants and shops in Son Caliu?', 'Son Caliu has a small selection of restaurants, mostly attached to the nearby hotels. For a wider range of shops, supermarkets, and dining options, Palmanova and Santa Ponsa are both just a few minutes away by car or bus.', 4),
('area', 'son-caliu', 'How do I get to Son Caliu from Palma airport?', 'Son Caliu is approximately 25 kilometres from Palma airport. The journey takes around 20-25 minutes by car or taxi. The TIB public bus service also connects the area to Palma via Palmanova.', 5),

-- Torrenova
('area', 'torrenova', 'Where exactly is Torrenova?', 'Torrenova is a coastal area located between Palmanova and Magaluf on the southwest coast of Mallorca. It is part of the Calvia municipality and sits along a stretch of sandy beach that connects these two larger resorts.', 1),
('area', 'torrenova', 'What is there to do in Torrenova?', 'Torrenova offers a relaxed beach holiday experience. The main attractions are the beach, waterfront promenade for walking and cycling, and several beachfront restaurants. It is also within easy walking distance of both Palmanova and Magaluf for additional entertainment and dining.', 2),
('area', 'torrenova', 'Is Torrenova quiet or lively?', 'Torrenova strikes a balance between quiet and lively. It is calmer than neighbouring Magaluf but more accessible to nightlife and entertainment than some of the quieter Calvia areas. During the day it has a relaxed family atmosphere.', 3),
('area', 'torrenova', 'Can I walk from Torrenova to Palmanova or Magaluf?', 'Yes. The seafront promenade connects Torrenova to both Palmanova and Magaluf, making it easy to walk between all three areas. The walk to central Palmanova takes about 10 minutes and to Magaluf about 15 minutes.', 4),
('area', 'torrenova', 'Are there supermarkets near Torrenova?', 'There are small convenience stores in Torrenova for basics. For larger supermarkets, Palmanova has a Mercadona and several other options within a short drive or bus ride. Magaluf also has grocery stores along the main road.', 5),

-- Son Ferrer
('area', 'son-ferrer', 'What kind of area is Son Ferrer?', 'Son Ferrer is a predominantly residential area inland from the coast, between Santa Ponsa and El Toro. It is popular with permanent residents and long-term expats looking for more affordable housing than the beachfront areas.', 1),
('area', 'son-ferrer', 'Is Son Ferrer close to the beach?', 'Son Ferrer is about 2-3 kilometres from the nearest beaches at Santa Ponsa and El Toro. While not directly on the coast, it is a short drive or cycle ride to several excellent beaches.', 2),
('area', 'son-ferrer', 'What amenities does Son Ferrer have?', 'Son Ferrer has a range of everyday amenities including supermarkets, pharmacies, restaurants, and cafes. There is also a weekly market. For larger shopping needs, the Eroski hypermarket and other retail outlets are nearby in Santa Ponsa.', 3),
('area', 'son-ferrer', 'Is Son Ferrer a good place to live in Calvia?', 'Son Ferrer offers some of the most affordable housing in the Calvia municipality while still being well-connected to beaches, schools, and amenities. It has a genuine community feel with a mix of Spanish and international residents.', 4),
('area', 'son-ferrer', 'How do I get around from Son Ferrer?', 'A car is recommended for living in Son Ferrer, though bus services connect the area to Santa Ponsa, Palmanova, and Palma. The location provides good road access to the main MA-1 motorway for quick travel to Palma and the airport.', 5),

-- Costa de la Calma
('area', 'costa-de-la-calma', 'What does Costa de la Calma mean?', 'Costa de la Calma translates to "Coast of Calm" in English, which perfectly describes the area. It is a tranquil residential zone between Santa Ponsa and Peguera, known for its peaceful atmosphere and pine-forested surroundings.', 1),
('area', 'costa-de-la-calma', 'Is Costa de la Calma good for a quiet holiday?', 'Costa de la Calma is ideal for visitors seeking peace and quiet. The area is almost entirely residential with a handful of small hotels. It has a small rocky beach area and is close to the better beaches of Santa Ponsa and Peguera.', 2),
('area', 'costa-de-la-calma', 'What nationality lives in Costa de la Calma?', 'Costa de la Calma has a significant German resident population, alongside Spanish locals and other Northern European nationalities. Many restaurants and businesses in the area operate in German and English alongside Spanish.', 3),
('area', 'costa-de-la-calma', 'Are there good restaurants in Costa de la Calma?', 'There are several pleasant restaurants in Costa de la Calma, many with a German or international character. For a wider dining selection, Santa Ponsa and Peguera are both within a 5-minute drive.', 4),
('area', 'costa-de-la-calma', 'How far is Costa de la Calma from Palma?', 'Costa de la Calma is approximately 25 kilometres from Palma city centre, which takes about 25-30 minutes by car via the MA-1 motorway. The TIB bus service provides regular connections to Palma.', 5),

-- Cala Vinyes
('area', 'cala-vinyes', 'What is Cala Vinyes like?', 'Cala Vinyes is a small, peaceful residential area south of Magaluf with a beautiful sheltered beach. It has a more relaxed, local feel compared to its busy neighbour and is popular with families and residents.', 1),
('area', 'cala-vinyes', 'How is the beach at Cala Vinyes?', 'Cala Vinyes beach is a lovely small sandy cove with clear turquoise water. It is sheltered and calm, making it great for swimming. There are a couple of beach restaurants and sunbed rental available during summer.', 2),
('area', 'cala-vinyes', 'Is Cala Vinyes close to Magaluf?', 'Cala Vinyes is about 2 kilometres south of Magaluf, reachable in a few minutes by car. Despite the proximity, the atmosphere is completely different — quiet and residential rather than touristy.', 3),
('area', 'cala-vinyes', 'Can I walk from Cala Vinyes to Portals Vells?', 'There is a coastal path that connects Cala Vinyes towards Portals Vells, though it can be rough in places. By car, Portals Vells is about 10 minutes south. The route passes through attractive pine forest.', 4),
('area', 'cala-vinyes', 'Are there shops and restaurants in Cala Vinyes?', 'Cala Vinyes has a limited selection of restaurants, mainly near the beach. For shopping and a wider range of dining, Magaluf is the nearest option. There are small convenience stores for daily essentials.', 5),

-- Cas Catala
('area', 'cas-catala', 'Where is Cas Catala?', 'Cas Catala is a residential area on the eastern edge of Calvia, bordering the municipality of Palma. It sits along the coast between Bendinat and Illetas, making it one of the most well-connected areas to Palma city.', 1),
('area', 'cas-catala', 'Is Cas Catala an expensive area?', 'Cas Catala is one of the more premium residential areas in Calvia, with property prices reflecting its proximity to Palma, beautiful coastal views, and quiet residential character. It neighbours the equally upscale areas of Bendinat and Illetas.', 2),
('area', 'cas-catala', 'What is the coast like at Cas Catala?', 'The coast at Cas Catala is predominantly rocky with some small swimming spots. The nearby beaches of Ses Illetes are just a short drive away and offer the sandy beach experience. The rocky coastline is scenic and popular for walking.', 3),
('area', 'cas-catala', 'How far is Cas Catala from Palma?', 'Cas Catala is one of the closest Calvia areas to Palma, just 10-12 kilometres from the city centre. The drive takes approximately 15 minutes, making it very practical for commuters and those who want city access.', 4),
('area', 'cas-catala', 'What facilities are available in Cas Catala?', 'Cas Catala has a selection of restaurants and small shops. The main Paseo de Illetas road has several dining options. For larger shopping needs, the nearby areas of Portals Nous and Palma provide extensive options.', 5),

-- Costa den Blanes
('area', 'costa-den-blanes', 'What is Costa den Blanes known for?', 'Costa den Blanes is known as an exclusive, quiet residential area between Portals Nous and Palmanova. It is home to Marineland Mallorca and several luxury villas with sea views. The area has a very peaceful, upscale atmosphere.', 1),
('area', 'costa-den-blanes', 'Is there a beach at Costa den Blanes?', 'Costa den Blanes does not have a large sandy beach but has rocky coastal areas suitable for swimming. The sandy beaches of Palmanova and Portals Nous/Ses Illetes are both within a short drive.', 2),
('area', 'costa-den-blanes', 'What is Marineland Mallorca?', 'Marineland is a marine-themed park in Costa den Blanes featuring dolphin shows, sea lion displays, an aquarium, and exotic bird gardens. It is a popular family attraction and one of the main points of interest in the area.', 3),
('area', 'costa-den-blanes', 'Is Costa den Blanes good for families?', 'Costa den Blanes is a very safe, quiet residential area. While it lacks the immediate beach access and commercial activity of neighbouring areas, families appreciate the tranquil environment and proximity to both Palmanova and Portals Nous.', 4),
('area', 'costa-den-blanes', 'How well connected is Costa den Blanes?', 'Costa den Blanes is well-positioned between Palmanova and Portals Nous, with good road connections to the MA-1 motorway. Bus services are limited so a car is recommended for daily life.', 5),

-- El Toro
('area', 'el-toro', 'What is El Toro like as an area?', 'El Toro is a residential neighbourhood near Port Adriano, south of Santa Ponsa. It has grown considerably in recent years with new developments and benefits from proximity to the modern Port Adriano marina and its restaurants and boutiques.', 1),
('area', 'el-toro', 'Is there a beach near El Toro?', 'The nearest sandy beach to El Toro is the small Playa El Toro, a sheltered cove with calm water. The larger beach at Santa Ponsa is also just a short drive away. Port Adriano offers waterfront dining as an alternative to beach days.', 2),
('area', 'el-toro', 'What is Port Adriano?', 'Port Adriano is a modern luxury marina designed by Philippe Starck, located adjacent to El Toro. It houses superyachts, designer boutiques, premium restaurants, and hosts events throughout the year. It is one of the most architecturally striking marinas in the Mediterranean.', 3),
('area', 'el-toro', 'Are there good restaurants near El Toro?', 'Port Adriano has several excellent restaurants ranging from casual waterfront dining to upscale Mediterranean cuisine. El Toro itself has a selection of neighbourhood restaurants. Santa Ponsa is also nearby for additional options.', 4),
('area', 'el-toro', 'Is El Toro a good place to live?', 'El Toro offers a good residential environment with newer housing stock than many Calvia areas. It is well-positioned near Port Adriano, Santa Ponsa, and the motorway, making it practical for both daily life and commuting to Palma.', 5);
