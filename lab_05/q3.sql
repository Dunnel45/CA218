SELECT pl.productLine, SUM((od.priceEach - p.buyPrice) * od.quantityOrdered) AS TotalIncome
FROM productlines pl
JOIN products p ON
pl.productLine = p.productLine
JOIN orderdetails od ON
p.productCode = od.productCode
GROUP BY p.productLine
ORDER BY TotalIncome DESC LIMIT 1