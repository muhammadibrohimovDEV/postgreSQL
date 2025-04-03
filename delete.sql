-- DELETING

SELECT * FROM my_contacts;

--  first_name  | last_name | birthdate  |   profession   |   interests
-- -------------+-----------+------------+----------------+----------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  John        | Doe       | 1995-10-12 | lawyer         | law , economy
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT
--  Ali         | Valiyev   | 2000-06-05 |                |
--  Tim         | Cook      | 1995-01-20 | doctor         | dota , cs
--  David       | Louice    | 1975-01-20 | doctor         | scince , cs
--  Iskandar    | Taymatov  | 1995-01-01 | cook           | gardening

DELETE FROM my_contacts WHERE first_name = 'Ali' and last_name = 'Valiyev';

DELETE FROM my_contacts WHERE first_name = 'Ali' OR last_name = 'Taymatov';

SELECT * FROM my_contacts;

--  first_name  | last_name | birthdate  |   profession   |   interests
-- -------------+-----------+------------+----------------+----------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  John        | Doe       | 1995-10-12 | lawyer         | law , economy
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT
--  Tim         | Cook      | 1995-01-20 | doctor         | dota , cs
--  David       | Louice    | 1975-01-20 | doctor         | scince , cs



