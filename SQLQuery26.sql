--SQLITE
--Provide a query that shows the top 3 best selling artists.
SELECT Composer, COUNT(Composer) AS 'Tracks_Downloaded' FROM (SELECT InvoiceLine.TrackId, Track.Name, Track.Composer,  COUNT(InvoiceLine.TrackId) AS 'Downloads' FROM InvoiceLine
JOIN Track ON Track.TrackId == InvoiceLine.TrackId
JOIN Invoice ON Invoice.InvoiceId == InvoiceLine.InvoiceId
GROUP BY InvoiceLine.TrackId, Track.Name
ORDER BY Downloads DESC)
GROUP BY Composer
ORDER BY Tracks_Downloaded DESC
LIMIT 3