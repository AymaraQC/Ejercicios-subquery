CREATE VIEW TITULOS AS
SELECT f.title AS peliculas, a.address AS direccion, c.city AS cuidad, co.country AS pais FROM film f 
JOIN inventory i ON f.film_id = i.film_id 
JOIN store s ON i.store_id = s.store_id
JOIN address a ON s.address_id =a.address_id
JOIN city c ON a.city_id = c.city_id
JOIN country co ON c.country_id = co.country_id
JOIN rental r ON i.inventory_id = r.inventory_id
WHERE r.return_date IS NULL
ORDER BY f.title;


SELECT peliculas FROM TITULOS
WHERE peliculas ilike 'C%';