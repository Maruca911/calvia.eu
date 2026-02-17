/*
  # Seed missing business coordinates from area locations

  1. Changes
    - Updates all businesses that have latitude=0 AND longitude=0
    - Sets their coordinates based on their parent area's lat/lng
    - Adds a small random offset (up to ~200m) to each business so markers
      do not stack on the exact same point
    - Only affects businesses linked to an area that has valid coordinates

  2. Impact
    - ~535 businesses will gain valid map coordinates
    - These businesses will now appear on the interactive map page
*/

UPDATE businesses b
SET
  latitude  = a.latitude  + (random() - 0.5) * 0.004,
  longitude = a.longitude + (random() - 0.5) * 0.004
FROM areas a
WHERE b.area_id = a.id
  AND b.latitude = 0
  AND b.longitude = 0
  AND a.latitude != 0
  AND a.longitude != 0;
