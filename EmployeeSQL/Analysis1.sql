-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, salaries.salary, employees.last_name, employees.first_name, employees.sex
FROM employees
LEFT JOIN salaries ON employees.emp_no= salaries.emp_no;
