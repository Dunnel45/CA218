SELECT co.Name, co.Continent, co.code, COUNT(ci.CountryCode) AS cities
From country co, city ci
WHERE co.Code = ci.CountryCode
Group by co.code, ci.CountryCode
ORDER BY cities DESC;