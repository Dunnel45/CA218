SELECT f.title, f.description, c.name as category, f.rating
FROM film f
JOIN film_category fc ON
f.film_id = fc.film_id
JOIN category c ON
c.category_id = fc.category_id
WHERE f.title LIKE 'A%'
ORDER BY f.title