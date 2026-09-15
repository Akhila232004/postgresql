/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL Data Setup
* Author       : Team Tinitiate
  *******************************************************************************/

-- Create tables
-- Set the schema where you want to create the database objects
SET search_path TO employees;
-- Drop tables from the "employees" schema if any exists
DROP TABLE employees.emp_projects;
DROP TABLE employees.emp;
DROP TABLE employees.dept;
DROP TABLE employees.salgrade;
DROP TABLE employees.projects;
-- Create table employees.dept
-- Primary Key constraint for employees.dept on deptno
CREATE TABLE employees.dept
( 
  deptno INT NOT NULL,
  dname VARCHAR(14),
  loc VARCHAR(13),
  CONSTRAINT pk_dept PRIMARY KEY (deptno)
);
-- Create table employees.emp
-- Primary Key constraint for employees.emp on empno
-- Foreign key constraint for
-- employees.emp.deptno referring employees.dept.deptno
CREATE TABLE employees.emp
( 
  empno      INT NOT NULL,
  ename      VARCHAR(10),
  job        VARCHAR(9),
  mgr        NUMERIC(4),
  hiredate   DATE,
  sal        NUMERIC(7,2),
  commission NUMERIC(7,2),
  deptno     INT NOT NULL,
  CONSTRAINT pk_empno PRIMARY KEY (empno),
  CONSTRAINT fk_deptno FOREIGN KEY (deptno) REFERENCES employees.dept (deptno)
);
-- Create table employees.salgrade
-- Primary Key constraint for employees.salgrade on grade
CREATE TABLE employees.salgrade
( 
  grade INT NOT NULL,
  losal INT,
  hisal INT,
  CONSTRAINT pk_grade PRIMARY KEY (grade)
);
-- Create table employees.projects
-- Primary Key constraint for employees.projects on projectno
CREATE TABLE employees.projects
( 
  projectno           INT NOT NULL,
  budget              NUMERIC(7,2),
  monthly_commission  NUMERIC(7,2),
  CONSTRAINT pk_projectno PRIMARY KEY (projectno)
);
-- Create table employees.emp_projects
-- Primary Key constraint for employees.emp_projects on emp_projectno
-- Foreign key constraint for
-- employees.emp_projects.empno referring employees.emp.empno
-- Foreign key constraint for employees.emp_projects.projectno referring employees.projects.projectno
CREATE TABLE employees.emp_projects
( 
  emp_projectno  INT NOT NULL,
  empno          INT NOT NULL,
  projectno      INT NOT NULL,
  start_date     DATE,
  end_date       DATE,
  CONSTRAINT pk_emp_projectno PRIMARY KEY (emp_projectno),
  CONSTRAINT fk_empno FOREIGN KEY (empno) REFERENCES employees.emp (empno),
  CONSTRAINT fk_projectno FOREIGN KEY (projectno)
   REFERENCES employees.projects (projectno)
);
