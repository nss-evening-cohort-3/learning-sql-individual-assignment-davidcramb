--Provide a query that shows all the Tracks, but displays no IDs. 
--The resultant table should include the Album name, Media type and Genre.
SELECT Album.Title AS Album, Track.Name AS Track, MediaType.Name AS Media, Genre.Name AS Genre FROM Track
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN Genre ON Genre.GenreId = Track.GenreId
ORDER BY Genre ASC;