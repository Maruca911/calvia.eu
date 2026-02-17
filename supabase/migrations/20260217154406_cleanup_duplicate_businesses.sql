/*
  # Clean Up Duplicate Business Entries

  1. Duplicates Found
    - Cappuccino: "Cappuccino Grand Cafe Puerto Portals" and "Cappuccino Puerto Portals" (both Restaurants, Portals Nous)
    - Flanigan: "Flanigan" (Fine Dining) and "Flanigan Puerto Portals" (Restaurants)
    - Tahini: "Tahini Puerto Portals" (Fine Dining) and "Tahini Sushi Bar & Restaurant" (Restaurants)
    - Ritzi: In Restaurants but should be Fine Dining

  2. Actions
    - Remove older/duplicate entries
    - Move Ritzi to Fine Dining category
*/

DELETE FROM businesses WHERE slug = 'cappuccino-grand-cafe-puerto-portals';

DELETE FROM businesses WHERE slug = 'flanigan-puerto-portals';

DELETE FROM businesses WHERE slug = 'tahini-sushi-bar';

UPDATE businesses 
SET category_id = '41b57b11-7e17-48fa-afaf-ab4124bc6805'
WHERE slug = 'ritzi-puerto-portals';
