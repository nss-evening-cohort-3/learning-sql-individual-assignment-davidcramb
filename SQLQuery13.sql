--Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT InvoiceLineId, Track.Name, Artist.Name FROM InvoiceLine JOIN Track ON Track.TrackId = InvoiceLineId
JOIN Artist ON ArtistId = Track.TrackId;