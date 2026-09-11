/*******************************************************************************

* Organization : TINITIATE TECHNOLOGIES PVT LTD
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Data Definition Language
* Author       : Team Tinitiate
  *******************************************************************************/

-- CREATE:
-- Connect to database
\c tinitiate

-- Schema DDL
CREATE SCHEMA emp;
CREATE USER ti WITH PASSWORD 'Tinitiate!23';
ALTER SCHEMA emp OWNER TO ti;

-- Set the schema where you want to create the DB objects
SET search_path TO emp;

-- DDL Create Command
-- Create dept table
CREATE TABLE emp.dept (
deptno INT,
dname  VARCHAR(14),
loc    VARCHAR(13)
);

-- Create emp table
CREATE TABLE emp.emp (
empno        INT,
ename        VARCHAR(10),
job          VARCHAR(9),
mgr          NUMERIC(4),
sal          NUMERIC(7,2),
commission   NUMERIC(7,2),
deptno       INT
);

-- Create Salgrade table
CREATE TABLE emp.salgrade (
grade INT,
losal INT,
hisal INT
);

-- Create projects table
CREATE TABLE emp.projects (
projectno          INT,
budget             NUMERIC(7,2),
monthly_commission NUMERIC(7,2)
);

-- Create emp_projects table
CREATE TABLE emp.emp_projects (
emp_projectno INT,
empno         INT,
projectno     INT,
start_date    DATE,
end_date      DATE
);

-- ALTER:
-- Alter table "dept": Rename the column "dname" to "department_name".
ALTER TABLE emp.dept RENAME COLUMN dname TO department_name;

-- To change back to previous
ALTER TABLE emp.dept RENAME COLUMN department_name TO dname;

-- Alter table "emp": Add a new column called "hire_date" of type DATE.
ALTER TABLE emp.emp ADD COLUMN hire_date DATE;

-- To change back to previous
ALTER TABLE emp.emp DROP COLUMN hire_date;

-- Alter table "projects":
-- Change the data type of the column "budget" to DECIMAL(12,2).
ALTER TABLE emp.projects ALTER COLUMN budget TYPE DECIMAL(12,2);

-- To change back to previous
ALTER TABLE emp.projects ALTER COLUMN budget TYPE NUMERIC(12,2);

-- Alter table "emp_rojects": Drop the column "end_date".
ALTER TABLE emp.emp_projects DROP COLUMN end_date;

-- To change back to previous
ALTER TABLE emp.emp_projects ADD COLUMN end_date DATE;

-- DROP:
-- To drop dept table in emp schema
DROP TABLE emp.dept;

-- To again create it
CREATE TABLE emp.dept (
deptid  integer,
dname   varchar(100)
);
