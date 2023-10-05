CREATE VIEW peliculas_cantidad AS
SELECT count(f.title) AS cantidad_de_peliculas , c.name AS categoria 
FROM film f JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY categoria;



SELECT avg(cantidad_de_peliculas) FROM peliculas_cantidad