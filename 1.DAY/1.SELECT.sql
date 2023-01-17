-- Task 1
-- See all columns in table address
SELECT *
FROM address

-- Task 2
-- See only columns:
-- address, and district from Table address

SELECT
address,
district
FROM address

-- Task 3
-- Get the list from customer, with first name, last name
-- and customer's email address.
SELECT
first_name,
last_name,
email
FROM customer
