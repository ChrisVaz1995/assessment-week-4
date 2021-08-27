-- Artist Table
-- 1. Add 3 new artists to the artist table using INSERT. (It’s already created.)
INSERT INTO artist (name)
VALUES('Logic'), ('Usher'), ('Bruno Mars');

-- 2. Select 5 artists in alphabetical order.
SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

-- Employee Table
-- 1. List all employee first and last names only that live in Calgary.
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

-- 2. Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards
SELECT * FROM employee 
WHERE reports_to = 2

-- 3. Count how many people live in Lethbridge.
SELECT COUNT(*)
FROM employee 
WHERE city = 'Lethbridge'

-- Invoice Table
-- 1. Count how many orders were made from the USA.
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA'

-- 2. Find the largest order total amount.
SELECT MAX(total)
FROM invoice 
WHERE total IS NOT NULL;

-- 3. Find the smallest order total amount.
SELECT MIN(total)
FROM invoice
WHERE total IS NOT NULL;

-- 4. Find all orders bigger than $5.
SELECT * FROM invoice 
WHERE total > 5;

-- 5. Count how many orders were smaller than $5.
SELECT COUNT(*)
FROM invoice 
WHERE total < 5;

-- 6. Get the total sum of the orders.
SELECT SUM(total)
FROM invoice

-- JOIN Queries (Various tables)
-- 1. Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * FROM invoice_line
WHERE unit_price > 0.99;

-- 2. Get the invoice_date, customer first_name and last_name, and total from all invoices.

-- 3. Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.
SELECT first_name, last_name, support_rep_id
FROM customer;

-- 4. Get the album title and the artist name from all albums.
SELECT title, artist_id
FROM album;

-- Extra Credit
-- SQL
-- Artist Table

-- 1. Select 10 artists in reverse alphabetical order.
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

-- 2. Select all artists that start with the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE 'Black%';

-- 3. Select all artists that contain the word ‘Black’.
SELECT * FROM artist 
WHERE name LIKE '%Black%'

-- Employee Table

-- 1. Find the birthdate for the youngest employee.
SELECT MIN(birth_date)
FROM employee

-- 2. Find the birthdate for the oldest employee.
SELECT MAX(birth_date)
FROM employee

-- Invoice Table

-- 1. Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) 
FROM invoice 
WHERE billing_state in ('CA', 'TX', 'AZ');

-- 2. Get the average total of the orders.
SELECT AVG(total) 
FROM invoice


