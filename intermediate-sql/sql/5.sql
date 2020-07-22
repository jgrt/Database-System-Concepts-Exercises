WITH some_course AS
(
	SELECT c.course_id, t.id instructor_id
	FROM course c
	INNER JOIN teaches t
	ON c.course_id = t.course_id
	WHERE c.course_id LIKE '1%'
)
SELECT
	id,
	name
FROM instructor
WHERE
	id IN (SELECT instructor_id FROM some_course)