WITH stu_credits AS (
	select
		t.id student_id,
		t.course_id,
		c.credits credits
	from takes t
	INNER JOIN course c
	ON t.course_id = c.course_id
)
select
	student_id,
	sum(credits)
from stu_credits
group by student_id;