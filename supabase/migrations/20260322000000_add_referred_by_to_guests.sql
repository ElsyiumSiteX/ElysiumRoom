-- Add referred_by column to guests table for referral tracking.
-- Stores the name of the person who invited a guest (free-text, max 80 chars).
ALTER TABLE public.guests
  ADD COLUMN IF NOT EXISTS referred_by text;
