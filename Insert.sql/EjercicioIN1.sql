--Insertar tres ciudades de argentina a elección en un solo insert 

INSERT INTO city (city, country_id)
VALUES ("Berazategui",(SELECT country_id FROM country WHERE country = "Argentina")),("Esteban Echeverría", 
(SELECT country_id FROM country WHERE country = "Argentina")),( "Chacabuco",(SELECT country_id FROM country WHERE country = "Argentina"));  