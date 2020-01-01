SELECT productName, productVendor, productCode, quantityInStock
FROM products
Where quantityInStock > (SELECT AVG(quantityInStock) FROM products);