# +----------+             +-------------+
# |  users   |             |    ads      |
# +----------+             +-------------+
# | id       |<------,     | id          |
# | username |       `-----| user_id     | <-- foreign key to users table
# | email    |             | title       |
# | password |             | description |
# +----------+             +-------------+

use adlister_db;


drop table if exists users;

create table users
(
    id       INT UNSIGNED        NOT NULL AUTO_INCREMENT,
    username varchar(200) unique not null,
    email    varchar(200) unique not null,
    password varchar(500)         not null,
    primary key (id)
);

drop table if exists ads;

create table ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     int unsigned,
    title       varchar(200) not null,
    description varchar(200) not null,
    primary key (id),
    FOREIGN KEY (user_id)
        REFERENCES users (id)
);