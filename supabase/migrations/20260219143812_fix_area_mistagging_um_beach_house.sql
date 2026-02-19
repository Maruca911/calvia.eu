/*
  # Fix area mistagging: UM Beach House

  1. Changes
    - Retag UM Beach House from Palmanova to Portals Nous
    - Address: Carretera de Andratx KM 11, 07181 Portals Nous
    - All sources confirm this is in Portals Nous near Puerto Portals

  2. Notes
    - Freddy's Beach Bar (Cala Bendinat) and Hotel Bendinat both have "Portals Nous" in their
      postal address but are geographically in the Bendinat area -- kept as-is
    - Elba Sunset Gym is on Carrer Torrenova which is the boundary of Torrenova/Magaluf -- kept as-is
*/

UPDATE businesses
SET area_id = '90784574-076e-471d-b61a-d18422d0f69f'
WHERE slug = 'um-beach-house'
  AND area_id = '611170cd-47c1-4060-a226-fad26428df6a';
