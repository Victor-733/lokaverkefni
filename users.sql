create database 1611012220_VEFlokaverkefni;
use 1611012220_VEFlokaverkefni;

-- ADMINS
create table admins (
    user_id int primary key auto_increment not null,
    username varchar(50) not null,
    pass varchar(50) not null
);

-- POSTS
create table posts (
    id int primary key auto_increment not null,
    title varchar(70) not null,
    story text not null,
    author varchar(50) not null,
    foreign key (id) references admins(user_id)
);

---- DROP COMMANDS ----
drop table admins;
drop table posts;
-----------------------

-- INSERT - ADMINS
insert into admins (username, pass)
values
    ("Victor_733", "cheater733");

select * from admins;
select * from posts;