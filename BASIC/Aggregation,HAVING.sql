/* The HAVING clause allows us to filter after
	an aggregation has already taken place.
*/

/* Let's take a look back at one of our prevoius Example
	SELECT comapny,SUM(sales)
	FROM finance_table
	GROUP BY company;

	HAVING allows us to use the aggregate
	result as after along with a GROUP BY
*/


/*	We are launching a platinum service for our most loyal customers. 
We will assign platinum status to customers that have had 40 or 
more transaction payments. What customer_ids are eligible for platinum status?
*/

SELECT customer_id,SUM(amount) 
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;


/*
	We are launching a platinum service for our most loyal customers. 
	We will assign platinum status to customers that have had 40 or more transaction payments. 
	What customer_ids are eligible for platinum status?
*/

SELECT customer_id,count(amount) 
FROM payment
GROUP BY customer_id
HAVING COUNT(amount)>=40;


SELECT customer_id,count(*) 
FROM payment
GROUP BY customer_id
HAVING COUNT(*)>=40;
