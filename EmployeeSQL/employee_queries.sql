--1
SELECT employees.emp_no, 
    employees.last_name, 
    employees.first_name, 
    employees.sex, 
    salary.salary
FROM employees 
INNER JOIN salary ON salary.emp_no=employees.emp_no;

--2
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
;

--3
SELECT dept_manager.dept_no, 
    departments.dept_name, 
    dept_manager.emp_no, 
    employees.last_name, 
    employees.first_name
FROM dept_manager
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no
;

--4
SELECT employees.emp_no, 
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
;

--5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%'
;

--6
SELECT employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
;

--7
SELECT employees.emp_no, 
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' or departments.dept_name = 'Development'
;

--8
SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
;