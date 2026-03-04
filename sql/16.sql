/*
 * Use a JOIN to order the films by most profitable.
 */
SELECT f.title, sum(p.amount) AS profit
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY f.title
ORDER BY profit DESC;
