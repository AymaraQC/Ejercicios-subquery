--2)Agregar una nueva sucursal (store) en alguna de esas tres ciudades.  
--Para eso hay que crear una dirección primero.

INSERT INTO address (address, district, city_id, phone)
VALUES ("A la vuelta de la ezquina"," ",(SELECT city_id FROM city WHERE city = "Chacabuco"), " ");

INSERT INTO store(address_id)
SELECT address_id FROM address WHERE address LIKE "A la vuelta de la ezquina%" ;
