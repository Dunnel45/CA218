SELECT co.Name, co.Region, co.population, COUNT(cl.Language) AS languages
FROM country co
JOIN countrylanguage cl ON
cl.CountryCode = co.Code
WHERE co.Population > (SELECT AVG(Population)
FROM country)
GROUP BY co.Name
ORDER BY languages DESC;