select * from departments
select * from dept_emp --
select * from dept_manager
select * from employees
select * from salaries
select * from titles --

--departments
--dept_emp
--dept_manager
--employees
--salaries
--titles




dept_no	varchar
dept_name varchar

dept_no varchar
emp_no varchar
from_date varchar
to_date	varchar


emp_no int
birth_date date
first_name varchar
last_name varchar
gender varchar
hire_date date

Dept_Emp
-
emp_no varchar pk
dept_no int pk
from_date date
to_date date

Salaries
-
emp_no int pk
salary int
from_date date
to_date date

Titles
-
emp_no int
title varchar
from_date date
to_date date




alter TABLE departments 
alter column     dept_no VARCHAR(4) NOT NULL,
alter column        dept_name VARCHAR(40) NOT NULL,
alter column        PRIMARY KEY (dept_no),
alter column        UNIQUE (dept_name)


CREATE TABLE departments1 (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

insert into departments1
select * from departments

EXEC sp_rename 'departments1', 'departments'

drop table Employees1
CREATE TABLE Employees1 (
     emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR(50) NOT NULL,
     last_name VARCHAR(50) NOT NULL,
     gender VARCHAR(50) NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

insert into Employees1
select *
from Employees

drop table Employees
EXEC sp_rename 'Employees1', 'Employees'


CREATE TABLE dept_manager1 (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);


insert into dept_manager1
select *
from dept_manager

drop table dept_manager
EXEC sp_rename 'dept_manager1', 'dept_manager'

select *
from salaries1

CREATE TABLE salaries1 (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);


insert into salaries1
select *
from salaries

drop table salaries
EXEC sp_rename 'salaries1', 'salaries'
