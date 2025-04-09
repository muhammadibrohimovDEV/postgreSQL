-- OR 

SELECT * FROM my_contacts WHERE profession = 'doctor' OR profession = 'doctor';

--  first_name | last_name | birthdate  | profession |     interests     
-- ------------+-----------+------------+------------+-------------------
--  Tom        | McKeen    | 1994-10-12 | doctor     | dota, cs
--  Ali        | Holmatov  | 2006-11-12 | doctor     | sports , football

SELECT * FROM my_contacts WHERE profession = 'doctor' OR birthdate > '2000-01-01';

--  first_name  | last_name | birthdate  |   profession   |   interests    
-- -------------+-----------+------------+----------------+----------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT
--  Ali         | Valiyev   | 2000-06-05 |                | 
--  Tom         | McKeen    | 1994-10-12 | doctor         | dota, cs


-- AND

SELECT * FROM my_contacts WHERE profession = 'doctor' and birthdate < '2000-01-01';

--  first_name | last_name | birthdate  | profession | interests 
-- ------------+-----------+------------+------------+-----------
--  Tom        | McKeen    | 1994-10-12 | doctor     | dota, cs

