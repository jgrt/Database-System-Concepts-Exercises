INSERT INTO faculty VALUES ('11111', 'K. Das', 'Comp. Sci.');

-- Below query will throw error as duplicate key value violates unique constraint instructor_pkey
-- last insertion in faculty view also added in instructor table thus reflected in csinstructors
INSERT INTO csinstructors VALUES ('11111', 'K. Das', 'Comp. Sci.', 30000);