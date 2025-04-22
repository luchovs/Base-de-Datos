SELECT * FROM INHABITANT
SELECT * FROM INHABITANT WHERE STATE = "friendly"
SELECT * FROM INHABITANT WHERE JOB = "weaponsmith"
SELECT * FROM INHABITANT WHERE STATE = "friendly" and JOB = "weaponsmith"
SELECT * FROM INHABITANT WHERE STATE = "friendly" and JOB LIKE "%smith"
SELECT PERSONID FROM INHABITANT WHERE NAME = "Stranger"
SELECT GOLD FROM INHABITANT WHERE NAME = "Stranger"
SELECT * FROM ITEM WHERE OWNER IS NULL
UPDATE ITEM SET OWNER = 20 WHERE OWNER IS NULL
SELECT * FROM ITEM WHERE OWNER = 20
SELECT * FROM INHABITANT WHERE STATE = "friendly" AND JOB = "dealer" OR JOB = "merchant"
UPDATE ITEM SET OWNER = 15 WHERE ITEM = "ring" OR ITEM = "teapot"
UPDATE INHABITANT SET NAME = "Nick Singh" WHERE PERSONID = 20
SELECT * FROM INHABITANT WHERE JOB = "baker" ORDER BY GOLD DESC
SELECT * FROM INHABITANT WHERE JOB = "pilot"
SELECT INHABITANT.NAME FROM VILLAGE, INHABITANT WHERE VILLAGE.CHIEF = INHABITANT.PERSONID and VILLAGE.NAME = "Onionville"

-- Actividad 1 --

SELECT f.title, a.address, c.city, co.country
FROM film f
JOIN inventory i
ON f.film_id = i.film_id
JOIN store s
ON i.store_id = s.store_id
JOIN address a
ON s.address_id = a.address_id
JOIN city c
ON a.city_id = c.city_id
JOIN country co
ON c.country_id = co.country_id
WHERE f.title = 'ACADEMY DINOSAUR';

-- Actividad 2 --

SELECT title, rating, length AS duration, l.name AS language, c.name AS category
FROM film f
JOIN language l ON f.language_id = l.language_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE length BETWEEN 60 AND 120;

-- Actividad 3 --

SELECT st.first_name, st.last_name, a.address, ci.city, co.country
FROM staff st
JOIN store s ON st.staff_id = s.manager_staff_id
JOIN address a ON st.address_id = a.address_id
JOIN city ci ON a.city_id= ci.city_id
JOIN country co ON ci.country_id = co.country_id;

-- Actividad 4 --

SELECT f.title, MIN(r.return_date) AS min_return, MAX(r.return_date) AS max_return
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title;

-- Actividad 5 --

SELECT f.title, c.name AS category, l.name AS language, r.rental_date, p.amount, cu.first_name, cu.last_name
FROM film f
JOIN language l ON f.language_id = l.language_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN customer cu ON r.customer_id = cu.customer_id
JOIN payment p ON r.rental_id = p.rental_id;