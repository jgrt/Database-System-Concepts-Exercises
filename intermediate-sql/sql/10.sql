SELECT
	c.building,
	s.sec_id,
	SUM(c.capacity) cap_sum,
	COUNT(s.course_id) courses
FROM classroom c
INNER JOIN section s
ON c.building = s.building AND
   c.room_number = c.room_number
GROUP BY c.building, s.sec_id
ORDER BY c.building, s.sec_id