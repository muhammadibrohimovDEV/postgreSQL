CREATE DATABASE IF NOT EXISTS example_db;

\c example_db;

CREATE TABLE IF NOT EXISTS my_contacts
(
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE,
    profession VARCHAR(50),
    interests VARCHAR(100)
);

-- columns == rows , commas , missing quotes(qo'shtirnoq)

-- INSERTING 1-usul

INSERT INTO my_contacts (first_name , last_name , birthdate , profession , interests)
VALUES('Muhammadjon' , 'Ibrohimov' , '2006-11-12' , 'Data Scientist' , 'sports , books');

INSERT INTO my_contacts (first_name , last_name , birthdate , profession , interests)
VALUES('John' , 'Doe' , '1995-10-12' , 'lawyer' , 'law , economy');

-- INSERTING 2-usul

INSERT INTO my_contacts VALUES ('Dilshod' , 'Rahmonov' , '2006-05-08' , 'teacher' , 'ILETS , SAT');

-- INSERTING 3-usul

INSERT INTO my_contacts (first_name , last_name , birthdate)
VALUES('Ali' , 'Valiyev' , '2000-06-05');