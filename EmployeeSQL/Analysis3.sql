-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, dep.dept_name, dept_manager.emp_no, emp.first_name, emp.last_name
FROM dept_manager AS dept_manager
INNER JOIN departments AS dep
ON dept_manager.dept_no = dep.dept_no
INNER JOIN employees AS emp
ON dept_manager.emp_no = emp.emp_no;
