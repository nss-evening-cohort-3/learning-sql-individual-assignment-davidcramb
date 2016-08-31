--SQLITE
--Provide a query that shows the most purchased track of 2013.
SELECT InvoiceLine.TrackId, Track.Name, COUNT(InvoiceLine.TrackId) AS 'Downloads' FROM InvoiceLine
JOIN Track ON Track.TrackId == InvoiceLine.TrackId JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE strftime('%Y',Invoice.InvoiceDate) == '2013' 
GROUP BY Track.Name
ORDER BY Downloads DESC
LIMIT 1

