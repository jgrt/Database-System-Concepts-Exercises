UPDATE takes
SET grade = (CASE WHEN grade LIKE 'A_' THEN 'A'
				  WHEN grade LIKE 'B_' THEN 'B'
				  WHEN grade LIKE 'C ' THEN 'C'
			 	  WHEN grade LIKE 'C+' THEN 'D'
			 	  WHEN grade LIKE 'C-' THEN 'F'
			 ELSE grade
			 END);

CREATE VIEW f_grade_student AS
select * from takes where grade = 'F'


