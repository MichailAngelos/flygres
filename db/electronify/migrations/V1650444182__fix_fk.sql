Alter table electronify.product_category
    drop column product_id;

-- ALTER TABLE electronify.users_address
--     Add column user_id varchar(100) references electronify.users (id);
-- ALTER TABLE electronify.shopping_session
--     Add column user_id varchar(100) references electronify.users (id);
-- ALTER TABLE electronify.product_stock
--     Add column product varchar(100) references electronify.product (id);
ALTER TABLE electronify.product_category
    Add column product_id varchar(100) references electronify.product (id);

-- ALTER TABLE electronify.product
--     Add column sale_id varchar(100) references electronify.product_sale (id);
-- ALTER TABLE electronify.product
--     Add column stock_id varchar(100) references electronify.product_stock (id);
ALTER TABLE electronify.product
    Add column product_category varchar(100) references electronify.product_category (id);

ALTER TABLE electronify.payment_methods
    Add column user_id varchar(100) references electronify.users (id);

ALTER TABLE electronify.orders
    Add column user_id varchar(100) references electronify.users (id);
ALTER TABLE electronify.orders
    Add column payment_id varchar(100) references electronify.payment_details (id);

ALTER TABLE electronify.order_item
    Add column order_id varchar(100) references electronify.orders (id);
ALTER TABLE electronify.order_item
    Add column payment_id varchar(100) references electronify.product (id);

ALTER TABLE electronify.cart
    Add column product_id varchar(100) references electronify.product (id);

ALTER TABLE electronify.cart
    Add column user_id varchar(100) references electronify.users (id);

ALTER TABLE electronify.product
    Add column image varchar(100) default '';