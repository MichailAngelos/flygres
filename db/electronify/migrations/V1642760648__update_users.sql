UPDATE electronify.users SET password = 'c4ca4238a0b923820dcc509a6f75849b' WHERE id = 'be8a9673-9fba-44a7-8547-a329a04acb2d';
UPDATE electronify.users SET password = 'c81e728d9d4c2f636f067f89cc14862c' WHERE id = 'e2ee76fd-be00-4f8b-83ad-e4ca90f08c8d';
UPDATE electronify.users SET password = 'eccbc87e4b5ce2fe28308fd9f2a7baf3' WHERE id = '4eb55625-6d47-4e26-96c7-158b2969507e';
UPDATE electronify.users SET password = 'a87ff679a2f3e71d9181a67b7542122c' WHERE id = 'e14f8006-560a-44c1-a91b-76357165f311';
UPDATE electronify.users SET password = 'e4da3b7fbbce2345d7772b0674a318d5' WHERE id = 'c0c60d6c-08ab-40de-89c4-9112dfa77859';
UPDATE electronify.users SET password = '1679091c5a880faf6fb5e6087eb1b2dc' WHERE id = '0a1d2b89-0966-4c7b-b8b0-9d3697717f6b';
UPDATE electronify.users SET password = '8f14e45fceea167a5a36dedd4bea2543' WHERE id = '6ff10cf6-06d6-478f-bae9-5ca3e11c5af0';
UPDATE electronify.users SET password = 'c9f0f895fb98ab9159f51fd0297e236d' WHERE id = '263a627b-2950-42ab-aea0-31e70e551b91';
UPDATE electronify.users SET password = '45c48cce2e2d7fbdea1afc51c7c6ad26' WHERE id = '1a5aedd3-2a39-4149-9eaa-c330f22fec54';
UPDATE electronify.users SET password = 'd3d9446802a44259755d38e6d163e820' WHERE id = 'e1813cb1-350e-4602-85dd-12c072e37658';

UPDATE electronify.users SET active = false WHERE id = '1a5aedd3-2a39-4149-9eaa-c330f22fec54';
UPDATE electronify.users SET active = false WHERE id = '263a627b-2950-42ab-aea0-31e70e551b91';

alter table electronify.users
ALTER COLUMN created_at TYPE VARCHAR(200);

alter table electronify.users
ALTER COLUMN id TYPE VARCHAR(50);

alter table electronify.users
    ALTER COLUMN username TYPE VARCHAR(50);

alter table electronify.users
    ALTER COLUMN password TYPE VARCHAR(200);



