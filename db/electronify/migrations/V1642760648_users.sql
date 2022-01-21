UPDATE electronify.users SET password = 'c4ca4238a0b923820dcc509a6f75849b' WHERE id = 1;
UPDATE electronify.users SET password = 'c81e728d9d4c2f636f067f89cc14862c' WHERE id = 2;
UPDATE electronify.users SET password = 'eccbc87e4b5ce2fe28308fd9f2a7baf3' WHERE id = 3;
UPDATE electronify.users SET password = 'a87ff679a2f3e71d9181a67b7542122c' WHERE id = 4;
UPDATE electronify.users SET password = 'e4da3b7fbbce2345d7772b0674a318d5' WHERE id = 5;
UPDATE electronify.users SET password = '1679091c5a880faf6fb5e6087eb1b2dc' WHERE id = 6;
UPDATE electronify.users SET password = '8f14e45fceea167a5a36dedd4bea2543' WHERE id = 7;
UPDATE electronify.users SET password = 'c9f0f895fb98ab9159f51fd0297e236d' WHERE id = 8;
UPDATE electronify.users SET password = '45c48cce2e2d7fbdea1afc51c7c6ad26' WHERE id = 9;
UPDATE electronify.users SET password = 'd3d9446802a44259755d38e6d163e820' WHERE id = 10;

alter table electronify.product_sale add constraint product_id foreign key (id) references electronify.product(id);

UPDATE electronify.users SET active = false WHERE id = 8;
UPDATE electronify.users SET active = false WHERE id = 9;
