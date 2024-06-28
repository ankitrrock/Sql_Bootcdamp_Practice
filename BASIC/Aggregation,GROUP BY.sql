/*Agreegate */
/* The main idea behind a aggregate function
	is to take multiple inputs and return
	single output.*/

/*
	Most common Aggregate Functions-:
	AVG()
	COUNT(
	MAX()
	MIN()
	SUM()
	ROUND()=== its take two argument(action,after_decimal)
*/

/* Aggregate function calls happen only
	in SELECT clouse or the HAVING clouse
*/

SELECT MIN(replacement_cost) FROM film;
SELECT MAX(replacement_cost) FROM film;
SELECT AVG(replacement_cost) FROM film;
SELECT SUM(replacement_cost) FROM film;


/*GROUP BY allows us to aggregate columnper some category
	SELECT category_col AGG(data_col)
	FROM table
	group by category_col
*/

SELECT * FROM payment;

SELECT customer_id FROM payment
GROUP BY customer_id;

SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY customer_id;

SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY customer_id;


/*• We have two staff members, with Staff IDs 1 and 2. 
	We want to give a bonus to the staff member that handled the most payments. 
	(Most in terms of number of payments processed, not total dollar amount).
  • How many payments did each staff member handle and who gets the bonus?
	*/

SELECT count(staff_id) 
FROM payment
WHERE staff_id=1 or staff_id= 2
GROUP BY staff_id;
;

/*
	Corporate HQ is conducting a study on the relationship between replacement cost
	and a movie MPAA rating (e.g. G, PG, R, etc...).
	What is the average replacement cost per MPAA rating?
	o Note: You may need to expand the AVG column to view correct results
*/

SELECT rating,AVG(replacement_cost) 
FROM film
GROUP BY rating;


/*	We are running a promotion to reward our top 5 customers with coupons.
	What are the customer ids of the top 5 customers by total spend?
*/

SELECT customer_id, SUM(amount) 
FROM payment
GROUP BY customer_id
ORDER BY SUM (amount) DESC
LIMIT 5	;