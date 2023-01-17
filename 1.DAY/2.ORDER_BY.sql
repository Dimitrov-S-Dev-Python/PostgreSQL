-- Task 1
-- Select customers from payment and order them by highest amount
SELECT
*
FROM payment
ORDER BY customer_id, amount DESC

-- Task 2
-- Order the customer list by last name starting from 'Z'
-- and second criteria by first name also starting from 'Z'
SELECT
*
FROM customer
ORDER BY last_name DESC, first_name DESC
