SELECT LastName, MAX(Revenue) FROM(SELECT Employee.LastName, SUM(Invoice.Total) AS Revenue FROM Employee 
JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Employee.LastName)