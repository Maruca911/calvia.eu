/*
  # Clean up misplaced businesses in Calvia Vila

  1. Removals
    - "Cecome Alaior" and "Gestio Alaior" - accountants in Alaior (Menorca), not Calvia
    - "Eroski Campos", "Lidl Campos", "Aldi Campos" - supermarkets in Campos (40km from Calvia)
    - "Wise" and "Starling Bank" - digital-only banks with no physical presence
    - "Fiduciary Wealth" and "Chorus Financial" - generic "Spain" address, not Calvia-specific

  2. Rationale
    - These businesses either exist in completely different towns/islands or have no physical
      location in the Calvia municipality. Including them creates misleading map pins.
    - Alaior is on the island of Menorca
    - Campos is in southeast Mallorca, ~40km from Calvia
    - Digital banks have no storefront to pin on a map

  3. No reviews exist on any of these entries
*/

DELETE FROM businesses
WHERE slug IN (
  'cecome-alaior',
  'gestio-alaior',
  'eroski-campos',
  'lidl-campos',
  'aldi-campos'
);

DELETE FROM businesses
WHERE address = 'Digital'
  AND area_id = (SELECT id FROM areas WHERE name = 'Calvia Vila');

DELETE FROM businesses
WHERE address = 'Spain'
  AND area_id = (SELECT id FROM areas WHERE name = 'Calvia Vila');
