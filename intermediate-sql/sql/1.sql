WITH takes_sec AS (
		SELECT
		t.course_id,
		t.sec_id,
		COUNT(t.ID) as enrollment
	FROM takes t
	INNER JOIN section s ON
		t.course_id = s.course_id AND
		t.sec_id = s.sec_id
	GROUP BY t.course_id, t.sec_id
)
SELECT
	sec_id,
	MIN(enrollment),
	MAX(enrollment)
FROM takes_sec GROUP BY sec_id;