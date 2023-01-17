-- Task 1
-- Select distinct name from table actor

SELECT
DISTINCT
first_name
FROM actor

-- Task 2
-- Select distinct name from table actor
-- Order by first name

SELECT
DISTINCT
first_name
FROM actor
ORDER BY first_name

-- Task 3
-- Select distinct ratings from film

SELECT
DISTINCT
rating
FROM film

-- Task 4
-- Select distinct ratings and rental duration from film

SELECT
DISTINCT
rating,
rental_duration
FROM film

-- Task 4
-- Select distinct the amount paid from payment, ordered by highest

SELECT
DISTINCT
amount
FROM payment
ORDER BY amount DESC
