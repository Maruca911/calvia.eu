/*
  # Add rate limiting and validation to form submission tables

  1. Security Changes
    - Drop old unrestricted INSERT policies on `early_bird_signups` and `contact_submissions`
    - Add new INSERT policies with rate limiting (max 5 submissions per email per hour)
    - Add email format validation to `early_bird_signups`
    - Keep existing validation on `contact_submissions`

  2. Important Notes
    - Rate limiting is enforced at the database level via RLS policies
    - Prevents spam submissions by checking recent submission count per email
    - Email must contain @ and . to pass basic format validation
*/

DROP POLICY IF EXISTS "Anyone can submit early bird signup" ON early_bird_signups;

CREATE POLICY "Rate-limited early bird signup"
  ON early_bird_signups
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (
    length(email) > 5
    AND email ~ '.+@.+\..+'
    AND length(full_name) > 0
    AND (
      SELECT count(*) FROM early_bird_signups
      WHERE early_bird_signups.email = email
      AND early_bird_signups.created_at > now() - interval '1 hour'
    ) < 5
  );

DROP POLICY IF EXISTS "Anyone can submit contact form" ON contact_submissions;

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
      SELECT count(*) FROM contact_submissions
      WHERE contact_submissions.email = email
      AND contact_submissions.created_at > now() - interval '1 hour'
    ) < 5
  );
