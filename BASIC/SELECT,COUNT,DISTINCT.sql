/* Retrieve all the data from table */
SELECT * FROM actor;
SELECT * FROM film;


/* Retrieve given columns table data from Table */
SELECT first_name,last_name FROM actor;
SELECT film_id,title,length,rating FROM film;

/*Satuation */
		/* We want to send out a promotional email to our existing customers!*/

/*challenge */
		/*Use SELECT statement to grab the first and last names of every
		customer and their email address */

/*solution */
SELECT first_name,last_name,email FROM customer


/*Retrieve distinct value from given table */
SELECT DISTINCT(release_year)  FROM film;
SELECT DISTINCT(rental_rate)  FROM film;


/*Satuation */
	/*An Australian visitor isn't familiar with MPAA movie ratings */
	/*We want to know the types of ratings have in our databse */
	/*What ratings do we have available? */

/*challenge */
	/*Use what you've learned about SELECT DISTINCT to retrieve the
	distinct rating types our films could have in our database */

/*solution */
SELECT DISTINCT(rating) from film;

/*USES OF COUNT*/
	/*SELECT COUNT(name) FROM table_name
	SELECT COUNT(choise) FROM table_name;
	SELECT COUNT(*) FROM table_name;*/

/*COUNT combined with DISTINCT */

SELECT * FROM payment;
SELECT COUNT(*) FROM payment;
SELECT COUNT(amount) FROM payment;
SELECT DISTINCT amount FROM payment;
SELECT COUNT(DISTINCT amount) FROM payment;

