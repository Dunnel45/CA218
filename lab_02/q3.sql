SELECT customerNumber, paymentDate, AVG(amount) as average
FROM payments
WHERE paymentDate BETWEEN '2004-01-01' AND '2004-12-31';