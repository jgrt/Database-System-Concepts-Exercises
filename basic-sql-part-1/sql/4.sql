WITH stu_course AS (
	select
		s.name student_name,
		t.course_id course_id
	from student s
	INNER JOIN takes t
		ON s.id =t.id
	where s.id = '1000'

)
select
	sum(c.credits)
from stu_course sc
INNER JOIN course c
ON sc.course_id = c.course_id;