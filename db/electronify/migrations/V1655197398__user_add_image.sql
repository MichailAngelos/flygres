ALTER TABLE electronify.users
    add column profile_image varchar default 'img/user-account.png';

update electronify.users set profile_image = 'img/mgeorgiou.jpg' where id = 'dde3ac3c-01da-4989-96d7-57c45475951f';