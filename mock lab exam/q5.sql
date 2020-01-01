SELECT p.productName, COUNT(DISTINCT(o.customerNumber)) AS CustomerCount, SUM(od.quantityOrdered) AS total, 
(p.MSRP - p.buyPrice) * SUM(od.quantityOrdered) AS Profit
FROM orderdetails od
JOIN products p ON
p.productCode = od.productCode
JOIN orders o ON
od.orderNumber = o.orderNumber
WHERE (SELECT SUM(quantityOrdered) FROM orderdetails) > All (SELECT SUM(quantityOrdered)
FROM orderdetails
WHERE productCode = 'S18_3685')
GROUP BY od.productCode
ORDER BY CustomerCount DESC