WITH takes_sec AS (
	 (SELECT
		t.course_id,
		t.sec_id,
		COUNT(t.ID) as enrollment
	FROM takes t
	INNER JOIN section s ON
		t.course_id = s.course_id AND
		t.sec_id = s.sec_id
	GROUP BY t.course_id, t.sec_id)
)

SELECT takes.id, takes_sec.course_id, takes_sec.sec_id
FROM takes_sec
INNER JOIN takes
ON takes_sec.course_id = takes.course_id AND takes_sec.sec_id = takes.sec_id
WHERE enrollment = (SELECT MAX(enrollment) FROM takes_sec);