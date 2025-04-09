-- ORDER BY
SELECT * FROM doughnouts_list ORDER BY price;

--  name  |     type     | price
-- -------+--------------+-------
--  peach | single toned |  1.00
--  apple | filled       |  3.00
--  karam | sweet        |  4.50
--  lemon | creamy       |  8.80


SELECT * FROM doughnouts_list ORDER BY type;

--  name  |     type     | price
-- -------+--------------+-------
--  lemon | creamy       |  8.80
--  apple | filled       |  3.00
--  peach | single toned |  1.00
--  karam | sweet        |  4.50

-- ORDER BY column DESC

SELECT * FROM doughnouts_list ORDER BY price DESC;

--  name  |     type     | price
-- -------+--------------+-------
--  lemon | creamy       |  8.80
--  karam | sweet        |  4.50
--  apple | filled       |  3.00
--  peach | single toned |  1.00

-- SELECT SUM(column) FROM table_name;
SELECT SUM(price) FROM doughnouts_list;
--   sum
-- -------
--  17.30

-- MIN
SELECT MIN(price) FROM doughnouts_list;
--  min
-- ------
--  1.00

-- MAX
SELECT MAX(price) FROM doughnouts_list;
--  max
-- ------
--  8.80

-- AVG (average)
SELECT AVG(price) FROM doughnouts_list;
--         avg
-- --------------------
--  4.3250000000000000

-- COUNT
 SELECT COUNT(price) FROM doughnouts_list;
--  count
-- -------
--      4

-- GROUP BY
SELECT type , MAX(price) FROM doughnouts_list GROUP BY type;
--      type     | max
-- --------------+------
--  filled       | 6.80
--  creamy       | 8.80
--  sweet        | 7.70
--  single toned | 1.00

DISTINCT

SELECT DISTINCT(name) FROM doughnouts_list;
--  name
-- -------
--  peach
--  mazza
--  lemon
--  karam
--  qovoq
--  apple

LIMIT 

SELECT * FROM doughnouts_list ORDER BY price DESC LIMIT 2;
--  name  |  type  | price
-- -------+--------+-------
--  peach | creamy |  9.90
--  lemon | creamy |  8.80