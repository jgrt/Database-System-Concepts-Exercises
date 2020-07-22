insert into section values('313', '4', 'Fall', 2011, 'Chandler', '804', 'N');
insert into section values('692', '4', 'Fall', 2011, 'Chandler', '804', 'N');
insert into section values('313', '4', 'Fall', 2012, 'Chandler', '804', 'N');
insert into section values('692', '4', 'Fall', 2012, 'Chandler', '804', 'N');

WITH takes_sec AS (
		SELECT
		s.course_id,
		s.sec_id,
		COUNT(t.ID) as enrollment
	FROM section s
	LEFT OUTER JOIN  takes t ON
		t.course_id = s.course_id AND
		t.sec_id = s.sec_id
	GROUP BY s.course_id, s.sec_id
)
SELECT
	sec_id,
	MIN(enrollment),
	MAX(enrollment)
FROM takes_sec GROUP BY sec_id;
