create table user_profile
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name varchar(30)  not null,
    last_name  varchar(30)  not null,
    primary key (id)
);

create table user
(
    id              INT UNSIGNED        NOT NULL AUTO_INCREMENT,
    email_id        varchar(100) unique not null,
    password        varchar(10)         not null,
    user_profile_fk int(10) unsigned,
    primary key (id),
    FOREIGN KEY (user_profile_fk)
        REFERENCES user_profile (id)

);



create table category
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(50)  not null unique,
    primary key (id)
);


drop table ads;

create table ads
(
    id              INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title           varchar(50),
    description     text,
    date_posted     date,
    category_fk     int unsigned,
    user_id_fk      int unsigned,
    primary key (id),
    FOREIGN KEY (user_id_fk)
        REFERENCES user (id),
    FOREIGN KEY (category_fk)
        references category (id)
);