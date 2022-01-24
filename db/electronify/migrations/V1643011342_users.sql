delete from electronify.users where username = 'mgeorgiou';
delete from electronify.users where username = 'theodora';
delete from electronify.users where username = 'achaitidis';
delete from electronify.users where username = 'tgeorgiou';
delete from electronify.users where username = 'tchristou';
delete from electronify.users where username = 'mnapoleondos';
delete from electronify.users where username = 'dgeorgiou';
delete from electronify.users where username = 'echristou';
delete from electronify.users where username = 'kvenizelou';
delete from electronify.users where username = 'vgeorgiou';
delete from electronify.users where username = 'ngpcmaster';
delete from electronify.users where username = 'michailgeorgiou';
delete from electronify.users where username = 'theodorachristou';

update electronify.users set active = true where username = 'mgeorgiou';
update electronify.users set active = true where username = 'theodora';
update electronify.users set active = true where username = 'achaitidis';

-- alter table electronify.product_sale add constraint product_id foreign key (id) references electronify.product(id);
-- alter table electronify.users add constraint product_id foreign key (id) references electronify.product(id);
