-- Schema Queries
-- Aaron Wollman

Drop Table If Exists department_managers;
Drop Table If Exists department_employees;
Drop Table If Exists salaries;
Drop Table If Exists employees;
Drop Table If Exists titles;
Drop Table If Exists departments;

Create Table departments (
	dept_no VARCHAR(4) Not Null,
	Primary Key(dept_no),
	
	dept_name VARCHAR(20) Not Null
);

Create Table titles (
	title_id VARCHAR(5) Not Null,
	Primary Key(title_id),
	
	title VARCHAR(25) Not Null
);

Create Table employees (
	emp_no INT Not Null,
	Primary Key(emp_no),
	
	emp_title VARCHAR(25) Not Null,
	Foreign Key (emp_title) References titles(title_id),
	
	birth_date VARCHAR(10) Not Null,
	first_name VARCHAR(25) Not Null,
	last_name VARCHAR(25) Not Null,
	sex VARCHAR(1) Not Null,
	hire_date VARCHAR(10) Not Null
);

Create Table salaries (
	emp_no INT Not Null,
	Primary Key(emp_no),
	Foreign Key(emp_no) References employees(emp_no),
	
	salary INT Not Null
);

Create Table department_employees (
	emp_no INT Not Null,
	Foreign Key(emp_no) References employees(emp_no),
	
	dept_no VARCHAR(4) Not Null,
	Foreign Key(dept_no) References departments(dept_no),
	
	Primary Key(emp_no, dept_no)
);

Create Table department_managers (
	dept_no VARCHAR(4) Not Null,
	Foreign Key(dept_no) References departments(dept_no),
	
	emp_no INT Not Null,
	Foreign Key(emp_no) References employees(emp_no),
	
	Primary Key(dept_no, emp_no)
);
