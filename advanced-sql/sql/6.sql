CREATE VIEW CSInstructors AS
	SELECT
		*
	FROM instructor
	WHERE dept_name = 'Comp. Sci.';