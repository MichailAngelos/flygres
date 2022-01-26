create or replace view public.v_active_users as
select * from electronify.users where active = true;
