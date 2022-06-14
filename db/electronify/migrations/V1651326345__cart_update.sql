ALTER TABLE electronify.cart
    alter column created_at type varchar;

ALTER TABLE electronify.cart
    alter column deleted_at type varchar;

ALTER TABLE electronify.cart
    Add column product_id varchar(100) references electronify.product (id);

-- ALTER TABLE electronify.cart
--     drop column product_id;

update electronify.product set stock = 5, in_stock = false where id = 'f693ca8e-802a-4303-9dc4-f1fecab0e4c9';

select name,stock,in_stock from electronify.product where id = 'f693ca8e-802a-4303-9dc4-f1fecab0e4c9';