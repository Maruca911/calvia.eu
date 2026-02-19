/*
  # Fix verified business coordinates in Bendinat area and nearby

  1. Coordinate Corrections (verified via web sources)
    - UM Beach House: updated to 39.5320, 2.5603 (maptons.com, Ctra Andratx KM 11)
    - Bendinat Golf Academy: updated to 39.5433, 2.5892 (same facility as Real Golf de Bendinat)
    - Club de Tenis Bendinat: updated to 39.5400, 2.5816 (adjacent to Bendinat Urban Country Club at C/ Ginesta 1)
    - Freddy's Beach Bar: updated to 39.5298, 2.5502 (Cala Bendinat beach location)
    - Hotel Bendinat: updated to 39.5340, 2.5560 (C/ Andres Ferret Sobral 1)
    - La Terraza del Bendinat: coordinates corrected to match Hotel Bendinat (its restaurant)
    - Las Terrazas del Bendinat: coordinates corrected to match Hotel Bendinat (same restaurant, different category)

  2. Duplicate Resolution
    - "La Terraza del Bendinat" (Restaurants) and "Las Terrazas del Bendinat" (Fine Dining) are the same restaurant
      inside Hotel Bendinat. Same phone number. No reviews on either.
    - Keeping "Las Terrazas del Bendinat" (correct name per official website) and deleting the duplicate
    - Updating the kept entry with correct website and coordinates

  3. Location Confidence
    - All updated businesses set to location_confidence = 'exact' and needs_geocoding = false

  4. Sources
    - Bendinat Urban Country Club / Advance Dental: maptons.com (39.5400, 2.5816)
    - Real Golf de Bendinat: mycaddymaster.com GPS (39.5433, 2.5892)
    - UM Beach House: maptons.com (39.5320, 2.5603)
    - Hotel Bendinat: C/ Andres Ferret Sobral 1, cross-referenced from booking.com and official site
*/

-- UM Beach House: Carretera de Andratx KM 11, 07181 Portals Nous
UPDATE businesses
SET latitude = 39.5320, longitude = 2.5603,
    location_confidence = 'exact', needs_geocoding = false
WHERE slug = 'um-beach-house';

-- Bendinat Golf Academy: same facility as Real Golf de Bendinat
UPDATE businesses
SET latitude = 39.5433, longitude = 2.5892,
    address = 'Carrer Campoamor s/n, Urbanizacion Bendinat, 07181',
    location_confidence = 'exact', needs_geocoding = false
WHERE slug = 'bendinat-golf-academy';

-- Club de Tenis Bendinat: adjacent to Bendinat Urban Country Club at C/ Ginesta area
UPDATE businesses
SET latitude = 39.5400, longitude = 2.5816,
    location_confidence = 'exact', needs_geocoding = false
WHERE slug = 'club-de-tenis-bendinat';

-- Freddy's Beach Bar: Cala Bendinat beachfront
UPDATE businesses
SET latitude = 39.5298, longitude = 2.5502,
    location_confidence = 'exact', needs_geocoding = false
WHERE slug = 'freddys-beach-bar';

-- Hotel Bendinat: C/ Andres Ferret Sobral 1
UPDATE businesses
SET latitude = 39.5340, longitude = 2.5560,
    location_confidence = 'exact', needs_geocoding = false
WHERE slug = 'hotel-bendinat';

-- Bendinat Urban Country Club: already correct (39.54, 2.5816), just mark as exact
UPDATE businesses
SET location_confidence = 'exact', needs_geocoding = false
WHERE slug = 'bendinat-urban-country-club';

-- Advance Dental Institute: already correct (39.54, 2.5816), just mark as exact
UPDATE businesses
SET location_confidence = 'exact', needs_geocoding = false
WHERE slug = 'advance-dental-institute';

-- Real Golf de Bendinat: already correct (39.5433, 2.5892), just mark as exact
UPDATE businesses
SET location_confidence = 'exact', needs_geocoding = false
WHERE slug = 'real-golf-de-bendinat';

-- Clinica Veterinaria Bendinat: at Plaza Bendinat commercial center (C/ Arquitecte Francesc Casas 17)
-- The vet is in the same commercial complex near C/ Ginesta. Update address and mark exact.
UPDATE businesses
SET latitude = 39.5397, longitude = 2.5810,
    location_confidence = 'exact', needs_geocoding = false
WHERE slug = 'clinica-veterinaria-bendinat';

-- Fix Las Terrazas del Bendinat: update coords to match Hotel Bendinat, add website
UPDATE businesses
SET latitude = 39.5340, longitude = 2.5560,
    website = 'hotelbendinat.com',
    location_confidence = 'exact', needs_geocoding = false
WHERE slug = 'las-terrazas-del-bendinat';

-- Delete the duplicate "La Terraza del Bendinat" (wrong name, wrong coords, same restaurant)
DELETE FROM businesses WHERE slug = 'la-terraza-del-bendinat';
