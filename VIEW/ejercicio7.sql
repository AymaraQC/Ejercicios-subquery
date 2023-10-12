CREATE VIEW duracion_pelicula1_2 AS
SELECT f.title AS pelicula, c.name AS categoria, l.name AS idioma, f.rating, f.length AS duracion
FROM film f JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN language l ON l.language_id = f.language_id
WHERE f.length BETWEEN 60 AND 120
ORDER BY title ASC;


SELECT pelicula, duracion FROM duracion_pelicula1_2
WHERE duracion BETWEEN 90 AND 120;
