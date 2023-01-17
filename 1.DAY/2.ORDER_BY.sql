-- Task 1
-- Select customers from payment and order them by highest amount

SELECT
*
FROM payment
ORDER BY customer_id, amount DESC

-- Task 2
-- Select first name, last name and email and
-- Order the customer list by last name starting from 'Z'
-- and second criteria by first name also starting from 'Z'

SELECT
first_name,
last_name,
email
FROM customer
ORDER BY last_name DESC, first_name DESC

-- Alternative
SELECT
first_name,
last_name,
email
FROM customer
ORDER BY 2 DESC, 1 DESC
