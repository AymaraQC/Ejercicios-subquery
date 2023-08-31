--Calcular el promedio de lo que gastan los usuarios en el sistema


SELECT AVG(suma) AS Promedio
   FROM (SELECT SUM(Total) AS suma
                 FROM invoices
				 GROUP BY CustomerId);