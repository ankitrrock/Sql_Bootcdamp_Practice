/* IN */
/* The general syntax is----- value IN (option_1,option_2,..)*/

/* Example Query
	SELECT color FROM table_name
	WHERE color in ('red','blue','green')*/


SELECT DISTINCT(amount) FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT count(amount) FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT count(amount) FROM payment
WHERE amount  NOT IN (0.99,1.98,1.99);

SELECT * FROM customer
WHERE first_name IN ('John','Jake','Julie');

