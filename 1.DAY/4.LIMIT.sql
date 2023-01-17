-- Task 1
-- Select first name from actor, limit by 4

SELECT
first_name
FROM actor
LIMIT 4

-- Task 2
-- Select first name from actor, order by first name limit by 4

SELECT
first_name
FROM actor
ORDER BY first_name
LIMIT 4

-- Task 3
-- Find the last 10 rentals in

SELECT
*
FROM rental
ORDER BY rental_date DESC
LIMIT 10
