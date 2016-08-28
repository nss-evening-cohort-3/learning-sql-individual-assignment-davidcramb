SELECT Invoice.Total, CONCAT(Customer.FirstName, ' ',Customer.LastName) AS CustomerName, Customer.Country, CONCAT(Employee.FirstName, ' ', Employee.LastName) AS Employee FROM Invoice JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON EmployeeId = Customer.SupportRepId;
