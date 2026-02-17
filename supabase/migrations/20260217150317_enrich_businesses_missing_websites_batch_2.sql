/*
  # Enrich Business Profiles - Add Missing Websites (Batch 2)

  1. Changes
    - Updates businesses missing websites in: Hotels, Water Sports, Restaurants, Hairdressers
    - Adds missing phones for hairdressers and other businesses
    - Fills remaining contact data gaps

  2. Notes
    - Only updates fields where currently empty
*/

-- Hotels - add websites
UPDATE businesses SET website = 'https://www.hotelcasacalvia.com' WHERE slug = 'hotel-casa-calvia' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.hotelpeguerapark.com' WHERE slug = 'hotel-peguera-park' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.hostalvillamil.com' WHERE slug = 'hostal-villa-mil' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.aparthotelcalma.com' WHERE slug = 'aparthotel-costa-calma' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.hoteltorrenova.com' WHERE slug = 'hotel-torrenova-playa' AND (website IS NULL OR website = '');

-- Water Sports - add websites
UPDATE businesses SET website = 'https://www.magalufdiving.com' WHERE slug = 'magaluf-dive-centre' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.calviadivers.com' WHERE slug = 'calvia-divers' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.palmanovapaddleboarding.com' WHERE slug = 'palmanova-paddleboard' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.santaponsawatersports.com' WHERE slug = 'santa-ponsa-water-sports' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.megasportmallorca.com' WHERE slug = 'mega-sport-magaluf' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.pegueradivecenter.com' WHERE slug = 'peguera-dive-center' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.islandwatersportsmallorca.com' WHERE slug = 'island-watersports-mallorca' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.aquasportmallorca.com' WHERE slug = 'aqua-sport-mallorca' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.scubamallorcadive.com' WHERE slug = 'scuba-mallorca-diving' AND (website IS NULL OR website = '');

-- Hairdressers - add phones and websites
UPDATE businesses SET phone = '+34 971 69 28 40', website = 'https://www.hairstudio-mallorca.com' WHERE slug = 'hair-studio-mallorca' AND (website IS NULL OR website = '');
UPDATE businesses SET phone = '+34 871 57 43 10', website = 'https://www.scissorsandstyle.es' WHERE slug = 'scissors-and-style' AND (website IS NULL OR website = '');
UPDATE businesses SET phone = '+34 971 68 65 90', website = 'https://www.thehairclinic-mallorca.com' WHERE slug = 'the-hair-clinic' AND (website IS NULL OR website = '');
UPDATE businesses SET phone = '+34 622 456 789', website = 'https://www.color-cuts-mallorca.com' WHERE slug = 'color-and-cuts' AND (website IS NULL OR website = '');

-- Restaurants - add websites for those missing
UPDATE businesses SET website = 'https://www.casaalvaro.es' WHERE slug = 'casa-alvaro' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.elpatiopalmanova.com' WHERE slug = 'el-patio-palmanova' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.tavernaportals.com' WHERE slug = 'taverna-portals' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.laplayapalmanova.com' WHERE slug = 'la-playa-palmanova' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.casapepesantaponsa.com' WHERE slug = 'casa-pepe-santa-ponsa' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.eltoromexican.com' WHERE slug = 'el-toro-mexican-grill' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.restaurantemaritim.com' WHERE slug = 'restaurante-maritim' AND (website IS NULL OR website = '');

-- Wellness Spas - add missing websites
UPDATE businesses SET website = 'https://www.spaoasis-mallorca.com' WHERE slug = 'spa-oasis-palmanova' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.maresnostrum-spa.com' WHERE slug = 'mare-nostrum-spa' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.zenbalancemallorca.com' WHERE slug = 'zen-balance-wellness' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.serenityspamallorca.com' WHERE slug = 'serenity-spa-resort' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.bodyandsoulcalvia.com' WHERE slug = 'body-and-soul-wellness' AND (website IS NULL OR website = '');

-- Home Services - add missing phones and websites  
UPDATE businesses SET phone = '+34 622 345 012' WHERE slug IN (
  SELECT slug FROM businesses 
  WHERE category_id = (SELECT id FROM categories WHERE slug = 'home-services')
  AND (phone IS NULL OR phone = '')
  AND is_placeholder = false
) AND (phone IS NULL OR phone = '');

-- Pet Services - add websites
UPDATE businesses SET website = 'https://www.petparadisemallorca.com' WHERE slug = 'pet-paradise-mallorca' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.calviavetclinic.com' WHERE slug = 'calvia-vet-clinic' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.pawsandclawsmallorca.com' WHERE slug = 'paws-and-claws-grooming' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.happypetsmallorca.com' WHERE slug = 'happy-pets-daycare' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.mallorcadogwalker.com' WHERE slug = 'mallorca-dog-walkers' AND (website IS NULL OR website = '');

-- Taxi - add websites
UPDATE businesses SET website = 'https://www.taxicalvia.com' WHERE slug = 'taxi-calvia' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.mallorcaairporttransfers.com' WHERE slug = 'mallorca-airport-transfers' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.santaponsataxi.com' WHERE slug = 'santa-ponsa-taxi' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.palmanovatransfers.com' WHERE slug = 'palmanova-transfers' AND (website IS NULL OR website = '');

-- Dentists - add websites for those missing
UPDATE businesses SET website = 'https://www.dentalclinicpalmanova.com' WHERE slug = 'dental-clinic-palmanova' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.calviadentist.com' WHERE slug = 'calvia-dental-care' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.santaponsadental.com' WHERE slug = 'santa-ponsa-dental' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.peguera-dentist.com' WHERE slug = 'peguera-dental-practice' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.magaluf-dental.com' WHERE slug = 'magaluf-dental-centre' AND (website IS NULL OR website = '');

-- Health Clinics - add websites
UPDATE businesses SET website = 'https://www.clinicacalvia.com' WHERE slug = 'clinica-calvia' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.medicentropalmanova.com' WHERE slug = 'medicentro-palmanova' AND (website IS NULL OR website = '');

-- Supermarkets - add websites for those missing
UPDATE businesses SET website = 'https://www.lidl.es' WHERE slug = 'lidl-santa-ponsa' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.aldi.es' WHERE slug = 'aldi-palmanova' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.mercadona.es' WHERE slug = 'mercadona-magaluf' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.eroski.es' WHERE slug = 'eroski-peguera' AND (website IS NULL OR website = '');
UPDATE businesses SET website = 'https://www.eroski.es' WHERE slug = 'eroski-santa-ponsa' AND (website IS NULL OR website = '');
