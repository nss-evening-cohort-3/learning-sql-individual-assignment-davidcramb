SELECT Invoice.*, Employee.FirstName, Employee.LastName FROM Invoice JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON EmployeeId = Customer.SupportRepId;
