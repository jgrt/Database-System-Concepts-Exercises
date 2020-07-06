**Accessing the Database:** 
The first laboratory exercise is to connect to a database, populate it with data, and run very simple SQL queries.

- In case a shared database is provided for course students, user accounts need to be created on the database. Otherwise, the lab should also cover setting up a database system. 
- The next step is to connect to the database. Although most databases have their own text-based interface, we recommend using a graphical interface such as the database browser of the Netbeans IDE, or a database specific interface.
- The next step is to create tables and load sample data.
Try out some queries, and see what they do. Some example queries:
    - select * from instructor
    - select name from instructor where dept_name = 'Comp. Sci.' and salary > 70000
    - select * from instructor, department where instructor.dept_name = department.dept_name