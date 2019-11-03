-- DROP TABLE salaries;
-- DROP TABLE titles;
-- DROP TABLE dept_manager;
-- DROP TABLE dept_emp;
-- DROP TABLE departments;
-- DROP TABLE employees;

CREATE TABLE employees(
    emp_no INT PRIMARY KEY,
    birth_date DATE,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    gender VARCHAR(1),
    hire_date VARCHAR(10) NOT NULL
);

SELECT * FROM employees;

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date VARCHAR(10),
	to_date VARCHAR(10) DEFAULT '9999-01-01'
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date VARCHAR(10),
	to_date VARCHAR(10) DEFAULT '9999-01-01'
);

SELECT * FROM dept_manager;

CREATE TABLE salaries(
    emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INT NOT NULL,
    from_date VARCHAR,
    to_date VARCHAR DEFAULT '9999-01-01'
);

SELECT * FROM salaries;

CREATE TABLE titles(
    emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    title VARCHAR,
    from_date VARCHAR(10),
    to_date VARCHAR(10) DEFAULT '9999-01-01'
);

SELECT * FROM titles;
