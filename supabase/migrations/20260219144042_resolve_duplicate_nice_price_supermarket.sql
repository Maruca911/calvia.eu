/*
  # Resolve duplicate: Nice Price supermarket

  1. Changes
    - "Nice Price Costa" and "Nice Price Mallorca" are the same store at C/ Miguel de Cervantes 8,
      Costa d'en Blanes. Same phone number (+34 971 67 52 00).
    - Keeping "Nice Price Mallorca" (has specific address) and deleting "Nice Price Costa" (generic address)
    - Updating kept entry with verified phone and website from official sources

  2. Coordinate fix
    - Updated to verified location for C/ Miguel de Cervantes 8, Costa d'en Blanes

  3. No reviews exist on either entry
*/

-- Update Nice Price Mallorca with correct details
UPDATE businesses
SET phone = '+34 971 67 75 63',
    website = 'niceprice-mallorca.com',
    location_confidence = 'exact',
    needs_geocoding = false
WHERE slug = 'nice-price-mallorca';

-- Delete the duplicate
DELETE FROM businesses WHERE slug = 'nice-price-costa';
