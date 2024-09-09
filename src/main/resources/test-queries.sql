SELECT *
FROM customers;

SELECT *
FROM products;

SELECT *
FROM purchase;

ALTER TABLE customers
RENAME COLUMN first_name TO name;

SELECT *
FROM customers
WHERE first_name
LIKE 'Б%';

ALTER TABLE customers
ADD COLUMN date_of_birth INTEGER;

ALTER TABLE customers
DROP COLUMN date_of_birth;

SELECT description
FROM products
WHERE price > 100;

SELECT *
FROM products
ORDER BY price DESC;

SELECT first_name
FROM customers
WHERE id=7;

SELECT description
FROM products
JOIN purchase
ON id = product_id
WHERE customer_id = 9;

SELECT COUNT(*)
FROM customers
WHERE id > 6;

SELECT *
FROM purchase
WHERE date
BETWEEN '2020-06-06'
AND '2024-06-15'
ORDER BY date;

DELETE FROM purchase
WHERE customer_id=1;

SELECT first_name
FROM customers
WHERE LENGTH(first_name) = (SELECT(MAX(LENGTH(first_name))) FROM customers);