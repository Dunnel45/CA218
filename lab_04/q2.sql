SELECT c.Name, c.Region, c.Population, cl.Language, cl.Percentage
FROM country c
JOIN countrylanguage cl ON
c.Code = cl.CountryCode
WHERE (c.Population * cl.Percentage) / 100 > 1000000
ORDER BY (c.Population/100) * cl.Percentage DESC;