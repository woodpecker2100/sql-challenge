-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM employees AS emp
INNER JOIN dept_emp AS dept_emp
ON emp.emp_no = dept_emp.emp_no
INNER JOIN departments AS dep
ON dept_emp.dept_no = dep.dept_no;
