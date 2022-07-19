-- 1. How many actors are there with the last name ‘Wahlberg’?
-- 2
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';


-- 2. How many payments were made between $3.99 and $5.99?
-- 3214
SELECT COUNT(amount)
FROM payment
WHERE amount > 3.99 AND amount < 5.99;


-- 3. What film does the store have the most of? (search in inventory)
-- 5 
SELECT COUNT(film_id), store_id
FROM inventory
GROUP BY store_id, film_id
ORDER BY COUNT(film_id) desc;





-- 4. How many customers have the last name ‘William’?
-- 0
SELECT last_name
FROM customer
WHERE last_name = 'William';


-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(amount)
FROM payment
GROUP BY staff_id, amount;





-- 6. How many different district names are there?
-- 378
SELECT COUNT(DISTINCT district)
FROM address
ORDER BY COUNT(DISTINCT district);




-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- 462
SELECT film_id, SUM(actor_id)
FROM film_actor
GROUP BY film_id, actor_id
ORDER BY actor_id DESC;





-- 8 From store 1, how many customers have a last name ending with ‘es’? (use customer table)
-- 21 

SELECT last_name, COUNT(store_id)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY last_name, store_id;




-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)





-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?