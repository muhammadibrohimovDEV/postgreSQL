\d my_contacts
--                       Table "public.my_contacts"
--    Column   |          Type          | Collation | Nullable | Default
-- ------------+------------------------+-----------+----------+---------
--  first_name | character varying(50)  |           |          |
--  last_name  | character varying(50)  |           |          |
--  birthdate  | date                   |           |          |
--  profession | character varying(50)  |           |          |
--  interests  | character varying(100) |           |          |



-- ALTER TABLE



ALTER TABLE my_contacts ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM my_contacts;

--  first_name  | last_name | birthdate  |   profession   |          interests          | id
-- -------------+-----------+------------+----------------+-----------------------------+----
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books              |  1
--  John        | Doe       | 1995-10-12 | lawyer         | law , economy               |  2
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT                 |  3
--  Tim         | Cook      | 1995-01-20 | doctor         | dota , cs                   |  4
--  David       | Louice    | 1975-01-20 | doctor         | scince , cs                 |  5
--  Bobur       | Jalolov   | 1994-08-09 | engineer       | tennis, football            |  6
--  Manuel      | Neuer     | 1980-04-05 | sportsman      | cooking, football, baseball |  7



ALTER TABLE my_contacts ADD COLUMN phone VARCHAR(50);

UPDATE my_contacts SET phone = '+998911232332';

SELECT * FROM my_contacts;

--  first_name  | last_name | birthdate  |   profession   |          interests          | id |     phone
-- -------------+-----------+------------+----------------+-----------------------------+----+---------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books              |  1 | +998911232332
--  John        | Doe       | 1995-10-12 | lawyer         | law , economy               |  2 | +998911232332
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT                 |  3 | +998911232332
--  Tim         | Cook      | 1995-01-20 | doctor         | dota , cs                   |  4 | +998911232332
--  David       | Louice    | 1975-01-20 | doctor         | scince , cs                 |  5 | +998911232332
--  Bobur       | Jalolov   | 1994-08-09 | engineer       | tennis, football            |  6 | +998911232332
--  Manuel      | Neuer     | 1980-04-05 | sportsman      | cooking, football, baseball |  7 | +998911232332



ALTER TABLE my_contacts RENAME TO contacts;

ALTER TABLE contacts RENAME phone TO phone_number;

SELECT * FROM contacts;

--  first_name  | last_name | birthdate  |   profession   |          interests          | id | phone_number
-- -------------+-----------+------------+----------------+-----------------------------+----+---------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books              |  1 | +998911232332
--  John        | Doe       | 1995-10-12 | lawyer         | law , economy               |  2 | +998911232332
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT                 |  3 | +998911232332
--  Tim         | Cook      | 1995-01-20 | doctor         | dota , cs                   |  4 | +998911232332
--  David       | Louice    | 1975-01-20 | doctor         | scince , cs                 |  5 | +998911232332
--  Bobur       | Jalolov   | 1994-08-09 | engineer       | tennis, football            |  6 | +998911232332
--  Manuel      | Neuer     | 1980-04-05 | sportsman      | cooking, football, baseball |  7 | +998911232332


ALTER TABLE contacts ALTER COLUMN phone_number TYPE VARCHAR(60);

\d contacts;

--                                         Table "public.contacts"
--     Column    |          Type          | Collation | Nullable |                 Default
-- --------------+------------------------+-----------+----------+-----------------------------------------
--  first_name   | character varying(50)  |           |          |
--  last_name    | character varying(50)  |           |          |
--  birthdate    | date                   |           |          |
--  profession   | character varying(50)  |           |          |
--  interests    | character varying(100) |           |          |
--  id           | integer                |           | not null | nextval('my_contacts_id_seq'::regclass)
--  phone_number | character varying(60)  |           |          |
-- Indexes:
--     "my_contacts_pkey" PRIMARY KEY, btree (id)


ALTER TABLE contacts ALTER COLUMN phone_number SET NOT NULL;

\d contacts;

--                                         Table "public.contacts"
--     Column    |          Type          | Collation | Nullable |                 Default
-- --------------+------------------------+-----------+----------+-----------------------------------------
--  first_name   | character varying(50)  |           |          |
--  last_name    | character varying(50)  |           |          |
--  birthdate    | date                   |           |          |
--  profession   | character varying(50)  |           |          |
--  interests    | character varying(100) |           |          |
--  id           | integer                |           | not null | nextval('my_contacts_id_seq'::regclass)
--  phone_number | character varying(60)  |           | not null |
-- Indexes:
--     "my_contacts_pkey" PRIMARY KEY, btree (id)


ALTER TABLE contacts ADD COLUMN nickname VARCHAR(50);

\d contacts;

--                                         Table "public.contacts"
--     Column    |          Type          | Collation | Nullable |                 Default
-- --------------+------------------------+-----------+----------+-----------------------------------------
--  first_name   | character varying(50)  |           |          |
--  last_name    | character varying(50)  |           |          |
--  birthdate    | date                   |           |          |
--  profession   | character varying(50)  |           |          |
--  interests    | character varying(100) |           |          |
--  id           | integer                |           | not null | nextval('my_contacts_id_seq'::regclass)
--  phone_number | character varying(60)  |           | not null |
--  nickname     | character varying(50)  |           |          |
-- Indexes:
--     "my_contacts_pkey" PRIMARY KEY, btree (id)


ALTER TABLE contacts DROP COLUMN nickname;

\d contacts;

--                                         Table "public.contacts"
--     Column    |          Type          | Collation | Nullable |                 Default
-- --------------+------------------------+-----------+----------+-----------------------------------------
--  first_name   | character varying(50)  |           |          |
--  last_name    | character varying(50)  |           |          |
--  birthdate    | date                   |           |          |
--  profession   | character varying(50)  |           |          |
--  interests    | character varying(100) |           |          |
--  id           | integer                |           | not null | nextval('my_contacts_id_seq'::regclass)
--  phone_number | character varying(60)  |           | not null |
-- Indexes:
--     "my_contacts_pkey" PRIMARY KEY, btree (id)

    