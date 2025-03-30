-- Comparisons with numeric formed items

-- 1. Equal (=)

SELECT * FROM doughnouts_list WHERE price = 3.00;

--  name  |  type  | price 
-- -------+--------+-------
--  apple | filled |  3.00

-- 2. Not Equal (!= , <>)

SELECT * FROM doughnouts_list WHERE price != 3.00;

--  name  |     type     | price 
-- -------+--------------+-------
--  peach | single toned |  1.00
--  mazza | creamy       |  5.50
--  class | oily         |  5.80

-- 3. Greater than

SELECT * FROM doughnouts_list WHERE price > 3.00;

--  name  |  type  | price 
-- -------+--------+-------
--  mazza | creamy |  5.50
--  class | oily   |  5.80

-- 4. Lower than 

SELECT * FROM doughnouts_list WHERE price < 3.00;

--  name  |     type     | price 
-- -------+--------------+-------
--  peach | single toned |  1.00

-- 5. Lower or Equal

SELECT * FROM doughnouts_list WHERE price <= 3.00;

--  name  |     type     | price 
-- -------+--------------+-------
--  apple | filled       |  3.00
--  peach | single toned |  1.00

-- 5. Greater or Equal

SELECT * FROM doughnouts_list WHERE price >= 3.00;

--  name  |  type  | price 
-- -------+--------+-------
--  apple | filled |  3.00
--  mazza | creamy |  5.50
--  class | oily   |  5.80


-- Comaprisons with text formed items (alphabet)

SELECT * FROM doughnouts_list WHERE type > 'f';

--  name  |     type     | price 
-- -------+--------------+-------
--  apple | filled       |  3.00
--  peach | single toned |  1.00
--  class | oily         |  5.80

