--SQL Version
﻿SELECT CONCAT (FirstName, ' ', LastName) FROM Customer WHERE Customer.Country = 'Brazil';
﻿--SQLite Version
﻿SELECT FirstName || ' ' || LastName FROM Customer WHERE Customer.Country = 'Brazil';
