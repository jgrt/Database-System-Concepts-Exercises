select * from instructor;
select name from instructor where dept_name = 'Comp. Sci.' and salary > 70000;
select * from instructor, department where instructor.dept_name = department.dept_name;