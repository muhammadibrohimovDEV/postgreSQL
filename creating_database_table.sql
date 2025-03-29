CREATE DATABASE contacts_db;  -- database yaratish

\l  -- database larning ro'yxatini ko'rish uchun

\c conatcts_db; -- database ning ichiga kirish uchun

\d  -- table larning ro'yxatini ko'rish uchun

CREATE TABLE my_contacts  -- table yaratish
(
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    email VARCHAR(50),
    birthday DATE,
    profession VARCHAR(30),
    location VARCHAR(60),
    status VARCHAR(20),
    interests VARCHAR(200)
);

