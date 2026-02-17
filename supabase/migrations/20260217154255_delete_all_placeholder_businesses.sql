/*
  # Remove All Placeholder Business Entries

  1. Action
    - Delete all business records where is_placeholder = true
    - These were temporary seed entries with generic names and no real data
    - All categories now have sufficient real business profiles

  2. Affected Categories (900 placeholder records total)
    - Golf Courses: 100 placeholders removed (12 real remain)
    - Fitness Centers: 100 placeholders removed (41 real remain)
    - Fine Dining: 100 placeholders removed (24 real remain)
    - Real Estate Agencies: 100 placeholders removed (25 real remain)
    - Boat Charters: 100 placeholders removed (20 real remain)
    - Yachting & Boat Rentals: 100 placeholders removed (22 real remain)
    - Tennis Clubs: 100 placeholders removed (16 real remain)
    - Property Management: 100 placeholders removed (20 real remain)
    - Nature & Outdoors: 100 placeholders removed (21 real remain)

  3. Safety
    - Only deletes records explicitly marked as placeholder
    - All real business profiles are unaffected
*/

DELETE FROM businesses WHERE is_placeholder = true;
