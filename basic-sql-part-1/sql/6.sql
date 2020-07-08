WITH comp_sci_students AS (
	select
	DISTINCT(t.id)  from course c
	INNER JOIN takes t
	ON c.course_id = t.course_id
	where dept_name = 'Comp. Sci.'
)
select name from student where id in (select id from comp_sci_students);