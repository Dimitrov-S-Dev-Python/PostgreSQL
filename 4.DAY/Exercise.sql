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
