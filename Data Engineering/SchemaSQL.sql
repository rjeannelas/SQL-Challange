DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
 
CREATE TABLE "departments" (
    "dept_no" VARCHAR (10) NOT NULL,
    "dept_name" VARCHAR (30) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

	INSERT INTO departments (dept_no, dept_name)
	VALUES
	('d001','Marketing'),
	('d002','Finance'),
	('d003','Human_Resources'),
	('d004','Production'),
	('d005','Development'),
	('d006','Quality_Management'),
	('d007','Sales'),
	('d008','Research'),
	('d009','Customer Service');
	
SELECT * FROM departments LIMIT 10;

CREATE TABLE "dept_emp" (
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR (30) NOT NULL
);

SELECT * FROM dept_emp LIMIT 10;

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR (10) NOT NULL,
    "emp_no" INT NOT NULL
);

	INSERT INTO dept_manager (dept_no, emp_no)
	VALUES
	('d001','110022'),
	('d001','110039'),
	('d002','110085'),
	('d002','110114'),
	('d003','110183'),
	('d003','110228'),
	('d004','110303'),
	('d004','110344'),
	('d004','110386'),
	('d004','110420'),
	('d005','110511'),
	('d005','110567'),
	('d006','110725'),
	('d006','110765'),
	('d006','110800'),
	('d006','110854'),
	('d007','111035'),
	('d007','111133'),
	('d008','111400'),
	('d008','111534'),
	('d009','111692'),
	('d009','111784'),
	('d009','111877'),
	('d009','111939');
	
SELECT * FROM dept_manager LIMIT 10;

CREATE TABLE "employees" (
    "emp_no" INT NOT NULL,
    "emp_title_id" VARCHAR (30) NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" VARCHAR (30) NOT NULL,
    "last_name" VARCHAR (30) NOT NULL,
    "sex" VARCHAR (5) NOT NULL,
    "hire_date" date NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

SELECT * FROM employees LIMIT 10;

CREATE TABLE "salaries" (
    "emp_no" INT NOT NULL,
    "salary" INT NOT NULL
);

SELECT * FROM salaries LIMIT 10;

CREATE TABLE "titles" (
    "title_id" VARCHAR (30) NOT NULL,
    "title" VARCHAR (30) NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

	INSERT INTO titles (title_id, title)
	VALUES
	('s0001', 'Staff'),
	('s0002', 'Senior_Staff'),
	('e0001', 'Assistant_Engineer'),
	('e0002', 'Engineer'),
	('e0003', 'Senior_Engineer'),
	('e0004','Technique_Leader'),
	('m0001','Manager');

SELECT * FROM titles LIMIT 10;
