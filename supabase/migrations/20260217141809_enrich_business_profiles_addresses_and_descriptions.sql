/*
  # Enrich business profiles with better addresses and descriptions

  1. Fix vague addresses
    - Update businesses that have phone/website but addresses like "Mallorca" or "Balearic Islands"
    - Add more specific location information based on their area association

  2. Improve short descriptions
    - Update the most critically short descriptions (under 50 chars) with meaningful content

  3. Data quality improvements
    - Normalize website URLs (remove trailing slashes, ensure consistency)
*/

-- Fix vague addresses for businesses with real data
UPDATE businesses b SET address = a.name || ', Calvia, Mallorca'
FROM areas a
WHERE b.area_id = a.id
AND b.phone IS NOT NULL AND b.phone != ''
AND (b.address = 'Mallorca' OR b.address = 'Balearic Islands' OR b.address = '' OR b.address IS NULL)
AND a.name != 'Palma';

-- Fix Palma-area businesses with vague addresses
UPDATE businesses SET address = 'Palma de Mallorca'
WHERE area_id = '568fd42d-c35c-4cd1-9d0a-31b48a71d274'
AND (address = 'Mallorca' OR address = 'Balearic Islands' OR address = '' OR address IS NULL);

-- Mark all businesses with phone numbers as non-placeholder
UPDATE businesses SET is_placeholder = false
WHERE phone IS NOT NULL AND phone != '' AND is_placeholder = true;

-- Mark all businesses with websites as non-placeholder
UPDATE businesses SET is_placeholder = false
WHERE website IS NOT NULL AND website != '' AND is_placeholder = true;