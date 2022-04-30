create table electronify.shopping_session
(
    id      varchar(50) not null,
    user_id varchar references electronify.users (id),
    login   varchar,
    logout  varchar default ''
);
