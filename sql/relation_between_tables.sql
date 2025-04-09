-- One to many - TABLE A dagi bitta qator TABLE B dagi bir nechta qatorga tegishli (profession bitta bosa ham kop contactga tegishli)
-- One to one - TABLE A dagi har bir qator TABLE B dagi alohida  bitta qatorga tegishlik (contactlarning har biri alohida salary oladi)
    -- FOREIGN KEY UNIQUE BO'LISHI KERAK one to one da

CREATE TABLE contact_salary(
    id SERIAL PRIMARY KEY,
    amount NUMERIC NOT NULL,
    contact_id INT REFERENCES contacts(id),
    UNIQUE(contact_id)
);

-- MANY to MANY - TABLE A dagi bitta qator TABLE B dagi ko'p qatorga tegishli bo'lishi mumkin yoki aksi


\d interests;


--                                    Table "public.interests"
--  Column |         Type          | Collation | Nullable |                Default
-- --------+-----------------------+-----------+----------+---------------------------------------
--  id     | integer               |           | not null | nextval('interests_id_seq'::regclass)
--  name   | character varying(50) |           |          |
-- Indexes:
--     "interests_pkey" PRIMARY KEY, btree (id)
--     "interests_name_key" UNIQUE CONSTRAINT, btree (name)

