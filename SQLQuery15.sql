--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT Name, COUNT(PlaylistTrack.TrackId) FROM Playlist
JOIN PlaylistTrack ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Name;