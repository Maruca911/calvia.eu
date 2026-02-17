/*
  # Seed FAQs for New Category Guides (Batch 3)

  1. New Data
    - Adds 3-4 FAQs per newly seeded category guide
    - Covers: accountants-tax, financial-advisors, health-clinics, beauty-salons,
      professional-services, hairdressers, education, pet-services, boat-charters,
      yachting-boat-rentals
    - Total: ~35 new FAQs

  2. Notes
    - FAQs provide practical Q&A content for SEO and user value
    - Page type is 'category' to match category page display
*/

INSERT INTO faqs (page_type, page_slug, question, answer, display_order)
VALUES
-- Accountants & Tax
('category', 'accountants-tax', 'Do I need a tax advisor if I own property in Calvia?', 'Yes. Even non-residents who own property in Spain must file an annual tax return (Modelo 210) declaring imputed income. A local tax advisor ensures you meet all obligations and claim applicable deductions.', 1),
('category', 'accountants-tax', 'What is the difference between a gestor and an asesor fiscal?', 'A gestor handles general administrative tasks like vehicle registration and basic paperwork. An asesor fiscal is a qualified tax advisor who provides strategic tax planning and handles complex returns, ideal for expats with cross-border finances.', 2),
('category', 'accountants-tax', 'How much does an accountant cost in Mallorca?', 'Annual fees for a personal tax advisor typically range from 300-800 euros for straightforward returns. Business accounting (autonomo or SL company) usually costs 100-300 euros per month depending on complexity and transaction volume.', 3),

-- Financial Advisors
('category', 'financial-advisors', 'Are financial advisors in Mallorca regulated?', 'Yes. Financial advisors operating in Spain must be registered with the CNMV (Comision Nacional del Mercado de Valores) or work under the licence of a regulated firm. Always verify regulatory status before engaging an advisor.', 1),
('category', 'financial-advisors', 'Can I transfer my UK pension to Spain?', 'Pension transfers are complex post-Brexit. A QROPS (Qualifying Recognised Overseas Pension Scheme) may be an option. Consult a specialist cross-border financial advisor who understands both UK and Spanish pension regulations before making any decisions.', 2),
('category', 'financial-advisors', 'Do I have to pay wealth tax in the Balearic Islands?', 'Yes, the Balearic Islands apply wealth tax on worldwide assets for residents with net wealth above approximately 700,000 euros (after allowances). The rates are among the highest in Spain, making professional financial advice particularly valuable.', 3),

-- Health Clinics
('category', 'health-clinics', 'Can I use my EHIC/GHIC card in Calvia?', 'EU/EEA citizens can use the EHIC or GHIC for emergency public healthcare. However, it does not cover private healthcare or repatriation. For full access to the Spanish public system, you need to register as a resident and obtain a Tarjeta Sanitaria.', 1),
('category', 'health-clinics', 'Are there English-speaking doctors in Calvia?', 'Yes. Many private clinics in Palmanova, Santa Ponsa, and Portals Nous have English-speaking doctors. Some also offer consultations in German, Swedish, and other languages. Private health insurance typically gives the widest choice of multilingual practitioners.', 2),
('category', 'health-clinics', 'What is the nearest hospital to Calvia?', 'Son Espases University Hospital in Palma is the main reference hospital, approximately 15-25 minutes from most Calvia locations. It has a 24-hour emergency department, all medical specialties, and trauma services.', 3),
('category', 'health-clinics', 'How much does private health insurance cost in Mallorca?', 'Private health insurance premiums typically range from 60-200 euros per month depending on age, pre-existing conditions, and coverage level. Major providers include Sanitas, Adeslas, Asisa, and DKV. Many offer specific expat policies.', 4),

-- Beauty Salons
('category', 'beauty-salons', 'How much does a facial treatment cost in Calvia?', 'Standard facial treatments range from 50-120 euros. Basic cleansing facials start around 40 euros, while advanced treatments like microdermabrasion, chemical peels, or LED therapy typically cost 80-150 euros per session.', 1),
('category', 'beauty-salons', 'Do beauty salons in Calvia speak English?', 'Yes, most salons in the tourist and expat areas (Palmanova, Santa Ponsa, Portals Nous, Peguera) have English-speaking staff. Many also speak German. Salons in more local areas like Calvia Vila may primarily speak Spanish and Catalan.', 2),
('category', 'beauty-salons', 'Do I need to book in advance?', 'For quick services like manicures, walk-ins are often accepted. For longer treatments (facials, colour services, waxing), booking is recommended, especially during summer months (June-September) when demand peaks from tourism.', 3),

-- Professional Services
('category', 'professional-services', 'Are there IT support services in Calvia?', 'Yes, several IT firms in the area provide computer repair, network setup, web development, and managed IT services. Many specialise in supporting the hospitality and tourism sectors that dominate the local economy.', 1),
('category', 'professional-services', 'Can I find a sworn translator in Calvia?', 'Sworn translators (traductores jurados) authorised by the Spanish Ministry of Foreign Affairs operate in the area. Their certified translations are required for legal documents, court proceedings, and official applications.', 2),
('category', 'professional-services', 'Is there a business network in Calvia?', 'Yes, several business networking groups operate in the area including international chambers of commerce, expat business clubs, and sector-specific associations. The coworking spaces in Palmanova and Santa Ponsa also host regular networking events.', 3),

