SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
 FROM "Employees" as e 
 LEFT JOIN "Salaries" s
 on e.emp_no = s.emp_no

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary, e.hire_date
 FROM "Employees" as e 
 LEFT JOIN "Salaries" s
 on e.emp_no = s.emp_no  WHERE extract(year from e.hire_date) = 1986

SELECT d.dept_no AS "Department Number", d.dept_name AS "Department Name", 
dm.emp_no AS "Employee Number",
e.last_name AS "Lastname", e.first_name AS "Firstname",
dm.from_date AS "Start Employment Date", 
dm.to_date AS "End Employment Date"  
FROM "Department" d LEFT JOIN "Dept_Manager" dm 
ON dm.dept_no = d.dept_no LEFT JOIN "Employees" e 
ON e.emp_no = dm.emp_no order by e.last_name

SELECT d.dept_no AS "Department Number", d.dept_name AS "Department Name", 
e.emp_no AS "Employee Number",
e.last_name AS "Lastname", e.first_name AS "Firstname"
FROM "Department" d LEFT JOIN "Dept_Emp" de 
ON de.dept_no = d.dept_no LEFT JOIN "Employees" e 
ON e.emp_no = de.emp_no order by e.last_name

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
 FROM "Employees" as e 
 LEFT JOIN "Salaries" s
 on e.emp_no = s.emp_no WHERE e.first_name = 'Hercules' 
 AND e.last_name LIKE 'B%'

SELECT d.dept_no AS "Department Number", d.dept_name AS "Department Name", 
e.emp_no AS "Employee Number",
e.last_name AS "Lastname", e.first_name AS "Firstname"
FROM "Department" d LEFT JOIN "Dept_Emp" de 
ON de.dept_no = d.dept_no LEFT JOIN "Employees" e 
ON e.emp_no = de.emp_no where de.dept_no = 'd007'

SELECT d.dept_no AS "Department Number", d.dept_name AS "Department Name", 
e.emp_no AS "Employee Number",
e.last_name AS "Lastname", e.first_name AS "Firstname"
FROM "Department" d LEFT JOIN "Dept_Emp" de 
ON de.dept_no = d.dept_no LEFT JOIN "Employees" e 
ON e.emp_no = de.emp_no where de.dept_no = 'd007' or de.dept_no = 'd005'

SELECT COUNT(*) as total_count ,
e.last_name FROM "Employees" e 
GROUP BY e.last_name ORDER BY 
e.last_name DESC


