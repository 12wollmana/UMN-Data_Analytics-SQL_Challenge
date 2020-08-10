-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
Select e.emp_no, e.last_name, e.first_name, s.salary
From employees as e
Join salaries as s on e.emp_no = s.emp_no;

-- List first name, last name, and hire date 
-- for employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees
Where hire_date Like '%1986'
Order By hire_date;

-- List the manager of each department 
-- with the following information: 
-- department number, department name, 
-- the manager's employee number, last name, first name.
Select 
	d.dept_no, d.dept_name,
	e.emp_no, e.last_name, e.first_name
From department_managers as dm
Join employees as e on dm.emp_no = e.emp_no
Join departments as d on dm.dept_no = d.dept_no;

-- List the department of each employee 
-- with the following information: 
-- employee number, last name, first name, and department name.
Create View employee_departments As
Select
	e.emp_no, e.last_name, e.first_name,
	d.dept_name
From department_employees as de
Join employees as e on de.emp_no = e.emp_no
Join departments as d on de.dept_no = d.dept_no;
Select * from employee_departments;

-- List first name, last name, and sex for employees 
-- whose first name is "Hercules" 
-- and last names begin with "B."
Select first_name, last_name, sex
From employees
Where 
	first_name = 'Hercules'
	and last_name like 'B%';


-- List all employees in the Sales department, 
-- including their employee number, 
-- last name, first name, and department name.
Select * from employee_departments
Where dept_name = 'Sales';

-- List all employees in the Sales and Development departments, 
-- including their employee number, 
-- last name, first name, and department name.
Select * from employee_departments
Where 
	dept_name = 'Sales'
	or dept_name = 'Development';

-- In descending order, list the frequency count of 
-- employee last names, 
-- i.e., how many employees share each last name.
Select last_name, count(emp_no) as name_count
From employees
Group By last_name
Order By name_count Desc;
