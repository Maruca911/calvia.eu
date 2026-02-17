/*
  # Seed new guides for high-priority uncovered categories

  1. New Guides
    - Emergency Services guide (emergency-services category)
    - Banks & Finance guide (banks-finance category)
    - Pharmacies guide (pharmacies category)
    - Taxi & Transport guide (taxi-transport category)

  2. Purpose
    - These are essential-information categories for international residents and visitors
    - Each guide provides practical, location-specific content for the Calvia area
    - All guides include SEO-optimized meta titles and descriptions
*/

INSERT INTO guides (title, slug, description, content, category_slug, area_slug, meta_title, meta_description, image_url, published)
VALUES
(
  'Emergency Services in Calvia: Numbers, Locations & What to Know',
  'emergency-services-guide-calvia',
  'Essential emergency numbers, hospital locations, police stations, and fire services in Calvia, Mallorca. What every resident and visitor needs to know.',
  '<h2>Emergency Numbers</h2>
<p>In any emergency in Spain, dial <strong>112</strong>. This pan-European emergency number connects you to police, ambulance, and fire services with multilingual operators. Additional direct numbers:</p>
<ul>
<li><strong>112</strong> — General emergencies (multilingual)</li>
<li><strong>091</strong> — National Police (Policia Nacional)</li>
<li><strong>062</strong> — Civil Guard (Guardia Civil)</li>
<li><strong>092</strong> — Local Police (Policia Local de Calvia)</li>
<li><strong>061</strong> — Medical emergencies (SAMU ambulance)</li>
<li><strong>080</strong> — Fire brigade (Bomberos)</li>
</ul>
<p>Save these numbers in your phone when you arrive. The 112 service has English, German, and French-speaking operators available 24/7.</p>

<h2>Medical Emergencies</h2>
<p>The nearest major hospital is <strong>Hospital Son Espases</strong> in Palma, approximately 20-30 minutes from most parts of Calvia. This is a full public hospital with an emergency department (Urgencias) operating 24/7. For less severe medical issues, <strong>health centres (centros de salud)</strong> are located in Santa Ponca, Palmanova, Peguera, and Calvia Vila. These have urgent care services during daytime hours.</p>
<p>Private hospitals with emergency departments include <strong>Clinica Rotger</strong> and <strong>Hospital Quironsalud Palmaplanas</strong> in Palma, both about 20 minutes by car. Private emergency visits typically cost 100-200 euros without insurance.</p>

<h2>Police Services</h2>
<p>The <strong>Policia Local de Calvia</strong> is the municipal police force and handles local matters including traffic, noise complaints, and minor incidents. Their main station is in Calvia Vila. The <strong>Guardia Civil</strong> handles rural areas, coastline security, and serious crime. For tourist-related incidents, the <strong>Policia Nacional</strong> in Palma handles passport and immigration matters.</p>
<p>To report a non-emergency crime or theft, visit the nearest police station in person to file a <strong>denuncia</strong> (police report). This document is essential for insurance claims. Some stations offer foreign-language assistance, particularly during summer.</p>

<h2>Fire and Rescue</h2>
<p>The Calvia fire brigade (Bomberos) covers the entire municipality and responds to fires, flooding, and rescue operations. During summer, forest fire risk is high — observe all fire restrictions and report any smoke or flames immediately by calling 112.</p>

<h2>Consulates and Embassies</h2>
<p>Several countries maintain consular offices in Palma de Mallorca for assistance with lost passports, emergencies abroad, and citizen services:</p>
<ul>
<li><strong>British Consulate</strong> — Carrer de Convent dels Caputxins 4, Palma</li>
<li><strong>German Consulate</strong> — Carrer de Porto Pi 8, Palma</li>
<li><strong>French Honorary Consulate</strong> — Palma</li>
<li><strong>Swedish Honorary Consulate</strong> — Palma</li>
<li><strong>Dutch Honorary Consulate</strong> — Palma</li>
</ul>

<h2>Pharmacies for Urgent Medication</h2>
<p>Spanish pharmacies (<strong>farmacias</strong>) operate a rotating duty system so that at least one pharmacy is always open 24/7 in the area. Look for the illuminated green cross. Duty pharmacy schedules are posted on the door of every pharmacy and are available at <strong>cofib.es</strong> (the Balearic pharmacists'' college website).</p>

<h2>Beach Safety</h2>
<p>Calvia''s beaches are patrolled by lifeguards during the summer season (typically June through September). Always check flag colours: <strong>green</strong> (safe), <strong>yellow</strong> (caution, swim with care), <strong>red</strong> (no swimming). Jellyfish warnings are communicated via purple flags. For sea rescue, call 112 or contact the nearest lifeguard station.</p>',
  'emergency-services',
  NULL,
  'Emergency Services in Calvia, Mallorca 2026 | Numbers & Locations | Calvia.app',
  'Essential emergency numbers, hospital locations, police stations, and safety information for Calvia, Mallorca. What every resident and visitor needs to know.',
  'https://images.pexels.com/photos/263402/pexels-photo-263402.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750',
  true
),
(
  'Banks & Finance in Calvia: A Guide for International Residents',
  'banks-finance-guide-calvia',
  'Navigate banking in Calvia, Mallorca. Opening accounts, international transfers, mortgage options, and financial services for expats and residents.',
  '<h2>Banking in Spain: The Basics</h2>
<p>Opening a bank account in Spain is a straightforward process for both EU and non-EU residents. You will need your passport, NIE (foreigner identification number), and proof of address. Most banks can open an account within a few days, though some require an appointment.</p>

<h2>Major Banks in Calvia</h2>
<p>The main Spanish banks with branches across the Calvia municipality include:</p>
<ul>
<li><strong>CaixaBank</strong> — The largest retail bank in Spain with branches in Santa Ponca, Palmanova, Peguera, and Calvia Vila. Offers English-language online banking and a strong mobile app.</li>
<li><strong>Banco Santander</strong> — Branches in Palmanova and Santa Ponca. Strong international presence makes cross-border banking easier.</li>
<li><strong>BBVA</strong> — Digital-first approach with good online tools. Branches in Palmanova area.</li>
<li><strong>Sabadell</strong> — Popular with business owners. Competitive commercial banking services.</li>
</ul>
<p>Several branches in tourist and expat areas have English and German-speaking staff. Call ahead to confirm language availability for complex transactions.</p>

<h2>Account Types</h2>
<p><strong>Cuenta corriente</strong> (current account) is the standard everyday account. Most come with a debit card and online banking. Monthly fees range from 0 to 10 euros, with free accounts often requiring a minimum monthly income deposit or direct debit of utility bills.</p>
<p><strong>Cuenta de ahorro</strong> (savings account) offers slightly better interest rates but fewer transaction features. Interest rates in Spain are currently modest at 0.5-2% for standard savings accounts.</p>
<p><strong>Non-resident accounts</strong> are available for those who have not yet obtained their NIE. These have more limited features and slightly higher fees but allow you to manage property purchases and utility payments before formal residency.</p>

<h2>International Transfers</h2>
<p>Traditional bank transfers (SEPA within Europe) are typically free or cost 1-3 euros. International transfers outside the EU can be expensive through banks (15-40 euros plus exchange rate margins). Many international residents in Calvia use services like <strong>Wise (formerly TransferWise), Revolut, or N26</strong> for cheaper cross-border transfers. These digital banks also offer multi-currency accounts that are useful for managing finances across countries.</p>

<h2>Mortgages for International Buyers</h2>
<p>Spanish banks offer mortgages to foreign buyers, typically up to 60-70% loan-to-value for non-residents and up to 80% for residents. Interest rates are available as fixed (currently around 2.5-4%) or variable (linked to Euribor plus a spread of 0.5-1.5%). The application process requires proof of income, existing debt documentation, property valuation, and tax returns. Budget 2-3 months for approval.</p>

<h2>Tax Obligations</h2>
<p>All Spanish residents must file an annual income tax declaration (<strong>declaracion de la renta</strong>), typically due June 30th. The tax year runs January to December. Non-resident property owners must file the <strong>Modelo 210</strong> annually for imputed income tax. Wealth tax (<strong>impuesto sobre el patrimonio</strong>) applies to assets above certain thresholds and rates vary by autonomous community — the Balearic Islands have their own rates.</p>

<h2>ATMs and Cash</h2>
<p>ATMs (<strong>cajeros automaticos</strong>) are widely available across Calvia. Most accept international cards, though fees of 1.5-2 euros per withdrawal from non-home-bank ATMs are common. CaixaBank ATMs offer instructions in multiple languages. Contactless card payment is accepted almost everywhere, with the notable exception of some market stalls and very small businesses.</p>',
  'banks-finance',
  NULL,
  'Banks & Finance Guide for Calvia, Mallorca 2026 | Banking for Expats | Calvia.app',
  'Navigate banking in Calvia, Mallorca. Opening accounts, international transfers, mortgage options, and tax obligations for international residents and property owners.',
  'https://images.pexels.com/photos/259249/pexels-photo-259249.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750',
  true
),
(
  'Pharmacies in Calvia: Medication, Services & Duty Schedule',
  'pharmacies-guide-calvia',
  'Find pharmacies across Calvia, Mallorca. Prescription services, over-the-counter medications, duty pharmacy schedule, and health products for residents and visitors.',
  '<h2>Pharmacies in Calvia</h2>
<p>Spanish pharmacies (<strong>farmacias</strong>) are identified by a green illuminated cross and play a much larger role in healthcare than in many other European countries. Pharmacists in Spain can provide basic medical advice, dispense many medications without a prescription, and offer services like blood pressure monitoring, glucose testing, and wound care.</p>

<h2>Pharmacy Locations</h2>
<p>Calvia is well served with pharmacies in every major town:</p>
<ul>
<li><strong>Santa Ponca</strong> — Multiple pharmacies along Avinguda Jaume I and the town centre</li>
<li><strong>Palmanova</strong> — Several pharmacies along the main commercial street and near the beach</li>
<li><strong>Magaluf</strong> — Pharmacies along Avinguda S''Olivera and near the strip</li>
<li><strong>Peguera</strong> — Pharmacies in the town centre and along Carrer Pins</li>
<li><strong>Calvia Vila</strong> — Town centre pharmacy</li>
<li><strong>Portals Nous</strong> — Pharmacy in the commercial area</li>
</ul>

<h2>Opening Hours and Duty Pharmacies</h2>
<p>Standard pharmacy hours are <strong>Monday to Friday 09:00-20:00</strong> (with some closing for siesta from 13:30-16:30) and <strong>Saturday 09:00-13:30</strong>. Outside these hours, a rotating duty system ensures at least one pharmacy is open 24/7 in the area.</p>
<p>To find the current duty pharmacy (<strong>farmacia de guardia</strong>):</p>
<ul>
<li>Check the notice posted on the door of any pharmacy</li>
<li>Visit <strong>cofib.es</strong> (Colegio Oficial de Farmaceuticos de Baleares)</li>
<li>Call 112 and they can direct you to the nearest open pharmacy</li>
<li>Look for the illuminated green cross — if it is lit at night, the pharmacy is on duty</li>
</ul>

<h2>Prescriptions and Medications</h2>
<p>If you are a registered resident with a Spanish health card (<strong>tarjeta sanitaria</strong>), prescription medications are subsidized — you pay a percentage of the cost based on your income level. Without a Spanish health card, you pay the full price, though Spanish medication prices are generally lower than in most northern European countries.</p>
<p>Some medications that require a prescription in other countries are available over the counter in Spain, including certain antibiotics, anti-inflammatories, and some skin treatments. Always consult the pharmacist — they are highly trained and can advise on appropriate medications for common conditions.</p>

<h2>Bringing Medication from Abroad</h2>
<p>If you take regular prescription medication, bring sufficient supply for your stay plus a copy of your prescription showing the generic (chemical) name of the drug. Brand names differ between countries, but Spanish pharmacists can identify the equivalent using the generic name. For controlled substances, carry a letter from your doctor and the original packaging.</p>

<h2>Additional Services</h2>
<p>Many pharmacies in Calvia offer services beyond medication dispensing:</p>
<ul>
<li><strong>Blood pressure monitoring</strong> — usually free</li>
<li><strong>Ear piercing</strong> — a common pharmacy service in Spain</li>
<li><strong>Orthopedic products</strong> — support bandages, braces, insoles</li>
<li><strong>Sun protection</strong> — pharmacies stock medical-grade sunscreen brands</li>
<li><strong>Baby and infant care</strong> — specialist formulas and baby health products</li>
<li><strong>Homeopathic and natural remedies</strong></li>
</ul>

<h2>Veterinary Pharmacies</h2>
<p>Pet medications are also available through regular pharmacies with a veterinary prescription. Some pharmacies have a dedicated veterinary section. Flea and tick treatments suitable for the Mediterranean climate are widely stocked.</p>',
  'pharmacies',
  NULL,
  'Pharmacy Guide for Calvia, Mallorca 2026 | Duty Pharmacies & Services | Calvia.app',
  'Find pharmacies across Calvia, Mallorca. Duty pharmacy schedule, prescription services, over-the-counter medications, and practical healthcare tips for residents and visitors.',
  'https://images.pexels.com/photos/3683074/pexels-photo-3683074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750',
  true
),
(
  'Getting Around Calvia: Taxis, Buses & Transport Guide',
  'transport-guide-calvia',
  'Complete transport guide for Calvia, Mallorca. Taxi services, bus routes, car rental, cycling, and getting to and from Palma airport.',
  '<h2>Getting To and From Palma Airport</h2>
<p>Palma de Mallorca Airport (PMI) is the gateway to Calvia, located 20-40 minutes by car depending on your destination within the municipality. Transport options from the airport include:</p>
<ul>
<li><strong>Taxi</strong> — Fixed rates apply: approximately 30-45 euros to most Calvia destinations. Taxis are available 24/7 outside the arrivals terminal. Journey time is 20-40 minutes depending on traffic and specific destination.</li>
<li><strong>Airport transfer services</strong> — Pre-bookable private transfers from 35-60 euros per vehicle. Useful for families or groups with luggage.</li>
<li><strong>Bus</strong> — TIB (Transport de les Illes Balears) bus line 1 runs from the airport to Palma city centre, from where you can connect to Calvia-bound buses. Not the most convenient option with luggage but costs only 5 euros.</li>
<li><strong>Car rental</strong> — All major rental companies have desks at the airport. Booking in advance during summer is strongly recommended as vehicles sell out.</li>
</ul>

<h2>Taxis in Calvia</h2>
<p>Taxis in Calvia are licensed by the <strong>Ajuntament de Calvia</strong> and operate with meters. You can hail taxis on the street, find them at designated taxi ranks, or call for pickup. Key taxi ranks are located at:</p>
<ul>
<li>Palmanova — Plaza del Mar</li>
<li>Magaluf — near the commercial centre</li>
<li>Santa Ponca — town centre</li>
<li>Peguera — main promenade</li>
</ul>
<p>Fares follow a meter rate with a base fare of approximately 3-4 euros plus per-kilometer charges. Short trips within a town cost 5-10 euros. Longer trips (e.g., Peguera to Palma) can cost 35-50 euros. Night rates and weekend supplements apply. Most taxis accept card payments but confirm before starting your journey.</p>

<h2>Public Buses</h2>
<p>The <strong>TIB bus network</strong> connects Calvia to Palma and other parts of Mallorca. Key routes for Calvia residents:</p>
<ul>
<li><strong>Line 104</strong> — Palma to Peguera via Palmanova, Magaluf, and Santa Ponca (frequent service)</li>
<li><strong>Line 107</strong> — Palma to Portals Nous and Puerto Portals</li>
<li><strong>Line 111</strong> — Palma to Calvia Vila and Es Capdella</li>
</ul>
<p>Single tickets cost 2-5 euros depending on distance. The <strong>TIB card</strong> (reloadable transport card) offers significant discounts — approximately 50% off single-ticket prices. Cards can be purchased at TIB offices and some tobacconists (<strong>estancos</strong>). Service frequency is good during the day (every 15-30 minutes on main routes) but reduces significantly after 21:00.</p>

<h2>Driving and Car Rental</h2>
<p>A car is the most practical way to explore Calvia and Mallorca in general. Roads are well-maintained and signposted. The <strong>Ma-1</strong> motorway connects Palma to Palmanova and continues along the coast. Parking can be challenging in town centres during summer — look for blue-zone pay parking or municipal car parks.</p>
<p>Car rental costs 20-50 euros per day depending on season and vehicle. Book well in advance for June-September. International driving licences are accepted for up to six months for non-EU residents; EU licences are valid indefinitely.</p>

<h2>Cycling</h2>
<p>Cycling is both a popular sport and a practical transport option in Calvia. Dedicated bike lanes exist along some coastal routes, particularly between Palmanova and Magaluf. Electric bike rental is available in most towns and is an excellent way to navigate the hilly terrain. Always wear a helmet (mandatory outside urban areas in Spain) and use lights after dark.</p>

<h2>Boat Transfers</h2>
<p>During summer months, small boat services operate between some coastal areas, particularly connecting Palmanova, Magaluf, and Portals Vells. These are primarily tourist services but can be a pleasant (if slow) alternative to road transport.</p>

<h2>Ride-Sharing and Apps</h2>
<p>Uber and similar ride-sharing apps do not operate in Mallorca. Instead, use local taxi apps like <strong>FreeNow (formerly MyTaxi)</strong> or <strong>Taxi Click Mallorca</strong> for smartphone-based taxi booking. These work similarly to ride-sharing apps with upfront pricing and driver tracking.</p>',
  'taxi-transport',
  NULL,
  'Transport Guide for Calvia, Mallorca 2026 | Taxis, Buses & Getting Around | Calvia.app',
  'Complete transport guide for Calvia, Mallorca. Taxi fares, bus routes and schedules, airport transfers, car rental, and cycling options for residents and visitors.',
  'https://images.pexels.com/photos/385998/pexels-photo-385998.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750',
  true
);

