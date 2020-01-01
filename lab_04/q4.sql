SELECT c.contactFirstName, c.contactLastName
FROM customers c
JOIN sakila.customer sc ON
c.contactFirstName = sc.first_name