SELECT f.title, f.description, c.name AS category, f.rating, f.release_year
FROM film f
JOIN film_category fc ON
f.film_id = fc.film_id
JOIN category c ON
fc.category_id = c.category_id
WHERE f.rating LIKE 'G';