WITH stu_course_credit AS
	(SELECT
		t.id student_id,
		SUM(c.credits ) course_credit
	FROM takes t
	INNER JOIN course c
	ON t.course_id = c.course_id
	GROUP BY t.id)
UPDATE student
SET tot_cred = stu_course_credit.course_credit
FROM stu_course_credit
WHERE student.id  = stu_course_credit.student_id