-- Hairdressers
('category', 'hairdressers', 'How much does a haircut cost in Calvia?', 'Women''s cut and blow-dry typically costs 25-45 euros, men''s cuts 15-25 euros. Colour services range from 40-90 euros for full colour and 50-150 euros for highlights or balayage. Prices vary between basic salons and premium studios.', 1),
('category', 'hairdressers', 'Are hair salons open on Mondays in Mallorca?', 'Most traditional hair salons in Spain are closed on Mondays. However, some international salons in tourist areas may remain open. It is best to check with your specific salon. Saturday is the busiest day, so booking in advance is recommended.', 2),
('category', 'hairdressers', 'Can I find a hairdresser who speaks English?', 'Yes, many hairdressers in Palmanova, Santa Ponsa, Magaluf, and Portals Nous speak English fluently. Several salons specifically cater to the British and international expat community.', 3),

-- Education
('category', 'education', 'Are there international schools in Calvia?', 'Yes, several international schools serve the Calvia area offering British, IB, and German curricula. Most are located within a 20-30 minute drive. Places are competitive, so applying 6-12 months in advance is recommended.', 1),
('category', 'education', 'Where can I learn Spanish in Calvia?', 'Language schools and private tutors throughout the area offer Spanish courses from beginner to advanced levels. Options include intensive courses, conversational classes, and DELE exam preparation. Many schools in Palmanova and Santa Ponsa cater specifically to expats.', 2),
('category', 'education', 'Is public school free in Mallorca?', 'Yes, public education (educacion publica) is free for all children regardless of nationality. Instruction is in Catalan and Spanish. Children typically adapt to the language within 6-12 months through immersion.', 3),

-- Pet Services
('category', 'pet-services', 'Are there dog-friendly beaches in Calvia?', 'Yes, sections of Son Caliu beach and certain other beaches have designated dog-friendly areas during specific months. Dogs must be leashed in all urban areas. The Ajuntament de Calvia publishes seasonal rules for dog beach access.', 1),
('category', 'pet-services', 'Do I need to register my pet in Calvia?', 'Yes, all dogs must be microchipped and registered with the Calvia municipal census. You will also need to keep vaccination records current, including rabies. Your local vet can handle the microchipping and advise on all registration requirements.', 2),
('category', 'pet-services', 'What about leishmaniasis in Mallorca?', 'Leishmaniasis is transmitted by sandflies and is present in Mallorca. Prevention includes sandfly repellent collars (such as Scalibor), keeping dogs indoors at dusk/dawn, and annual blood tests. Discuss a prevention protocol with your vet.', 3),
('category', 'pet-services', 'How much does a vet visit cost in Calvia?', 'A standard consultation costs 30-50 euros. Vaccinations typically cost 40-60 euros per round. Spaying/neutering ranges from 150-350 euros depending on the animal''s size. Emergency out-of-hours visits usually cost 80-120 euros.', 4),

-- Boat Charters
('category', 'boat-charters', 'Do I need a boating licence to charter a boat in Mallorca?', 'For boats with engines over 15 horsepower, yes. Many charter companies offer smaller boats (under 15hp) that can be rented without a licence. Skippered charters are available for those without a licence who want a larger vessel.', 1),
('category', 'boat-charters', 'What is the best time of year for a boat charter in Calvia?', 'May to October offers the best conditions. July and August have the calmest seas but highest demand and prices. June and September provide an excellent balance of good weather, warm water, and more availability.', 2),
('category', 'boat-charters', 'How much does a boat charter cost from Port Adriano?', 'Prices vary widely. Small motorboats from 200-350 euros per day, skippered sailing yachts from 500-1,500 euros per day, and luxury motor yachts from 2,000-10,000+ euros per day. Most charters include fuel, insurance, and basic equipment.', 3),

-- Yachting & Boat Rentals
('category', 'yachting-boat-rentals', 'Can I rent a boat without a licence in Calvia?', 'Yes, boats with engines under 15 horsepower can be rented without any licence. These are ideal for short coastal explorations and visiting nearby coves. Multiple rental points operate from Palmanova, Magaluf, and Santa Ponsa beaches.', 1),
('category', 'yachting-boat-rentals', 'What is the difference between Puerto Portals and Port Adriano?', 'Puerto Portals is a glamorous social marina known for superyachts and upscale dining. Port Adriano, designed by Philippe Starck, is a modern marina with a more relaxed atmosphere, better facilities for larger vessels, and a growing events calendar.', 2),
('category', 'yachting-boat-rentals', 'How much does jet ski rental cost in Magaluf?', 'Jet ski rental typically costs 60-80 euros for 30 minutes or 100-140 euros for one hour. Guided jet ski tours covering more coastline are usually 120-180 euros per person for a 1-2 hour experience.', 3)
ON CONFLICT DO NOTHING;
