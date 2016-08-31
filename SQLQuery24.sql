--SQLITE
--Provide a query that shows the most purchased track of 2013.
SELECT TrackId, Name, Downloads FROM (SELECT DISTINCT(InvoiceLine.TrackId), Invoice.InvoiceDate, Track.Name, COUNT(InvoiceLine.TrackId) AS 'Downloads' FROM InvoiceLine
JOIN Track ON Track.TrackId == InvoiceLine.TrackId
JOIN Invoice ON Invoice.InvoiceId == InvoiceLine.InvoiceId
GROUP BY InvoiceLine.TrackId, Track.Name
ORDER BY Downloads DESC)
WHERE strftime('%Y', InvoiceDate) == '2013'