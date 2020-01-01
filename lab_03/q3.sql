SELECT f.title, f.release_year, f.film_id
From film f
LEFT JOIN film_actor fa ON
f.film_id = fa.film_id
WHERE actor_id IS NULL;