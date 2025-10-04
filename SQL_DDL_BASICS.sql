/* Create a new table called persons 
with columns: id, person_name, birth_date and phone */

CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
)

/* ALTER Command */

-- Add a new column called email to the persons table 
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL

-- Remove the column phone from the persons table 
ALTER TABLE persons
DROP COLUMN phone

SELECT * FROM persons

/* DROP is used to drop the tables */

-- Delete the table persons from the database
DROP TABLE persons
