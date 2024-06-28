/*ORDER BY SYNTAX */
/*SELECT column_1,column_2..... 
FROM tab_name 
ORDER BY column_1 ASC/DEC */

SELECT * FROM customer;

SELECT * FROM customer
ORDER BY first_name DESC;

SELECT * FROM customer
ORDER BY first_name ASC;

SELECT * FROM customer
ORDER BY store_id;

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id;

SELECT store_id,first_name,last_name FROM customer
ORDER BY first_name;

SELECT first_name,last_name FROM customer
ORDER BY store_id DESC,first_name ASC;


