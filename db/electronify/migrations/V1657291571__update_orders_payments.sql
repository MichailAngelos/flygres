-- drop table electronify.payment_methods;
-- drop table electronify.payment_details cascade;
-- drop table electronify.order_item;
drop table electronify.orders;

create table electronify.payment
(
    id      varchar(50) not null primary key,
    status  varchar(50) not null default 'Pending',
    amount  decimal     not null default 0.00,
    user_id varchar references electronify.users (id)
);

create table electronify.orders
(
    id         varchar(50) not null primary key,
    total      decimal     not null,
    status     varchar     not null default 'NotPaid',
    items      varchar[][] not null,
    created_at varchar     not null default '',
    user_id    varchar references electronify.users (id),
    address    varchar references electronify.users_address (id)
);

alter table electronify.payment
    add column order_id varchar(50) references electronify.orders (id);
alter table electronify.orders
    add column payment_id varchar(50) references electronify.payment (id);


UPDATE electronify.product
SET description = 'Sony release latest mobile launch is the Xperia Z4 Tablet LTE. The tablet was launched in March 2015. The tablet comes with a 10.10-inch display with a resolution of 2560 pixels by 1600 pixels. The Sony Xperia Z4 Tablet LTE is powered by 2GHz octa-core Qualcomm Snapdragon 810 processor and it comes with 3GB of RAM '
WHERE id = 'cf681c42-4ee8-4318-a1f0-56e17fa37bb9';
UPDATE electronify.product
set description ='Xbox is a gaming console brand developed and owned by Microsoft. The game console is capable of connecting to a television or other display media. Xbox provides realistic graphics for games.'
WHERE id = 'f693ca8e-802a-4303-9dc4-f1fecab0e4c9';
UPDATE electronify.product
set description='Beyond adding 5G, Apple has equipped the iPhone 12 family with its powerful new A14 Bionic processor, a Super Retina XDR display, a more durable Ceramic Shield front cover, and a MagSafe feature for more reliable wireless charging, and support for attachable accessories.'
WHERE id = 'ded32baf-1668-4f31-b5cd-2b4ef4ed24a6';
UPDATE electronify.product
set description='A mouse designed for gamers. Gaming mice have adjustable sensitivity, which is configurable as the number of dots per inch (DPI). The greater the DPI, the farther the cursor moves on screen with the same amount of mouse movement.'
WHERE id = '0f5107ee-c52c-47b9-b2e8-9263b5910c2b';
UPDATE electronify.product
set description ='The Asus ZenBook Pro 14 Duo, among other avante-garde laptops in Asus portfolio, is the reason why Asus is ranked as the world''s most innovative laptop brand'
WHERE id = '0a35976b-9bf5-4788-a373-908d29a17e20';
UPDATE electronify.product
set description='They make keyboards with rubber dome and scissor switches designed for office and mobile use and also have mechanical keyboards geared towards gaming.'
WHERE id = '222649da-4b87-4c89-9608-7528203628fc';
UPDATE electronify.product
SET description = 'Sony release latest mobile launch is the Xperia Z4 Tablet LTE. The tablet was launched in March 2015. The tablet comes with a 10.10-inch display with a resolution of 2560 pixels by 1600 pixels. The Sony Xperia Z4 Tablet LTE is powered by 2GHz octa-core Qualcomm Snapdragon 810 processor and it comes with 3GB of RAM '
WHERE id = 'ec1d16e8-818a-4294-8bbe-b968b3f12836';
UPDATE electronify.product
SET description = 'Sony release latest mobile launch is the Xperia Z4 Tablet LTE. The tablet was launched in March 2015. The tablet comes with a 10.10-inch display with a resolution of 2560 pixels by 1600 pixels. The Sony Xperia Z4 Tablet LTE is powered by 2GHz octa-core Qualcomm Snapdragon 810 processor and it comes with 3GB of RAM '
WHERE id = '43841a9b-77f0-4b48-bb66-d1d1958bece6';
UPDATE electronify.product
set description='MacBook Air is a thin, lightweight laptop from Apple. Because it is a full-sized notebook but only weighs three pounds, the laptop falls into a category that vendors are currently calling ultraportable.'
WHERE id = '4c33184d-766b-472c-89de-825b5d8889bd';
UPDATE electronify.product
set description='The PS4 is understated, unobtrusive, sleek, and elegant. The console''s form factor also makes a departure from what''s come before it, opting for a slanted, parallelogram design rather than a typical boxy or dome-shaped approach. The PS4 is even smaller and quieter than the PS3 launch box and the PS3 slim'
WHERE id = '3c0e58e7-442b-4348-aeee-d9d8870d0b60';
UPDATE electronify.product
SET description = 'Sony release latest mobile launch is the Xperia Z4 Tablet LTE. The tablet was launched in March 2015. The tablet comes with a 10.10-inch display with a resolution of 2560 pixels by 1600 pixels. The Sony Xperia Z4 Tablet LTE is powered by 2GHz octa-core Qualcomm Snapdragon 810 processor and it comes with 3GB of RAM '
WHERE id = '332a2604-c07e-11ec-9d64-0242ac120002';
UPDATE electronify.product
SET description = 'Sony release latest mobile launch is the Xperia Z4 Tablet LTE. The tablet was launched in March 2015. The tablet comes with a 10.10-inch display with a resolution of 2560 pixels by 1600 pixels. The Sony Xperia Z4 Tablet LTE is powered by 2GHz octa-core Qualcomm Snapdragon 810 processor and it comes with 3GB of RAM '
WHERE id = 'eadc4ca4-38d7-4071-9a48-14669d48fdbe';