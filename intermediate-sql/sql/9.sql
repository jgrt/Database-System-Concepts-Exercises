WITH ins_updated_salary as (
	select
		id,
		count(sec_id)*10000 new_salary
	from teaches
	group by id
)
UPDATE instructor
SET salary = ins_updated_salary.new_salary
FROM ins_updated_salary
WHERE instructor.id = ins_updated_salary.id and
	ins_updated_salary.new_salary > 29000