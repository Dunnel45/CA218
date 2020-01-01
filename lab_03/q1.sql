SELECT ci.Name, co.Name, ci.CountryCode, co.Region
From City ci, country co
WHERE ci.CountryCode = co.Code AND ci.Name LIKE 'A%'
Group by ci.CountryCode