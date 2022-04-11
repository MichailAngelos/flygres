ALTER TABLE electronify.users
    ADD COLUMN auth integer not null default 0;

update electronify.users set auth = 1 where username = 'mgeorgio';
update electronify.users set auth = 2 where username = 'theodora';
update electronify.users set auth = 2 where username = 'achaitidis';
update electronify.users set auth = 2 where username = 'michailangelosgeorgiou';

select * from electronify.users;