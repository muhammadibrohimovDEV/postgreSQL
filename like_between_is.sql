-- NULL and NOT NULL

SELECT * FROM my_contacts WHERE profession is NULL;

--  first_name | last_name | birthdate  | profession | interests 
-- ------------+-----------+------------+------------+-----------
--  Ali        | Valiyev   | 2000-06-05 |            | 

SELECT * FROM my_contacts WHERE profession is NOT NULL;

--  first_name  | last_name | birthdate  |   profession   |     interests     
-- -------------+-----------+------------+----------------+-------------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  John        | Doe       | 1995-10-12 | lawyer         | law , economy
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT
--  Tom         | McKeen    | 1994-10-12 | doctor         | dota, cs
--  Ali         | Holmatov  | 2006-11-12 | doctor         | sports , football

-- LIKE 

-- Oxiri shu tarzda tugashi kerak

SELECT * FROM my_contacts WHERE last_name LIKE '%ov';

--  first_name  | last_name | birthdate  |   profession   |     interests     
-- -------------+-----------+------------+----------------+-------------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT
--  Ali         | Holmatov  | 2006-11-12 | doctor         | sports , football

-- So'zning tarkibidan shu harf(lar) bo'lishi kerak

SELECT * FROM my_contacts WHERE last_name LIKE '%ov%';

--  first_name  | last_name | birthdate  |   profession   |     interests     
-- -------------+-----------+------------+----------------+-------------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT
--  Ali         | Holmatov  | 2006-11-12 | doctor         | sports , football

-- Boshi shunday boshlanishi kerak

SELECT * FROM my_contacts WHERE last_name LIKE 'ov%';

--  first_name | last_name | birthdate | profession | interests 
-- ------------+-----------+-----------+------------+-----------

-- Har xil turldagisi

SELECT * FROM my_contacts WHERE first_name LIKE 'T%m'; 

--  first_name | last_name | birthdate  | profession | interests  
-- ------------+-----------+------------+------------+------------
--  Tom        | McKeen    | 1994-10-12 | doctor     | dota, cs
--  Tim        | Cook      | 1960-03-04 | CEO        | technology

-- NOT LIKE turldagisi

SELECT * FROM my_contacts WHERE last_name NOT LIKE '%ov';

--  first_name | last_name | birthdate  | profession |   interests   
-- ------------+-----------+------------+------------+---------------
--  John       | Doe       | 1995-10-12 | lawyer     | law , economy
--  Ali        | Valiyev   | 2000-06-05 |            | 
--  Tom        | McKeen    | 1994-10-12 | doctor     | dota, cs
--  Tim        | Cook      | 1960-03-04 | CEO        | technology


-- BETWEEn intro

SELECT * FROM doughnouts_list WHERE price > 5 AND price < 9;

--  name  |  type  | price 
-- -------+--------+-------
--  mazza | creamy |  5.50
--  class | oily   |  5.80

-- ALTERNATIVE

SELECT * FROM doughnouts_list WHERE price BETWEEN 5 and 9;

--  name  |  type  | price 
-- -------+--------+-------
--  mazza | creamy |  5.50
--  class | oily   |  5.80

-- IN 

SELECT * FROM my_contacts WHERE profession = 'Data Scientist' or profession = 'doctor' or profession = 'CEO';

--  first_name  | last_name | birthdate  |   profession   |     interests     
-- -------------+-----------+------------+----------------+-------------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  Tom         | McKeen    | 1994-10-12 | doctor         | dota, cs
--  Ali         | Holmatov  | 2006-11-12 | doctor         | sports , football
--  Tim         | Cook      | 1960-03-04 | CEO            | technology

-- ALTERNATIVE

SELECT * FROM my_contacts WHERE profession IN ('Data Scientist' , 'doctor' , 'CEO');

--  first_name  | last_name | birthdate  |   profession   |     interests     
-- -------------+-----------+------------+----------------+-------------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  Tom         | McKeen    | 1994-10-12 | doctor         | dota, cs
--  Ali         | Holmatov  | 2006-11-12 | doctor         | sports , football
--  Tim         | Cook      | 1960-03-04 | CEO            | technolog




