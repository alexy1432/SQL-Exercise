﻿-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no,e.first_name,e.last_name,e.gender,s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no
-- 2. List employees who were hired in 1986.
SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date LIKE '1986%'
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_name,e.first_name,e.last_name
FROM departments d
INNER JOIN dept_manager dm
ON d.dept_no=dm.dept_no
INNER JOIN employees e
ON dm.emp_no=e.emp_no
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT d.dept_no,d.dept_name,de.emp_no,e.first_name,e.last_name
FROM departments d
INNER JOIN dept_emp de
ON d.dept_no=de.dept_no
INNER JOIN employees e
ON de.emp_no=e.emp_no
-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name,last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT d.dept_name,de.emp_no,e.first_name,e.last_name
FROM departments d
INNER JOIN dept_emp de
ON d.dept_no=de.dept_no
INNER JOIN employees e
ON de.emp_no=e.emp_no
WHERE d.dept_name = 'Sales'
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT d.dept_name,de.emp_no,e.first_name,e.last_name
FROM departments d
INNER JOIN dept_emp de
ON d.dept_no=de.dept_no
INNER JOIN employees e
ON de.emp_no=e.emp_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development'
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,count(last_name)
FROM employees
GROUP BY last_name
