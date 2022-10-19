CREATE DATABASE new_database;
USE new_database;

create table customers
(
    id           int auto_increment primary key,
    name         varchar(255),
    surname      varchar(255),
    age          int,
    phone_number int
);
create table orders
(
    id int auto_increment primary key,
    date timestamp not null default now(),
    customer_id int references customers (id),
    product_name varchar(255),
    amount int
);

select product_name from orders
                             join customers c on c.id = orders.customer_id
where upper(c.name) = upper('alexey');