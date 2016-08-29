--Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT Invoice.InvoiceId, Invoice.CustomerId, Invoice.InvoiceDate, Invoice.Total, COUNT(InvoiceLine.InvoiceId) AS LineItems FROM Invoice
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceId, Invoice.CustomerId, Invoice.InvoiceDate, Invoice.Total
ORDER BY InvoiceId ASC;