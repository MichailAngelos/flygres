ALTER TABLE electronify.product_category
    ALTER COLUMN create_at TYPE varchar(100);

ALTER TABLE electronify.product_category
    ALTER COLUMN deleted_at TYPE varchar(100);

-- ALTER TABLE electronify.product_stock
--     ALTER COLUMN create_at TYPE varchar(100);
--
-- ALTER TABLE electronify.product_stock
--     ALTER COLUMN deleted_at TYPE varchar(100);
--
-- ALTER TABLE electronify.product
--     ALTER COLUMN created_at TYPE varchar(100);
--
-- ALTER TABLE electronify.product_sale
--     ALTER COLUMN deleted_at TYPE varchar(100);
--
-- ALTER TABLE electronify.product_sale
--     ALTER COLUMN create_at TYPE varchar(100);
--
-- select *
-- from electronify.product_sale;
--
-- INSERT INTO electronify.product_category (id, name, create_at, deleted_at,product_id)
-- VALUES ('1', 'Consoles', '2022-04-20 10:10:25-07', '', '332a2604-c07e-11ec-9d64-0242ac120002');
-- INSERT INTO electronify.product_stock (id, quantity, create_at, deleted_at)
-- VALUES ('332a2604-c07e-11ec-9d64-0242ac120002', 20, '2022-04-20 10:10:25-07', '');
--
-- ALTER TABLE electronify.product_sale
--     Add column product_id varchar(100) references electronify.product_stock (id);
-- ALTER TABLE electronify.product_sale
--     ADD CONSTRAINT product_stock foreign key (product_id) references electronify.product_stock (id);
--
-- INSERT INTO electronify.product_sale (id, name, discount, active, create_at, deleted_at, product_id)
-- VALUES ('332a2604-c07e-11ec-9d64-0242ac120002', 'PS5', 0, false, '2022-04-20 10:10:25-07',
--         '332a2604-c07e-11ec-9d64-0242ac120002');


INSERT INTO electronify.product_category(id, name, create_at, deleted_at)  values ('1','Consoles','2022-04-20 10:10:25-07','');
INSERT INTO electronify.product_category(id, name, create_at, deleted_at)  values ('2','PC','2022-04-20 10:10:25-07','');
INSERT INTO electronify.product_category(id, name, create_at, deleted_at)  values ('3','Electronics','2022-04-20 10:10:25-07','');
INSERT INTO electronify.product_category(id, name, create_at, deleted_at)  values ('4','Accessories','2022-04-20 10:10:25-07','');
INSERT INTO electronify.product (id, name, brand, price, on_sale, in_stock, created_at,product_category,sale,stock)
VALUES ('332a2604-c07e-11ec-9d64-0242ac120002', 'PS5', 'SONY', 800.0, false, true,'2022-04-20 10:10:25-07','1',0,20 );

ALTER table electronify.product
    add column sale integer;
ALTER table electronify.product
    add column stock integer;

-- drop table electronify.product_stock;
-- drop table electronify.product_sale;
