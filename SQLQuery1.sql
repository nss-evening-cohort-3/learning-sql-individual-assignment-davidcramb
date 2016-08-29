--SQL Version
﻿SELECT CONCAT (FirstName, ' ', LastName) FROM Customer WHERE Customer.Country != 'USA';
﻿--SQLite Version
﻿SELECT FirstName || ' ' || LastName AS Customer FROM Customer WHERE Customer.Country != 'USA';
