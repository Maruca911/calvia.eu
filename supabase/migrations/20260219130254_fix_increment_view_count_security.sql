/*
  # Fix increment_view_count function security

  ## Problem
  The `increment_view_count` function was created as SECURITY DEFINER, which means it
  runs with the privileges of the function owner (postgres/superuser), bypassing RLS.
  It was also executable by the `anon` role, meaning any unauthenticated user could
  call it via the Supabase RPC endpoint to arbitrarily inflate view counts on any business.

  ## Changes
  1. Drop and recreate `increment_view_count` as SECURITY INVOKER so it runs with the
     caller's privileges and is subject to RLS on the businesses table.
  2. Revoke EXECUTE from `anon` — only `authenticated` users can increment view counts.
     This matches the intended use case: the function is called from business profile pages
     which any visitor can see, but the RPC call itself should be rate-limited to signed-in
     users to prevent trivial abuse.

  NOTE: If you want anonymous visitors to still increment view counts (acceptable for a
  public directory), change the GRANT below to include `anon`. However the function should
  remain SECURITY INVOKER so it cannot bypass RLS policies on the businesses table.
*/

DROP FUNCTION IF EXISTS increment_view_count(uuid);

CREATE OR REPLACE FUNCTION increment_view_count(business_uuid uuid)
RETURNS void
LANGUAGE plpgsql
SECURITY INVOKER
AS $$
BEGIN
  UPDATE businesses
  SET view_count = COALESCE(view_count, 0) + 1
  WHERE id = business_uuid;
END;
$$;

REVOKE ALL ON FUNCTION increment_view_count(uuid) FROM PUBLIC;
REVOKE EXECUTE ON FUNCTION increment_view_count(uuid) FROM anon;
GRANT EXECUTE ON FUNCTION increment_view_count(uuid) TO authenticated;
