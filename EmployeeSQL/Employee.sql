CREATE TABLE departments (
	dept_no VARCHAR(50) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY NOT NULL,
	salary INTEGER NOT NULL
);

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	hire_date VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES salaries
);

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(50) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(50) PRIMARY KEY NOT NULL,
	emp_no VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	title_id INTEGER PRIMARY KEY NOT NULL,
	title VARCHAR(50) NOT NULL,
	FOREIGN KEY (title_id) REFERENCES employees(emp_no)
);