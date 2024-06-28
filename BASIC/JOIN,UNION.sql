							/* Inner Join */

/*
	SELECT * FROM TABLE_A
	INNER JOIN TABLE_B 
	ON TABLEA.col_match=TABLEB.col_match

*/
SELECT * FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id;

SELECT payment_id,payment.customer_id FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;



							/* Full Outer Join */

/*
	SELECT * FROM TABLE_A
	FULL OUTER JOIN TABLE_B 
	ON TABLEA.col_match=TABLEB.col_match

*/

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id is null
OR payment.payment_id is null;



							/* Left Join */

/*
	SELECT * FROM TABLE_A
	LEFT JOIN TABLE_B 
	ON TABLEA.col_match=TABLEB.col_match

*/


SELECT film.film_id,title,inventory_id 
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id;

SELECT film.film_id,title,inventory_id 
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;



							/* Right Join */

/*
	SELECT * FROM TABLE_A
	RIGHT JOIN TABLE_B 
	ON TABLEA.col_match=TABLEB.col_match

*/


SELECT film.film_id,title,inventory_id 
FROM film
RIGHT JOIN inventory
ON inventory.film_id = film.film_id;

SELECT film.film_id,title,inventory_id 
FROM film
RIGHT JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;

							/* UNION */

/*
	SELECT * FROM TABLE_A
	UNOIN
	SELECT * FROM TABLE_B

*/