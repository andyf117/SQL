-- ******************************************************
--  loading the csv files to various tables defined
-- *****************************************************
COPY "Department"(dept_no,dept_name)
FROM 'C:\\tmp\\andy-tutorial\\week9-sql\\data\\departments.csv' DELIMITER ',' CSV HEADER;

COPY "Employees"("emp_no","birth_date","first_name","last_name","gender","hire_date")
FROM 'C:\\tmp\\andy-tutorial\\week9-sql\\data\\employees.csv' DELIMITER ',' CSV HEADER;

COPY "Dept_Emp"("emp_no","dept_no","from_date","to_date")
FROM 'C:\\tmp\\andy-tutorial\\week9-sql\\data\\dept_emp.csv' DELIMITER ',' CSV HEADER;

COPY "Salaries"(emp_no,salary,from_date,to_date)
FROM 'C:\\tmp\\andy-tutorial\\week9-sql\\data\\salaries.csv' DELIMITER ',' CSV HEADER;

COPY "Dept_Manager"("dept_no","emp_no","from_date","to_date")
FROM 'C:\\tmp\\andy-tutorial\\week9-sql\\data\\dept_manager.csv' DELIMITER ',' CSV HEADER;

COPY "Titles"("emp_no","title","from_date","to_date")
FROM 'C:\\tmp\\andy-tutorial\\week9-sql\\data\\titles.csv' DELIMITER ',' CSV HEADER;
