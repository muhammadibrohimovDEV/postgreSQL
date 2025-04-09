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



example_db=# SELECT * FROM salary;
 id | amount | contact_id
----+--------+------------
  1 |  30000 |          1
  2 |    465 |          2
  3 |    950 |          3
  4 |    622 |          4
  5 |   1653 |          5
  6 |  22563 |          6
(6 rows)


example_db=# SELECT * FROM contacts;
 id | first_name  | last_name | birthdate  |       interests       | phone_number  | profession_id
----+-------------+-----------+------------+-----------------------+---------------+---------------
  1 | Muhammadjon | Ibrohimov | 2006-11-12 | data science, ai ,nlp | +998907774506 |             1
  2 | Muhammadjon | Ibrohimov | 2006-11-12 | data science, ai ,nlp | +998907774506 |             1
  3 | Tim         | Cook      | 1984-06-05 | cooking, football     | +998911234567 |             3
  4 | Kiki        | Coco      | 1999-08-25 | dota, cs              | +998911234567 |             6
  5 | Harvey      | Specter   | 2005-09-26 | python, js            | +998911234567 |             4
  6 | Joe         | Dought    | 1998-02-03 | full stack            | +998880084506 |             6
(6 rows)


example_db=# SELECT * FROM professions;
 id |   name
----+-----------
  1 | CEO
  2 | sportsman
  3 | cook
  4 | lawyer
  5 | economist
  6 | engineer
(6 rows)

CREATE TABLE interests
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    UNIQUE(name)
);

CREATE TABLE contact_interests
(
    id SERIAL PRIMARY KEY,
    contact_id INT NOT NULL REFERENCES contacts(id),
    interest_id INT NOT NULL REFERENCES interests(id)
);



SELECT * FROM contact_interests;
 id | contact_id | interest_id
----+------------+-------------
  1 |          1 |           1
  2 |          1 |           2
  3 |          2 |           1
  4 |          2 |           2
  5 |          3 |           9
  6 |          3 |           9
  7 |          4 |          10
  8 |          4 |           7
 10 |          5 |           5
 11 |          6 |           6
 12 |          6 |           5

