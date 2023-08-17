--1) Mostrar el nombre y duración de las canciones del disco "Outbreak"
SELECT TrackId, name, Milliseconds, AlbumId FROM tracks
WHERE AlbumId IN (SELECT AlbumId from albums
   				 WHERE title = "Outbreak")