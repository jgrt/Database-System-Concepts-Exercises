DELETE FROM student
WHERE id IN (SELECT id FROM instructor);