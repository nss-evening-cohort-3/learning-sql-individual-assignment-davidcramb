--Provide a query that shows the total sales per country. Which country's customers spent the most?
SELECT DISTINCT(BillingCountry) AS Country, COUNT(BillingCountry) AS Total_Sales FROM Invoice
GROUP BY Country
--
SELECT Country, MAX(Total_Sales) FROM (SELECT DISTINCT(BillingCountry) AS Country, COUNT(BillingCountry) AS Total_Sales FROM Invoice
GROUP BY Country)