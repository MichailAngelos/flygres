create or replace view public.v_get_user_cart as
select product_id,quantity from electronify.cart where user_id = 'dde3ac3c-01da-4989-96d7-57c45475951f';