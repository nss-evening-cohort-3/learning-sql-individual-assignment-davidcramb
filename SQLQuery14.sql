--Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT BillingCountry, COUNT(BillingCountry) FROM Invoice GROUP BY BillingCountry;