-- Hello World SQL Query, SELECT all records from actor table
SELECT *
FROM actor;

-- Query for First_name and last_name in the actor table
SELECT first_name,last_name
FROM actor;

-- Query for a first_name that equals Nick using the WHERE clause
SELECT first_name,last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first_name that is equal to Nick using the LIKE and WHERE clauses
SELECT first_name,last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- USE LIKE CLASE AND WILD CARD ( %)
-- get all J names..
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Ju%'

-- SINGLE CHARACTER WILD CARD ( _ )
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'K___'
