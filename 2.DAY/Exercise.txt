-- Task 1 WHERE

SELECT
	column_name1,
	column_name2
	FROM table_name
	WHERE condition

SELECT *
	FROM payment
	WHERE amount = 10.99

-- How many payments were made by customer wuth customer_id = 100

SELECT COUNT(*)
	FROM payment
	WHERE customer_id = 100


-- What is the last name of our customer with first name ERICA

SELECT first_name,
		last_name
	FROM customer
	WHERE first_name = 'ERICA'


SELECT column_name1,
		column_name2
		FROM table_name
		WHERE column_name1 IS NULL

-- How many rentals have not been returned yet(return_date is null)

SELECT COUNT(*)
	FROM rental
	WHERE return_date IS NULL

-- How many payment_ids with amount less than or equal to $2
-- include payment_id and the amount.


SELECT payment_id,
		amount
	FROM payment
	WHERE amount <= 2


--Task 2 AND/OR

SELECT
	column_name1,
	column_name2
	FROM table_name
	WHERE condition1
	AND condition2
	AND condition3

-- List of all the pyments of customer 322, 346 and 354
-- where the amount either less than $2 or grater then $10

SELECT *
	FROM payment
	WHERE
	(customer_id = 322 OR customer_id = 346 OR customer_id = 354)
	AND
	(amount <= 2 OR amount > 10)
	ORDER BY customer_id,
			amount DESC


--Task 3 BETWEEN

SELECT *
	FROM rental
	WHERE rental_date BETWEEN '2005-05-24' AND '2005-05-26'


--How many payments have been made on January 26 and 27th 2020
-- with amount between 1.99 and 3.99

SELECT COUNT(*)
	FROM payment
	WHERE amount BETWEEN 1.99 AND 3.99
	AND
	payment_date BETWEEN '2020-01-26' AND '2020-01-28'



--Task 4 IN

--There have been 6 complains of customers about their
--payments
-- customer_id 12,25,67,93,124,234
--The payments are all the amounts of these customers
--with amounts 4.99,7.99,9.99 in January 2020


SELECT COUNT(*)
	FROM payment
	WHERE customer_id IN (12,25,67,93,124,234)
	AND
	amount IN (4.99, 7.99, 9.99)
	AND payment_date BETWEEN ('2020-01-01') AND ('2020-02-01')


--Task 5 LIKE

--Used to filter by matching against pattern
_ any single character
% any sequence of characters



SELECT
	FROM actor
	WHERE first_name LIKE 'A%'

ILIKE -> case insensitive

--How many movies are there that contain the 'Documentary' in
--the description


SELECT COUNT(*)
	FROM film
	WHERE description LIKE '%Documentary%'

--How many customers are there with first name that is 3 letters long
-- and either an 'X' or a 'Y' as a las letter in the last name

SELECT *
	FROM customer
	WHERE LENGTH(first_name) = 3
	-- WHERE first_name LIKE '___'
	AND
	(RIGHT(last_name, 1) = 'X' or RIGHT(last_name,1) = 'Y')
-- last_name LIKE '%Y' OR last_name LIKE '%X'


--Task 6 Aliases AS

-- Daily Challenge
--1.How many movies are there that contain 'Saga'
--in the description and where the Title starts either
--with 'A' or ends with 'R'
-- Use the alias 'no_of_movies'

SELECT COUNT(*) AS no_of_movies
	FROM film
	WHERE description LIKE '%Saga%'
	AND
	(title LIKE 'A%' OR title LIKE '%R')

--2.Create a list of all customer where the first name
-- contains 'ER' and has an 'A' as the second letter
-- Order the result by last name DESC

SELECT *
	FROM customer
	WHERE first_name LIKE '%ER%'
	AND first_name LIKE '_A%'
	ORDER BY last_name DESC

--3.How many payments are there where the amount is either 0
-- or is between 3.99 and 7.99 and in the same time has
-- was on 2020-05-01

SELECT COUNT(*)
	FROM payment
	WHERE (amount = 0 OR amount BETWEEN 3.99 AND 7.99)
	AND
	payment_date BETWEEN('2020-05-01') AND ('2020-05-02')
