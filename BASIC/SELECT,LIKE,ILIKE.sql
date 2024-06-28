/*  We've already been able to perform direct comparisons 
	against strings, such as: 
		。 WHERE first_name= 'John'
	But what if we want to match against a general pattern in a string?
		。 All emails ending in '@gmail.com' 
		。 All names that begin with an 'A' */


/*• The LIKE operator allows us to perform pattern matching
	against string data with the use of wildcard characters:
		o Percent %
			■ Matches any sequence of characters 
		o Underscore_
			■ Matches any single character  */



/*	• All names that begin with an 'A'
		。 WHERE name LIKE 'A%'
	• All names that end with an 'a'
		。 WHERE name LIKE '%a'
	Notice that LIKE is case-sensitive, we can use ILIKE which is case-insensitive  */

/*	• Using the underscore allows us to replace
	  just a single character
		o Get all Mission Impossible films
		o WHERE title LIKE 'Mission Impossible  */


/* You can use multiple underscores
	• Imagine we had version string codes 
	  in the format 'Version#A4', 'Version#B7', etc... 
	。 WHERE value LIKE 'Version# */

/* • We can also combine pattern matching operators 
	to create more complex patterns 
	。 WHERE name LIKE '_her%'
		■ Cheryl
		■ Theresa 
		■ Sherri */


SELECT * FROM customer
WHERE first_name LIKE 'J%';

SELECT count(*) FROM customer
WHERE first_name LIKE 'J%';

SELECT count(*) FROM customer
WHERE first_name LIKE 'J%';

SELECT count(*) FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'J%';

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name ILIKE 's%';

SELECT * FROM customer
WHERE first_name LIKE '%er%';

/*-single first s  */
SELECT * FROM customer
WHERE first_name LIKE '_er%';
