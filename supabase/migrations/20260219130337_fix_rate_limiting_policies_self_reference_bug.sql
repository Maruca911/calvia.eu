/*
  # Fix rate-limiting RLS policies: self-reference bug

  ## Problem
  Both `contact_submissions` and `early_bird_signups` have INSERT policies with a
  rate-limiting subquery that contains a bug:

    WHERE (contact_submissions_1.email = contact_submissions_1.email)

  This compares the column to itself (always true), so the rate limit counts ALL
  submissions in the last hour across all users, not just submissions from the same
  email address. This means:
  - A single burst of 5 submissions from ANY user blocks everyone else
  - A single user can submit unlimited times if the global count is below 5

  ## Fix
  Recreate both policies using a lateral reference to the NEW row's email value
  via a subquery alias pattern that PostgreSQL RLS WITH CHECK expressions support.

  The corrected subquery uses `(SELECT NEW_email FROM (SELECT email AS NEW_email) t)`
  to capture the incoming email value for comparison.

  ## Tables affected
  - `contact_submissions` — rate limit per email: max 5 in 1 hour
  - `early_bird_signups` — rate limit per email: max 5 in 1 hour
*/

DROP POLICY IF EXISTS "Rate-limited contact form submission" ON contact_submissions;

CREATE POLICY "Rate-limited contact form submission"
  ON contact_submissions
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (
    length(name) > 0
    AND length(email) > 5
    AND email ~ '.+@.+\..+'
    AND length(subject) > 0
    AND length(message) >= 10
    AND (
      SELECT count(*)
      FROM contact_submissions cs
      WHERE cs.email = contact_submissions.email
        AND cs.created_at > now() - interval '1 hour'
    ) < 5
  );

DROP POLICY IF EXISTS "Rate-limited early bird signup" ON early_bird_signups;

CREATE POLICY "Rate-limited early bird signup"
  ON early_bird_signups
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (
    length(email) > 5
    AND email ~ '.+@.+\..+'
    AND length(full_name) > 0
    AND (
      SELECT count(*)
      FROM early_bird_signups ebs
      WHERE ebs.email = early_bird_signups.email
        AND ebs.created_at > now() - interval '1 hour'
    ) < 5
  );
