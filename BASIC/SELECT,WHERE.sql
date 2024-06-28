SELECT * FROM customer;

SELECT * FROM customer 
WHERE first_name='Jared';

SELECT * FROM film
where rental_rate>4;

SELECT * FROM film
where rental_rate>4 AND replacement_cost >=19.99;

SELECT * FROM film
where rental_rate>4 AND replacement_cost >=19.99 AND rating='R';

SELECT title FROM film
where rental_rate>4 AND replacement_cost >=19.99 AND rating='R';

SELECT count(title) FROM film
where rental_rate>4 AND replacement_cost >=19.99 AND rating='R';

SELECT count(*) FROM film
where rating='R' OR rating='PG-13';

SELECT count(*) FROM film
where rating !='R';

/*Satuation 
	How many customers have the first name Jared */
/*Instead OF 
	Use SELECT WHERE to find'Jared
	the first_name column in the customer table*/

/*solution */
SELECT COUNT(first_name) FROM customer
where first_name='Jared';

/*challenge 
	A customer forget their wallet at our store! We need track 
	down their email to inform them
	What is the email customer with their name is Nancy Thomas? */

/*solution */
SELECT email FROM customer
WHERE first_name='Nancy' AND last_name='Thomas';

/*challenge
	A customer want's to know What the movie "Outlaw Hanky" is about.
	Could you give them the desctiption for the movie "Outlaw Hanky"*/

/*solution */
SELECT description FROM film 
WHERE title='Outlaw Hanky';

/*challenge
	A customer is late on their movie return, and we've mailed them a 
	letter to their address at '259 Ipoh Drive'.we should
	also call them on the phone to let them know.
	Can you get the phone number for the customer who
	lives at '259 Ipoh Drive'?*/
/*solution */

SELECT * from address;
SELECT phone from address
WHERE address='259 Ipoh Drive';
