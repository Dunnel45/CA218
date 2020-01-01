SELECT cc.contactFirstName, cc.ContactLastName, SUM(cp.amount) AS Totclassic, sc.first_name, sc.last_name, 
SUM(sp.amount) AS Totsakila
FROM customers cc
JOIN payments cp ON
cc.customerNumber = cp.customerNumber
JOIN sakila.customer sc ON
cc.customerNumber = sc.customer_id
JOIN sakila.payment sp ON
sc.customer_id = sp.customer_id
GROUP BY cc.customerNumber
ORDER BY Totsakila DESC