SELECT c.first_name, c.last_name, p.amount
FROM customer c
JOIN payment p ON
c.customer_id = p.customer_id
WHERE p.amount > (SELECT MAX(p.amount)
FROM customer c
JOIN payment p ON
c.customer_id = p.customer_id
WHERE c.first_name LIKE 'MARY')
GROUP BY c.customer_id
ORDER BY p.amount DESC;