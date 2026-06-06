-- Store door check-in time directly on the guest row instead of a shared
-- JSON blob in the config table. This allows atomic per-guest updates and
-- lets external clients (e.g. Apple Shortcuts) check in a guest with a
-- single PATCH call without needing a read-modify-write cycle.
ALTER TABLE public.guests
  ADD COLUMN IF NOT EXISTS checked_in_at timestamptz;
