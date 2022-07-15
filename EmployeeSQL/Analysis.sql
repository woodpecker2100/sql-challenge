-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, salaries.salary, employees.last_name, employees.first_name, employees.sex
from employees
left join salaries on employees.emp_no= salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select hire_date, first_name, last_name
from employees
where hire_date between '1986-01-01' and '1986-12-31' 
order by hire_date;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, dep.dept_name, dept_manager.emp_no, emp.first_name, emp.last_name
from dept_manager as dept_manager
inner join departments as dep
on dept_manager.dept_no = dep.dept_no
inner join employees as emp
on dept_manager.emp_no = emp.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
from employees as emp
inner join dept_emp as dept_emp
on emp.emp_no = dept_emp.emp_no
inner join departments as dep
on dept_emp.dept_no = dep.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees 
where
	first_name = 'Hercules' and last_name like 'B%';
	
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from employees as emp
inner join dept_emp as dept_emp
on emp.emp_no = dept_emp.emp_no
inner join departments as dep
on dept_emp.dept_no = dep.dept_no
where dep.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from employees as emp
inner join dept_emp as dept_emp
on emp.emp_no = dept_emp.emp_no
inner join departments as dep
on dept_emp.dept_no = dep.dept_no
where dep.dept_name in ('Sales','Development');

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*)
FROM employees
GROUP BY last_name
ORDER BY count(*) DESC;