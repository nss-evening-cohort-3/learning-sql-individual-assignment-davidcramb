--SQLITE
--Provide a query that shows the top 5 most purchased tracks over all.
SELECT TrackId, Name, Downloads FROM (SELECT DISTINCT(InvoiceLine.TrackId), Invoice.InvoiceDate, Track.Name, COUNT(InvoiceLine.TrackId) AS 'Downloads' FROM InvoiceLine
JOIN Track ON Track.TrackId == InvoiceLine.TrackId
JOIN Invoice ON Invoice.InvoiceId == InvoiceLine.InvoiceId
GROUP BY InvoiceLine.TrackId, Track.Name
ORDER BY Downloads DESC)
LIMIT 5;