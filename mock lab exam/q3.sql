SELECT co.Name, ci.Name, (ci.Population/co.Population) * 100 AS percentage, co.LifeExpectancy
FROM country co
JOIN city ci ON
co.Code = ci.CountryCode
WHERE co.LifeExpectancy > 75
ORDER BY percentage DESC