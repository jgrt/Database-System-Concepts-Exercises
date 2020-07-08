WITH never_taught AS (
	SELECT
		id
	FROM instructor
	EXCEPT
		SELECT
			DISTINCT(teaches.id)
		FROM teaches
		INNER JOIN instructor on instructor.id =teaches.id
)
SELECT id, name FROM instructor WHERE id IN (SELECT id FROM never_taught)