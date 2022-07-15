-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS dept_emp
ON emp.emp_no = dept_emp.emp_no
INNER JOIN departments AS dep
ON dept_emp.dept_no = dep.dept_no
WHERE dep.dept_name in ('Sales','Development');
