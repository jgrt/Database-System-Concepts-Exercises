CREATE table IF NOT EXISTS grade_mapping (
grade varchar(2),
points integer
);

INSERT INTO grade_mapping (grade, points) VALUES
 ('A', 10),
 ('B', 8),
 ('C', 6),
 ('D', 4),
 ('F', 0);

SELECT
	t.id,
	s.name,
	SUM(gm.points) cpi
FROM takes t
LEFT OUTER JOIN grade_mapping gm
	ON t.grade = gm.grade
INNER JOIN student s
	ON t.id = s.id
group by t.id, s.name;