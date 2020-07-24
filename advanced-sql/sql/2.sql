WITH failed_stu AS (
	SELECT
		id,
		count(*) f_num_course
	FROM f_grade_student
	GROUP BY id
	HAVING COUNT(*) > 1)

SELECT
	s.id,
	s.name,
	fg.course_id,
	fg.grade
FROM student s
INNER JOIN failed_stu f
	ON s.id = f.id
INNER JOIN f_grade_student fg
	ON f.id = fg.id
ORDER BY s.name