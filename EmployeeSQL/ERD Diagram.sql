department
----
dept_no VARCHAR PK FK >- Dept_emp.det_no
dept_name VARCHAR

Dept_emp
----
emp_no VARCHAR PK FK >- employee.emp_no
det_no VARCHAR

dept_manager
----
dept_no VARCHAR PK FK >- department.dept_no
emp_no VARCHAR FK >- employee.emp_no

employee
----
emp_no VARCHAR PK
emp_title_id VARCHAR FK >- title.title_id
birth_date DATE
first_name VARCHAR 
last_name VARCHAR
sex VARCHAR
hire_date DATE

salaries
------------
emp_no VARCHAR PK FK >- employee.emp_no
salary INTEGER

title
----
title_id VARCHAR PK
title VARCHAR
