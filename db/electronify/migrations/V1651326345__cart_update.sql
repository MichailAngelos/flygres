ALTER TABLE electronify.cart
    alter column created_at type varchar;

ALTER TABLE electronify.cart
    alter column deleted_at type varchar;

ALTER TABLE electronify.cart
    Add column product_id varchar(100) references electronify.product (id);

-- ALTER TABLE electronify.cart
--     drop column product_id;
