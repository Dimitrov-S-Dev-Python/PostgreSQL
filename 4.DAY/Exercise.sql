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
