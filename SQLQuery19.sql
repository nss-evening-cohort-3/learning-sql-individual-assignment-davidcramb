--Which sales agent made the most in sales in 2009? HINT: MAX
--This works in SQLite Manager ONLY
SELECT Employee.LastName, SUM(Invoice.Total) FROM Employee 
JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE InvoiceDate LIKE '2009%'
GROUP BY Employee.LastName;
