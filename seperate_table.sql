-- Next rule is that every column should only contain one type info

SELECT DISTINCT profession from contacts;

--    profession
-- ----------------
--  sportsman
--  teacher
--  engineer
--  lawyer
--  Data Scientist
--  doctor

SELECT * FROM profession;

--  id |      name
-- ----+----------------
--   1 | sportsman
--   2 | teacher
--   3 | engineer
--   4 | lawyer
--   5 | data scientist
--   6 | doctor

SELECT * FROM contacts;

--  first_name  | last_name | birthdate  |          interests          | id | phone_number  | profession
-- -------------+-----------+------------+-----------------------------+----+---------------+------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | sports , books              |  1 | +998911232332 |          5
--  John        | Doe       | 1995-10-12 | law , economy               |  2 | +998911232332 |          4
--  Dilshod     | Rahmonov  | 2006-05-08 | ILETS , SAT                 |  3 | +998911232332 |          2
--  Tim         | Cook      | 1995-01-20 | dota , cs                   |  4 | +998911232332 |          6
--  David       | Louice    | 1975-01-20 | scince , cs                 |  5 | +998911232332 |          6
--  Bobur       | Jalolov   | 1994-08-09 | tennis, football            |  6 | +998911232332 |          3
--  Manuel      | Neuer     | 1980-04-05 | cooking, football, baseball |  7 | +998911232332 |          1
--  Donki       | Sheepov   |            |                             |  8 | +998909099095 |          6



ALTER TABLE contacts ADD COLUMN profession_id INT REFERENCES profession (id); -- Foreign key

SELECT * FROM contacts;


--  first_name  | last_name | birthdate  |          interests          | id | phone_number  | profession_id
-- -------------+-----------+------------+-----------------------------+----+---------------+---------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | sports , books              |  1 | +998911232332 |
--  John        | Doe       | 1995-10-12 | law , economy               |  2 | +998911232332 |
--  Dilshod     | Rahmonov  | 2006-05-08 | ILETS , SAT                 |  3 | +998911232332 |
--  Tim         | Cook      | 1995-01-20 | dota , cs                   |  4 | +998911232332 |
--  David       | Louice    | 1975-01-20 | scince , cs                 |  5 | +998911232332 |
--  Bobur       | Jalolov   | 1994-08-09 | tennis, football            |  6 | +998911232332 |
--  Manuel      | Neuer     | 1980-04-05 | cooking, football, baseball |  7 | +998911232332 |
--  Donki       | Sheepov   |            |                             |  8 | +998909099095 |
--  Kiki        | Koko      |            |                             |  9 | +998909099095 |


update contacts set profession_id = 15 where id = 3;
ERROR:  insert or update on table "contacts" violates foreign key constraint "contacts_profession_id_fkey"
DETAIL:  Key (profession_id)=(15) is not present in table "profession".





