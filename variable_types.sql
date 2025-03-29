-- 3 xil text turi mavjud

-- VARCHAR(50) - aniq belgilangan uzunlik va dinamik
VARCHAR(50) -- 'maktab' , 'hammom' , 'darslik, ot'

-- Text - chegarasi yo'q
TEXT -- 'I have been waiting for you for a long time.'

-- CHAR - statik va aniq belgilangan uznlik
CHAR(10) -- 'maktab    ' , 'yosh      ' , 'spiderman '

-- 3 xil INTEGER turi mavjud
INT -- -2_147_483_648 dan 2_147_483_648 gacha
SMALLINT -- -32_768 dan 32767 gacha
BIGINT -- -9223372036854775808 dan 9223372036854775807 gacha

SERIAL ; SMALLSERIAL ; BIGSERIAL -- INT bilan bir xil ammo avtomatik to'ldiriladi

NUMERIC -- sonlar precision
NUMERIC(5 , 2) -- 123.45 , 123.246 -> 123.25
NUMERIC(5) -- 12345.0
NUMERIC -- 123.6313 , 465.4321 , 132564

FLOAT - butun sonlar (qiyinroq)
REAL(4 bayt) 2313213.213
DOUBLE PRECISION(8 bayt)  321.321321

BOOLEAN -- TRUE or FALSE

TIME -- vaqt haqidagi
DATE -- faqatgina sana - 21.05.2025
TIME -- faqat vaqt - 10:05:23
TIMESTAMP -- ikkisi uchun ham 21.05.2025 10:05:23

CREATE TABLE example_table
(
    price NUMERIC(6,2),
    zip_code VARCHAR(10),
    comments TEXT,
    quantity INT,
    book_title VARCHAR(50),
    gender CHAR(1),
    meeting_time TIMESTAMP,
    is_married BOOLEAN
);