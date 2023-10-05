CREATE VIEW top_10_actores AS
SELECT count(*) as cantidad, a.first_name as nombre, a.last_name as apellido
FROM film f JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON a.actor_id = fa.actor_id
GROUP BY a.actor_id
ORDER BY cantidad DESC
LIMIT 10;


SELECT apellido FROM top_10_actores 
WHERE apellido ilike 'B%'