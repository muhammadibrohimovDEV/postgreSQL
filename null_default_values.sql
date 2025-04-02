CREATE TABLE IF NOT EXISTS my_contacts
(
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE,
    profession VARCHAR(50),
    interests VARCHAR(100)
);

-- NULL qiymatli jadval

SELECT * FROM my_contacts;

--  first_name  | last_name | birthdate  |   profession   |   interests    
-- -------------+-----------+------------+----------------+----------------
--  Muhammadjon | Ibrohimov | 2006-11-12 | Data Scientist | sports , books
--  John        | Doe       | 1995-10-12 | lawyer         | law , economy
--  Dilshod     | Rahmonov  | 2006-05-08 | teacher        | ILETS , SAT
--  Ali         | Valiyev   | 2000-06-05 |                | 


--  NOT NULL va DEFAULT qiymatlarni e'lon qilsh

CREATE TABLE doughnouts_list
(
name VARCHAR(50) NOT NULL,
type VARCHAR(50) NOT NULL,
price NUMERIC(3,2) DEFAULT 1.00
);

-- NULL qiymatli o'zgaruvchi kirgzish xato
INSERT INTO doughnouts_list (name , price) VALUES('apple' , 3.00);

ERROR:  null value in column "type" of relation "doughnouts_list" violates not-null constraint
DETAIL:  Failing row contains (apple, null, 3.00).

-- To'g'ri tarzda kirgizish

INSERT INTO doughnouts_list (name , type , price) VALUES('apple', 'filled' , 3.00);
SELECT * FROM doughnouts_list;
--  name  |  type  | price 
-- -------+--------+-------
--  apple | filled |  3.00


-- DEFAULT qiymatni kirgamzslik
INSERT INTO doughnouts_list (name, type) VALUES('peach' , 'single toned');
SELECT * FROM doughnouts_list;
--  name  |     type     | price 
-- -------+--------------+-------
--  apple | filled       |  3.00
--  peach | single toned |  1.00

