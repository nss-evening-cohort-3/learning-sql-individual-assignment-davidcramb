--SQLite Version
SELECT Employee.FirstName || ' ' || Employee.LastName AS Employee, COUNT(Customer.SupportRepId) AS Total_Customers FROM Employee
JOIN Customer ON Customer.SupportRepId == EmployeeId
GROUP BY Employee