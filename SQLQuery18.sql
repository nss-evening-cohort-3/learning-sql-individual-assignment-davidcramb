--Provide a query that shows total sales made by each sales agent.
SELECT Employee.EmployeeId, CONCAT(Employee.FirstName, ' ', Employee.LastName) AS 'Employee Name',
COUNT(Customer.SupportRepId) AS 'Total Sales',
SUM(Invoice.Total) AS 'Revenue'
FROM Employee
JOIN Customer ON SupportRepId = Employee.EmployeeId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Employee.EmployeeId, Employee.FirstName, Employee.LastName;