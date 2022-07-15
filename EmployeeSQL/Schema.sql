-- dropping tables in case they already exist (was useful during testing)
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;

-- had to bring departments and employees upfront due to the foreign keys used in the other tables
CREATE TABLE departments(
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

Select * from departments;

CREATE TABLE employees(
    emp_no integer NOT NULL,
    emp_title VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(20) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees;

CREATE TABLE dept_emp(
    emp_no INT NOT NULL,
    dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

Select * from dept_emp;

CREATE TABLE dept_manager(
    dept_no VARCHAR(50) NOT NULL,
	emp_no integer NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

Select * from dept_manager;

CREATE TABLE salaries(
	emp_no integer NOT NULL,
	salary integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

select * from salaries;

CREATE TABLE titles(
	title_id VARCHAR(50) NOT NULL,
	title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id)
);

Select * from titles;