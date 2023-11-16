  
create view alquiler AS
  SELECT fi.rental_duration, first_name, last_name, fi.title, rental_date FROM film fi