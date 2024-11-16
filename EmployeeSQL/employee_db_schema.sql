CREATE TABLE departments(
	dept_no varchar(5) PRIMARY KEY,
	dept_name varchar(30) NOT NULL
);

CREATE TABLE titles(
	title_id varchar(5) PRIMARY KEY,
	title varchar(30) NOT NULL
);

CREATE TABLE employees(
	emp_no int PRIMARY KEY,
	emp_title_id varchar(5) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	sex char(1) NOT NULL,
	hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	dept_no varchar(5) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no,dept_no)
);

CREATE TABLE dept_manager(
	dept_no varchar(5) NOT NULL,
	emp_no int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(emp_no,dept_no)
);

CREATE TABLE salaries(
	emp_no int PRIMARY KEY,
	salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);