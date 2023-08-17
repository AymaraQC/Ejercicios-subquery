
--2)Mostrar los títulos de los discos de "Deep Purple"
--donde el artisid de album se el ArtistId de artis
SELECT Title AS TITULO FROM albums
WHERE ArtistId = (SELECT ArtistId FROM artists
   				 WHERE name = "Deep Purple");