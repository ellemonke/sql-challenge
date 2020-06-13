-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
   FROM employees e
   JOIN salaries s ON s.emp_no=e.emp_no;

-- List employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
  FROM employees
 WHERE hire_date LIKE '1986%';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no, 
	   d.dept_name,
	   dm.emp_no,
	   (SELECT last_name 
	  	  FROM employees e 
	 	 WHERE e.emp_no=dm.emp_no),
	   (SELECT first_name 
	  	  FROM employees e 
	 	 WHERE e.emp_no=dm.emp_no),
	   from_date, 
	   to_date
   FROM dept_manager dm
   JOIN departments d ON d.dept_no=dm.dept_no;
		
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT de.emp_no, 
	   (SELECT last_name 
		  FROM employees e 
		 WHERE e.emp_no=de.emp_no), 
	   (SELECT first_name 
		  FROM employees e 
		 WHERE e.emp_no=de.emp_no),
	   (SELECT dept_name 
		  FROM departments d 
		 WHERE d.dept_no=de.dept_no)
   FROM dept_emp de;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name 
  FROM employees
 WHERE first_name='Hercules' 
   AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, 'Sales' AS department
  FROM employees e 
 WHERE e.emp_no IN 
	   (SELECT de.emp_no 
		  FROM dept_emp de
		 WHERE de.dept_no IN
			   (SELECT d.dept_no 
				  FROM departments d 
				 WHERE dept_name='Sales')
		);

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept_name 
  FROM employees e 
  JOIN dept_emp de 
    ON e.emp_no=de.emp_no
  JOIN departments d 
    ON de.dept_no=d.dept_no
 WHERE dept_name='Sales' OR dept_name='Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) 
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;
