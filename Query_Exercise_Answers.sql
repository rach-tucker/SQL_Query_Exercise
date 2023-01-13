--question 1
SELECT count(*)
FROM actor
WHERE last_name = 'Wahlberg'
--answer:2

--question 2
SELECT count(*)
FROM payment 
WHERE amount BETWEEN 3.99 and 5.99
--answer: 5,608

--question 3
SELECT count(*), film_id
FROM inventory
GROUP BY film_id 
HAVING count(*) = 7
--answer: 116

--question 4
SELECT *
FROM customer 
WHERE first_name = 'Willie'
--answer: 2

--question 5
SELECT staff_id, count(rental_id)
FROM rental 
GROUP BY staff_id 
ORDER BY count(rental_id) desc
limit 1;
--answer: 1

--question 6
SELECT district 
FROM address
GROUP BY district; 
--answer: 378

--question 7
SELECT count(*), film_id
FROM film_actor
GROUP BY film_id
ORDER BY count(actor_id) DESC;

SELECT title
FROM film
WHERE film_id = 508;
--answer film_id 508, "Lambs Cincinatti"

--question 8
SELECT count(*)
FROM customer
WHERE store_id = 1 and last_name like '%es';
--answer: 13

--question 9
SELECT count(*) from (
	SELECT count(*), amount
	FROM payment 
	WHERE customer_id > 380 AND customer_id < 430
	GROUP BY amount 
	having count(*) > 250
) as a;
--asnwer: 3

--question 10
SELECT count(DISTINCT rating)
FROM film;
--5
SELECT count(*) rating 
FROM film
GROUP BY rating
ORDER BY count(*) DESC;
--224

