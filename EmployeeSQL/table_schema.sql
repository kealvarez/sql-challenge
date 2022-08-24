CREATE TABLE departments (
    dept_no VARCHAR(35) NOT NULL, 
    dept_name VARCHAR(35) NOT NULL,
    PRIMARY KEY (dept_no)
);


CREATE TABLE titles (
    title_id VARCHAR(35) NOT NULL, 
    title VARCHAR(35) NOT NULL,
    PRIMARY KEY (title_id)
);


CREATE TABLE employees (
    emp_no INT NOT NULL,
    title_id VARCHAR(35) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(35) NOT NULL,
    last_name VARCHAR (35) NOT NULL,
    sex VARCHAR (35) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (title_id) REFERENCES titles(title_id)
);


CREATE TABLE dept_emp (
    emp_no INT NOT NULL, 
    dept_no VARCHAR(35) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(35) NOT NULL, 
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE salary (
    emp_no INT NOT NULL,
    salary INT NOT NULL, 
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

