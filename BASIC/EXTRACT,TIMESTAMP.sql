/* Timestamp & EXTRACT */
/*
	• We've already seen that PostgreSQL can hold date and time information:
		。 TIME - Contains only time
		。 DATE - Contains only date
		。 TIMESTAMP Contains date and time
		。 TIMESTAMPTZ - Contains date, time, and timezone

	TYPE:
		TIMEZONE
		NOW()
		TIMEOFDAY()
		CURRENT_TIME
		CURRENT_DATE
*/
SHOW ALL;
SHOW TIMEZONE;
SELECT NOW();
SELECT CURRENT_TIME;
SELECT CURRENT_DATE;
SELECT TIMEOFDAY();

/*
EXTRACT():
	Allow to extract:-
		YEAR
		MONTH
		WEEK
		DAY
		QUARTER

	EXTRACT(YEAR FROM date_col)

*/


/*
AGE():
	Allow to extract age :-
		AGE(date_col)
*/


/*
TO_CHAR():
	Convert data type to text :-
		TO_CHAR(date_col,'mm-dd-yy')
*/


SELECT EXTRACT(YEAR FROM payment_date) 
AS my_year FROM payment;



