-- Task 1 SELECT
-- list of: First_name, Last_Name, Email from customer.

SELECT first_name,
	   last_name,
	   email
	FROM customer

-- Task 2 ORDER BY

SELECT first_name,
		last_name
	FROM actor
	ORDER BY first_name (ASC, DESC)

SELECT *
	FROM payment
	ORDER BY customer_id, amount DESC

-- Order the customer list by last name, in case if the same name the order should be based on
--the first name also from Z - A

SELECT first_name,
	   last_name,
	   email
	FROM customer
	ORDER BY last_name DESC, first_name DESC

--Task 3 DISCTINCT

SELECT DISTINCT
		first_name
	FROM actor
	ORDER BY first_name


SELECT DISTINCT
		rating,
		rental_duration
	FROM films

-- Find the different prices that have been paid.
-- Order them from high to low

SELECT DISTINCT
		amount
	FROM payment
	ORDER BY amount DESC


-- Task 4 LIMIT

SELECT
		column_name_1,
		column_name_2
	FROM table_name
	ORDER BY column_name1
	LIMIT n


SELECT *
	FROM rental
	ORDER BY rental_date DESC
	LIMIT 10



--Task COUNT

SELECT
	COUNT (column_name ; *)
	FROM table_name
-- Nulls will be not counted

SELECT
	COUNT (DISTINCT irst_name)
	FROM actor


SELECT
	COUNT (*)
	FROM CUSTOMER

-- Daily Challenge

--1.Create a list of all distinct districts customers are from
--2.What is the latest rental date
--3.How many films the company have
--4.How many distinct last names of customers are there

-- Solution
--1.
SELECT DISTINCT district
	FROM address

--2.
SELECT rental_date
	FROM rental
	ORDER BY rental_date DESC
	LIMIT 1

--3.
SELECT COUNT(title)
	FROM film

--4.
SELECT COUNT(DISTINCT last_name)
	FROM customer
