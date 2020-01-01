SELECT Region, SUM(Population) AS TotalPop, SurfaceArea, AVG(LifeExpectancy) AS AvLifeExp
FROM country
GROUP BY Region
ORDER BY AvLifeExp DESC;