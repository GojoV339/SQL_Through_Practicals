USE MyDatabase

-- This is a comment


/* This ia a multiline 
comment */




-- Retrieve All the data 
SELECT * FROM customers

-- Retrieve All Order data
SELECT * FROM orders

-- Retrieve only required columns
SELECT 
	first_name, 
	country 
FROM customers

--- Retrieve each customer's name, country and score.
SELECT 
	first_name, 
	country ,
	score 
FROM customers

SELECT 
	first_name,
	score,
	country
FROM customers



/* WHERE clause is used to filter data based on a condition */

SELECT 
	first_name,
	score,
	country 
FROM customers WHERE score > 500

-- Retrieve customers with a score not equal to 0
SELECT *
FROM customers 
WHERE score != 0

-- Retrieve customers from germany
SELECT * 
FROM customers 
WHERE country = 'Germany'

/* ORDER By is used to sort the data */

-- Sort the customers table in ascending order based on score
SELECT * 
FROM customers 
ORDER BY score ASC

-- Sort the customers table in descending order based on score
SELECT * 
FROM customers
ORDER BY score DESC

/* Nested ORDER By - sorting based on multiple columns */
SELECT * 
FROM customers
ORDER BY country DESC, score ASC

-- Retrieve all customers and sort the results by the country and then by the highest score
SELECT * 
FROM customers 
ORDER BY country ASC, score DESC


/* GROUP BY is used to aggregate and group data

combines rows with the same value
Aggregates a column by another column
Eg : Total score by country

*/

-- Find total score for each country
SELECT 
	country,
	-- first_name, can't be used here because we can't aggregate first_name
	SUM(score) AS total_score_by_country -- AS is used to name column
FROM customers
GROUP BY country

-- Find the total_score and total number of customers for each country
SELECT 
	country,
	SUM(score) AS total_score,
	COUNT(id) AS total_customers
FROM customers
GROUP BY country

/* HAVING Clause is used to filter the data after Aggregation it can be used only with GROUP BY */

/* 
	Task : 

	Find the average score for each country considering only customers with 
	a score not equal to 0 and return only those countries with an average score 
	greater than 430
*/

SELECT 
	country,
	AVG(score) AS avg_score_of_country
FROM customers 
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430


/* DISTINCT is used to remove duplicates (repeated values) */

-- Return unique list of all countries
SELECT DISTINCT
	country
FROM customers

/* TOP clause is used to restrict the number of rows returned in the result */

-- Return only top three rows of the results

SELECT TOP 3 * 
FROM customers

-- Retrieve top 3 customers with the Highest score
SELECT TOP 3 *
FROM customers 
ORDER BY score DESC

-- Retrieve lowest 2 customers with the lowest scores
SELECT TOP 2 * 
FROM customers 
ORDER BY score ASC

-- Get the Two most recent orders
SELECT TOP 2 * 
FROM orders
ORDER BY order_date DESC

-- Using all the clauses in one query
SELECT DISTINCT TOP 2 
	country,
	AVG(score) AS avg_of_country
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 500
ORDER BY country DESC

/* Cool sql techinques multiple queries, static fixed values, Highlight and execute */
SELECT * 
FROM customers,orders

SELECT 123 AS Static_number
SELECT 'HELLO' AS Static_String


SELECT 
	id,
	first_name,
	'New Customer' AS customer_type
FROM customers

