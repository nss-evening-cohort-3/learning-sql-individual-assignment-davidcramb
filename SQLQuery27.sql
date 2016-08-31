SELECT Media_Type, COUNT(Media_Type) AS Total_Purchased FROM (SELECT InvoiceLine.TrackId, Track.Name, Track.MediaTypeId, MediaType.Name AS Media_Type FROM InvoiceLine
JOIN Track ON Track.TrackId == InvoiceLine.TrackId
JOIN MediaType ON MediaType.MediaTypeId == Track.MediaTypeId)
GROUP BY Media_Type
ORDER BY Total_Purchased DESC

