﻿SELECT * FROM Invoice JOIN Customer ON InvoiceId = Customer.CustomerId WHERE Customer.Country = 'Brazil';