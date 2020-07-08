WITH actor_id AS (
	SELECT
		aid
	FROM actors
	WHERE
		name = 'Charlie Chaplin'
)
SELECT
	m.title,
	COUNT(r.rolename) no_of_role
FROM movies m
INNER JOIN actor_role r
ON m.mid = r.mid
WHERE r.aid IN (SELECT aid FROM actor_id)
GROUP BY m.title;
