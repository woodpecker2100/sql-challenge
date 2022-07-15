--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT hire_date, first_name, last_name
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31' 
order by hire_date;
