--Task 1
-- Aggregated functions
-- SUM(), AVG(),MIN(),MAX(),COUNT()
--Min,Max, Average(rounded), Sum of the replacement cost of the films

SELECT
	MIN(replacement_cost) AS Min,
	MAX(replacement_cost) AS Max,
	ROUND(AVG(replacement_cost),2) AS Average,
	SUM(replacement_cost)
	FROM film

--Task 2 Grouping GROUP BY
--Which of 2 employees (staff_id) is responcible for more payments.
--How does the amount change if u dont consider amounts = to 0

SELECT
	staff_id,
	SUM(staff_id),
	COUNT(*)
	FROM payment
	GROUP BY staff_id

SELECT
	staff_id,
	SUM(staff_id),
	COUNT(*)
	FROM payment
	WHERE amount != 0
	GROUP BY staff_id

--Task 3 GROUP BY multiple columns

SELECT
	staff_id,
	customer_id,
	SUM(staff_id),
	COUNT(*)
	FROM payment
	GROUP BY staff_id,customer_id

--There are two competitions between 2 employees
--Which employee had the highest sels amount in a single day
--Which employees had the most sales in a single day
--(not counting payments with amount = 0)

SELECT
	staff_id,
	DATE(payment_date),
	SUM(amount),
	COUNT(*)
	FROM payment
	GROUP BY staff_id, DATE(payment_date)
	ORDER BY SUM(amount) DESC

SELECT
	staff_id,
	DATE(payment_date),
	SUM(amount),
	COUNT(*)
	FROM payment
	WHERE amount !=0
	GROUP BY staff_id, DATE(payment_date)
	ORDER BY COUNT(*) DESC

--Task 4 HAVING
--Having is only used with GROUP BY

SELECT
	customer_id,
	SUM(amount)
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 200

SELECT
	staff_id,
	DATE(payment_date),
	SUM(amount),
	COUNT(*)
	FROM payment
	WHERE amount !=0
	GROUP BY staff_id, DATE(payment_date)
	HAVING COUNT(*) > 400
	ORDER BY COUNT(*) DESC

-- In 2020 april 28,29 and 30 were days with very high revenue
--Find out what is the average payment amount grouped by
--customer and day with payment more then 1 per day
--Order by the avg amount in DESC


SELECT
	customer_id,
	ROUND(AVG(amount),2) AS avg_amount,
	DATE(payment_date)
	FROM payment
	WHERE DATE(payment_date) IN ('2020-04-28','2020-04-29','2020-04-30')
	GROUP BY customer_id,DATE(payment_date)
	ORDER BY AVG(amount) DESC
