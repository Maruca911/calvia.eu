/*
  # Add index on businesses.slug column

  1. Performance Improvement
    - Add unique index on `businesses.slug` for fast lookups
    - Business profile pages query by slug, which was doing a sequential scan
    - This index makes slug lookups O(log n) instead of O(n)
*/

CREATE UNIQUE INDEX IF NOT EXISTS idx_businesses_slug ON businesses(slug);
