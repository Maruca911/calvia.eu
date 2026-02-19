/*
  # Re-grant anon execute on increment_view_count

  The function is called from the business profile page for all visitors,
  including unauthenticated ones. Since view counts are a public metric
  (not sensitive data), anonymous users may call this function.

  The security fix from the previous migration still applies:
  - SECURITY INVOKER (not DEFINER) — runs as the calling user, subject to RLS
  - The UPDATE on businesses is protected by RLS; anon cannot update other fields

  This grant is intentional and acceptable for a public business directory.
*/

GRANT EXECUTE ON FUNCTION increment_view_count(uuid) TO anon;
