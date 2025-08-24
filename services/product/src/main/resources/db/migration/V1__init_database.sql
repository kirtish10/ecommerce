create table if not exists category (
    id          integer not null primary key,
    name        varchar(255) not null,
    description text,
);

create table if not exists product (
    id                  integer not null primary key,
    name                varchar(255) not null,
    description         text,
    avaialable_quantity double precision not null,
    price               NUMERIC(10, 2) not null,
    category_id         integer
                        constraint fk_category references category(id)
);

create SEQUENCE if not EXISTS category_id_seq increment by 50;
create SEQUENCE if not EXISTS product_id_seq increment by 50;