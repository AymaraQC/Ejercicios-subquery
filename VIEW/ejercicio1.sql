CREATE VIEW peliculas_rating AS
SELECT count(title) as cant_pelis, rating as cantidad
FROM film
GROUP BY rating;


SELECT cantidad FROM peliculas_rating
	WHERE cantidad = 'R';