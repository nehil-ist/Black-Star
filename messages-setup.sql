-- Run this once in Supabase: SQL Editor > New query > paste > Run.
-- Replace you@example.com with the email you'll use to sign in as the owner.

create table public.messages (
  id bigint generated always as identity primary key,
  body text not null check (char_length(body) between 1 and 500),
  created_at timestamptz not null default now()
);

alter table public.messages enable row level security;

-- Anyone (not signed in) can send a message, but cannot read any.
create policy "anyone can send"
  on public.messages for insert
  to anon, authenticated
  with check (true);

-- Only the owner can read messages.
create policy "owner can read"
  on public.messages for select
  to authenticated
  using ((auth.jwt() ->> 'email') = 'you@example.com');

-- Only the owner can delete messages.
create policy "owner can delete"
  on public.messages for delete
  to authenticated
  using ((auth.jwt() ->> 'email') = 'you@example.com');
