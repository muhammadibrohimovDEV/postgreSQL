INSERT INTO my_contacts (first_name, last_name, birthdate, profession, interests) VALUES('Tom', 'McKeen' , '1994-10-12', 'doctor', 'dota, cs');

-- Ma'lumotlarni chiqarish

SELECT * FROM my_contacts;

--  first_name  | last_name | birthdate  |   profession   |   interests    
-- -------------+-----------+------------+----------------+----------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  John        | Doe       | 1995-10-12 | lawyer         | law , economy
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT
--  Ali         | Valiyev   | 2000-06-05 |                | 
--  Tom         | McKeen    | 1994-10-12 | doctor         | dota, cs

-- Maxsus shartli ravishda chiqarish

SELECT * FROM my_contacts WHERE first_name = 'Muhammadjon';

--  first_name  | last_name | birthdate  |   profession   |   interests    
-- -------------+-----------+------------+----------------+----------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books

SELECT * FROM my_contacts WHERE birthdate > '2000-01-01';

--  first_name  | last_name | birthdate  |   profession   |   interests    
-- -------------+-----------+------------+----------------+----------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT
--  Ali         | Valiyev   | 2000-06-05 |                | 

-- Faqatgina kerakli ustunlarni chiqarish

SELECT first_name, last_name, birthdate FROM my_contacts;

--  first_name  | last_name | birthdate  
-- -------------+-----------+------------
--  Muhammadjon | Ibrohimov | 2006-11-12
--  John        | Doe       | 1995-10-12
--  Dilshod     | Rahmonov  | 2006-05-08
--  Ali         | Valiyev   | 2000-06-05
--  Tom         | McKeen    | 1994-10-12

