/*******************************************************************************

* Organization : TINITIATE TECHNOLOGIES PVT LTD
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Constraints
* Author       : Team Tinitiate
  *******************************************************************************/

-- NOT NULL CONSTRAINT:
-- Create table with NOT NULL constraint
CREATE TABLE emp.dept (
deptno INT NOT NULL,
dname  VARCHAR(14),
loc    VARCHAR(13)
);

-- UNIQUE CONSTRAINT:
-- Create table with UNIQUE constraint
CREATE TABLE emp.dept (
deptno INT UNIQUE,
dname  VARCHAR(14),
loc    VARCHAR(13)
);

-- CHECK CONSTRAINT:
-- Create table with CHECK constraint
CREATE TABLE emp.emp (
empno INT,
ename VARCHAR(10),
sal   NUMERIC(7,2) CHECK (sal > 0),
deptno INT
);

-- PRIMARY KEY CONSTRAINT:
-- Create table with PRIMARY KEY constraint
CREATE TABLE emp.dept (
deptno INT PRIMARY KEY,
dname  VARCHAR(14),
loc    VARCHAR(13)
);

-- FOREIGN KEY CONSTRAINT:
-- Create parent table
CREATE TABLE emp.dept (
deptno INT PRIMARY KEY,
dname  VARCHAR(14),
loc    VARCHAR(13)
);

-- Create child table with FOREIGN KEY constraint
CREATE TABLE emp.emp (
empno  INT PRIMARY KEY,
ename  VARCHAR(10),
deptno INT,
CONSTRAINT fk_emp_dept
FOREIGN KEY (deptno)
REFERENCES emp.dept(deptno)
);
