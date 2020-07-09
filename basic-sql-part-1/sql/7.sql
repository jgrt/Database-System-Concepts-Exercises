SELECT
	id
FROM instructor
EXCEPT
	SELECT
		DISTINCT(teaches.id)
	FROM teaches
	INNER JOIN instructor on instructor.id =teaches.id