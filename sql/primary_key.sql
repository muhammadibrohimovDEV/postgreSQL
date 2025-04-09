-- To'g'ri dizay qilish qoidalari
-- PRIMARY KEY - unique value

CREATE TABLE orders_two(
    order_id INT PRIMARY KEY,
    name VARChAR(50)
);

INSERT INTO orders_two VALUES (1 , 'first order');

INSERT INTO orders_two VALUES (2 , 'second order');

INSERT INTO orders_two VALUES (1 , 'third order');
-- ERROR:  duplicate key value violates unique constraint "orders_two_pkey"
-- DETAIL:  Key (order_id)=(1) already exists.


-- SERIAL
CREATE TABLE orders_t(
    order_id SERIAL PRIMARY KEY,
    order_name VARCHAR(50)
);

INSERT INTO orders_t (order_name) VALUES ('first order');

INSERT INTO orders_t (order_name) VALUES ('second order');

SELECT * FROM orders_t;
--  order_id |  order_name
-- ----------+--------------
--         1 | first order
--         2 | second order



