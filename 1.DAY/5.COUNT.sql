-- Task 1
-- Count the rows in actor

SELECT
COUNT (first_name)
FROM actor

-- Task 2
-- Count distinct actor's name's

SELECT
COUNT(DISTINCT first_name)
FROM actor

-- Task 3
-- Count the customers we have

SELECT
COUNT (first_name)
FROM customer
-- Alternative -> count the NULL as well
SELECT
COUNT (*)
FROM customer
