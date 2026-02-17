/*
  # Add increment_view_count RPC function

  1. New Functions
    - `increment_view_count(business_uuid)` - Atomically increments the view_count column
      for a given business by 1
  
  2. Security
    - Function is accessible to all (anonymous + authenticated) since viewing a profile
      is a public action
    - Uses atomic SQL increment to prevent race conditions
*/

CREATE OR REPLACE FUNCTION increment_view_count(business_uuid uuid)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  UPDATE businesses
  SET view_count = COALESCE(view_count, 0) + 1
  WHERE id = business_uuid;
END;
$$;
