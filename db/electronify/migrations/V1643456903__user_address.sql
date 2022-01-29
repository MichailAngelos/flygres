ALTER TABLE electronify.users_address
    ADD COLUMN name VARCHAR(50);

insert into electronify.users_address (id, address_1, address_2, city, postal_code, country, telephone, name)
values ('04ab814f-68e0-477a-a525-b281670d29ec', 'Kallistratous 3A', '','Limassol','3060',
        'Cyprus','97639337', 'Theodora');

delete from electronify.users_address where name = 'Theodora'