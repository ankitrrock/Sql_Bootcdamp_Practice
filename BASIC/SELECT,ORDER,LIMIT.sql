SELECT * FROM payment;

SELECT * FROM payment
ORDER BY payment_date DESC;

SELECT * FROM payment
ORDER BY payment_date ASC;

SELECT * FROM payment
ORDER BY payment_date ASC
LIMIT 5;

SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5;

SELECT * FROM payment
WHERE amount !=0.00
ORDER BY payment_date DESC
LIMIT 5;

SELECT * FROM payment
LIMIT 1;

/*challenge
	We want to reward our first 10 paying customers'.
	 what are the custmer ids of the first 10 customers who 
	created a payment*/

/*solution */
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;


/*challenge
	A customer wants to quickly rent a video
	to watch over their short lunch break.
	what are the titles of the 5 shortest movies*/

/*bonus challenge
	If the previous customer watch any movies 
	that is 50 minutes or less in run time,
	how many options does she have */

/*solution */
SELECT title,length FROM film
ORDER BY length ASC
LIMIT 5;

/*bonus solution */
SELECT COUNT(title) FROM film;

SELECT COUNT(title) FROM film
WHERE length <=50;