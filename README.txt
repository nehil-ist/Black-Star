BLACK STAR - setup

1. Create a free project at supabase.com.
2. Open messages-setup.sql, replace both copies of you@example.com with your own email,
   then paste it into Supabase > SQL Editor > New query and press Run.
3. Supabase > Authentication > Users > Add user: same email, a password, auto-confirm on.
   Then turn off new user sign-ups in the Authentication settings.
4. Supabase > Project Settings > API: copy the Project URL and the anon (public) key.
   Open index.html, search for SUPABASE_URL, and paste both between the quotes.
   Never use the service_role key.
5. Open index.html in your browser to test: send a message, then use the Owner link in the
   footer to sign in and open the Messages tab.
6. Put it online: drag index.html onto app.netlify.com/drop (or use GitHub Pages / Vercel).
