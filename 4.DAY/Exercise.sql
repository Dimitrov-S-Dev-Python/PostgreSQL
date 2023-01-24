--Task 1
-- UPPER, LOWER, LENGTH func
-- Find customers with first and last name (lower case) with char
-- more then 10, display email as well

SELECT
	LOWER(first_name),
	LOWER(last_name),
	LOWER(email)
	FROM customer
	WHERE LENGTH(first_name) > 10 OR LENGTH(last_name) >10

--Task 2
--LEFT, RIGHT
--Extract last 5 chars of the email address
--The email address always ends with .org
--Extract just the dir '.' from the email

SELECT
	RIGHT(email,5)
	FROM customer


SELECT
	LEFT(RIGHT(email, 4),1)
	FROM customer

--Task 3 Concatenate
--Create an anonymous vers of the email address
--like Name@text.org => N***@text.org


SELECT
	LEFT(email, 1) || '***'|| RIGHT(email,19)
	FROM customer

--Task 4 Position
--Extract first name from the email address and concatenate it with the last name.
--Should be in form:Last name, First name

SELECT
	last_name || ', ' || LEFT(email,POSITION('.' IN email) - 1)
	FROM customer
