/*
 * Use a JOIN to count the number of English language films in each category.
 */
SELECT c.name, count(*) AS sum
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN language l ON f.language_id = l.language_id
WHERE l.name = 'English'
GROUP BY c.name
ORDER BY c.name;