INSERT INTO faqs (page_type, page_slug, question, answer, display_order) VALUES
('guide', 'emergency-services-guide-calvia', 'What is the main emergency number in Calvia?', 'Dial 112 for all emergencies in Spain. This connects to multilingual operators who can dispatch police, ambulance, or fire services. English, German, and French operators are available 24/7.', 1),
('guide', 'emergency-services-guide-calvia', 'Where is the nearest hospital to Calvia?', 'The nearest major hospital is Hospital Son Espases in Palma, approximately 20-30 minutes from most parts of Calvia. Private hospitals include Clinica Rotger and Hospital Quironsalud Palmaplanas.', 2),
('guide', 'emergency-services-guide-calvia', 'How do I report a crime or theft in Calvia?', 'Visit the nearest police station to file a denuncia (police report). This document is essential for insurance claims. The Policia Local de Calvia has their main station in Calvia Vila.', 3),
('guide', 'banks-finance-guide-calvia', 'Can I open a bank account in Spain without a NIE?', 'Some banks offer non-resident accounts without a NIE, but with limited features. For a full current account, you will need your passport, NIE, and proof of address.', 1),
('guide', 'banks-finance-guide-calvia', 'What is the best bank for English-speaking expats in Calvia?', 'CaixaBank is the most widely recommended for international residents, with English-language online banking, a strong mobile app, and branches with English-speaking staff across Calvia.', 2),
('guide', 'banks-finance-guide-calvia', 'How can I send money internationally from Spain cheaply?', 'Services like Wise (TransferWise), Revolut, and N26 offer much cheaper international transfers than traditional Spanish banks. Traditional bank transfers outside the EU can cost 15-40 euros.', 3),
('guide', 'pharmacies-guide-calvia', 'How do I find an open pharmacy at night in Calvia?', 'Spain operates a rotating duty pharmacy (farmacia de guardia) system. Check the notice on any pharmacy door, visit cofib.es, or call 112 for the nearest open pharmacy.', 1),
('guide', 'pharmacies-guide-calvia', 'Can I buy antibiotics without a prescription in Spain?', 'Some antibiotics are available without a prescription in Spanish pharmacies, though regulations have tightened. Pharmacists can advise on appropriate over-the-counter treatments for common conditions.', 2),
('guide', 'pharmacies-guide-calvia', 'Are pharmacy prices lower in Spain than in the UK or Germany?', 'Generally yes. Medication prices in Spain are regulated and tend to be lower than in most northern European countries. Registered residents with a Spanish health card pay a subsidized percentage.', 3),
('guide', 'transport-guide-calvia', 'How much does a taxi from Palma Airport to Calvia cost?', 'Taxi fares from Palma Airport to Calvia destinations typically range from 30 to 45 euros depending on the specific area. Taxis operate on a meter with fixed airport supplement.', 1),
('guide', 'transport-guide-calvia', 'What bus goes from Palma to Santa Ponca?', 'TIB bus line 104 runs from Palma to Peguera via Palmanova, Magaluf, and Santa Ponca. Single tickets cost 2-5 euros, with the TIB reloadable card offering approximately 50% discounts.', 2),
('guide', 'transport-guide-calvia', 'Does Uber work in Mallorca?', 'No, Uber and similar ride-sharing apps do not operate in Mallorca. Use local taxi apps like FreeNow (formerly MyTaxi) or Taxi Click Mallorca for smartphone-based booking.', 3);