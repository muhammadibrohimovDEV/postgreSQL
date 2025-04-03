-- DELETING row 

DELETE FROM my_contacts WHERE first_name = 'Iskandar';

-- UPDATING row

UPDATE my_contacts SET interests = 'gardening' WHERE first_name = 'Iskandar';

example_db=# SELECT * FROM my_contacts;

--  first_name  | last_name | birthdate  |   profession   |   interests
-- -------------+-----------+------------+----------------+----------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  John        | Doe       | 1995-10-12 | lawyer         | law , economy
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT
--  Ali         | Valiyev   | 2000-06-05 |                |
--  Tim         | Cook      | 1995-01-20 | doctor         | dota , cs
--  David       | Louice    | 1975-01-20 | doctor         | scince , cs
--  Iskandar    | Taymatov  | 1999-08-09 | cook           | gardening




-- UPDATING rows

UPDATE doughnouts_list SET price = 4.20 , type = 'chocolated' WHERE name = 'apple';

example_db=# SELECT * FROM doughnouts_list;
--  name  |     type     | price
-- -------+--------------+-------
--  peach | single toned |  1.00
--  lemon | creamy       |  8.80
--  karam | sweet        |  4.50
--  mazza | filled       |  6.80
--  qovoq | sweet        |  7.70
--  peach | creamy       |  9.90
--  apple | chocolated   |  4.20



