CREATE VIEW FECHA_MIN_FECHA_MAX AS
SELECT f.title AS PEICULAS, MIN(rental_date) AS fecha_minima, MAX(rental_date) AS fecha_maxima FROM film f 
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON r.inventory_id = i.inventory_id
GROUP BY f.film_id;


SELECT PEICULAS,fecha_minima, fecha_maxima FROM FECHA_MIN_FECHA_MAX
WHERE PEICULAS ilike 'A%'