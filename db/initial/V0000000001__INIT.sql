
 create table electronify.users (
	id bigserial not null constraint users_pk primary key,
	username varchar(50) not null,
	password varchar(50) not null,
	email varchar(50) not null,
	telephone integer not null,
	created_at timestamp not null,
	active boolean default true not null
	);

create table electronify.users_address (
    id bigserial not null constraint users_address_pk primary key,
    constraint user_id foreign key (id) references electronify.users(id),
    address_1 varchar(50) not null,
    address_2 varchar(50) default null,
    city varchar(50) not null,
    postal_code varchar(50) not null,
    country varchar(50) not null,
    telephone varchar(50)
);

create table electronify.payment_methods (
    id bigserial not null constraint payment_methods_pk primary key,
    constraint user_id foreign key (id) references electronify.users(id),
    payment_type varchar(50) not null default 'Visa',
    card_number bigserial not null,
    expiration_date date not null,
    cvv integer not null
);

create table electronify.product (
    id bigserial not null constraint product_pk primary key,
    name varchar(50) not null,
    brand varchar(50) not null,
    price decimal not null,
    on_sale boolean default false not null,
    in_stock boolean default true not null,
    created_at timestamp not null,
    constraint category_id foreign key (id) references electronify.product_category(id),
    constraint stock_id foreign key (id) references electronify.product_stock(id),
    constraint sale_id foreign key (id) references electronify.product_sale(id)
);

create table electronify.product_category(
    id bigserial not null constraint product_category_pk primary key,
    name varchar(50) not null,
    create_at timestamp not null,
    deleted_at timestamp default null
);

create table electronify.product_stock(
    id bigserial not null constraint product_stock_pk primary key,
    quantity integer not null default 0,
    create_at timestamp not null,
    deleted_at timestamp default null
);

create table electronify.product_sale(
    id bigserial not null constraint product_sale_pk primary key,
    constraint user_id foreign key (id) references electronify.users(id),
    name varchar(50) not null,
    discount decimal not null,
    active boolean default false not null,
    create_at timestamp not null,
    deleted_at timestamp default null
);

create table electronify.shopping_session(
    id bigserial not null constraint shopping_session_pk primary key,
    constraint user_id foreign key (id) references electronify.users(id),
    total decimal not null default 0
 );

create table electronify.cart(
    id bigserial not null constraint product_sale_pk primary key,
    constraint session_id foreign key (id) references electronify.shopping_session(id),
    constraint product_id foreign key (id) references electronify.product(id),
    quantity decimal not null,
    created_at timestamp not null,
    deleted_at timestamp default null
);

create table electronify.order_item(
    id bigserial not null constraint order_item_pk primary key,
    constraint order_id foreign key (id) references electronify.orders(id),
    constraint product_id foreign key (id) references electronify.product(id),
    quantity decimal not null,
    executed boolean default false not null,
    created_at timestamp not null
);

create table electronify.orders(
    id bigserial not null constraint orders_pk primary key,
    constraint user_id foreign key (id) references electronify.users(id),
    total decimal not null,
    constraint payment_id foreign key (id) references electronify.payment_details(id),
    created_at timestamp not null,
    executed_at timestamp default null
);

create table electronify.payment_details(
    id bigserial not null constraint payment_details_pk primary key,
    order_id integer not null,
    amount decimal not null,
    provider varchar(50) not null,
    status varchar(50) not null default 'Pending',
    created_at timestamp not null,
    executed_at timestamp default null
);