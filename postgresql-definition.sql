CREATE TABLE "Department" (
  "dept_no" string UNIQUE NOT NULL,
  "dept_name" string NOT NULL
);

CREATE TABLE "Employees" (
  "emp_no" string UNIQUE NOT NULL,
  "birth_date" date NOT NULL,
  "first_name" string NOT NULL,
  "last_name" string NOT NULL,
  "gender" char NOT NULL,
  "hire_date" date NOT NULL
);

CREATE TABLE "Titles" (
  "emp_no" string NOT NULL,
  "title" string NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL
);

CREATE TABLE "Salaries" (
  "emp_no" string NOT NULL,
  "salary" float NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL
);

CREATE TABLE "Dept_Manager" (
  "dept_no" string NOT NULL,
  "emp_no" string NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL
);

CREATE TABLE "Dept_Emp" (
  "emp_no" string NOT NULL,
  "dept_no" string NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL
);

ALTER TABLE "Titles" ADD FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_Emp" ADD FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries" ADD FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_Manager" ADD FOREIGN KEY ("dept_no") REFERENCES "Department" ("dept_no");

ALTER TABLE "Dept_Emp" ADD FOREIGN KEY ("dept_no") REFERENCES "Department" ("dept_no");

ALTER TABLE "Dept_Manager" ADD FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no");