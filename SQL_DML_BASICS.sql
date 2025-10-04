INSERT INTO customers (id,first_name,country,score)
VALUES 
	(6,'Venkat','India',NULL),
	(7,'Sam',NULL,100),
	(8,'Samuel','USA',900)


INSERT INTO customers 
VALUES (9,'Bro','Canada',600)

INSERT INTO customers(id,first_name)
VALUES (10,'IShowSpeed')

/* INSERT */

-- Copy data from customers table into persons

INSERT INTO persons(id,person_name,birth_date,email)
SELECT  
id,
first_name,
NULL,
'Unknown'
FROM customers

SELECT * FROM customers

/* UPDATE */

-- change the score of customer id 6 to 0
UPDATE customers
SET score = 999
WHERE id = 6



-- Change the score of customer with id 10 to 0 and update the country to 'UK'

UPDATE customers
SET score = 0,country = 'UK'
WHERE id = 10

-- Update all customers with a NULL score by setting there score to 0
UPDATE customers 
SET score = 0
WHERE score IS NULL

/* DELETE */

-- Delete all customers with an id greater than 5
DELETE FROM customers
WHERE id > 5


-- Delete all the data from table persons
TRUNCATE TABLE persons

/* Truncate is faster than delete */

SELECT * 
FROM customers
