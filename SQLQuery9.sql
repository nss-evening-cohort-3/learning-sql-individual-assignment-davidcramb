SELECT COUNT(*) AS Count FROM Invoice WHERE strftime('%Y', InvoiceDate) == '2009' OR  strftime('%Y', InvoiceDate) == '2011';
--166--
SELECT SUM(Total) FROM Invoice WHERE strftime('%Y', InvoiceDate) == '2009';
--449.4600000000003
SELECT SUM(Total) FROM Invoice WHERE strftime('%Y', InvoiceDate) == '2011';

