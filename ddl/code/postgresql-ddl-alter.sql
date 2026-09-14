/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Data Definition Language
* Author       : Team Tinitiate
  *******************************************************************************/
  
-- ALTER:
-- Alter table "dept": Rename the column "dname" to "department_name".
ALTER TABLE employees.dept
RENAME COLUMN dname TO department_name;

-- To change back to previous
ALTER TABLE employees.dept
RENAME COLUMN department_name TO dname;

-- Alter table "emp": Add a new column called "hire_date" of type DATE.
ALTER TABLE employees.emp
ADD COLUMN hire_date DATE;

-- To change back to previous
ALTER TABLE employees.emp
DROP COLUMN hire_date;

-- Alter table "projects":
-- Change the data type of the column "budget" to DECIMAL(12,2).
ALTER TABLE employees.projects
ALTER COLUMN budget TYPE DECIMAL(12,2);

-- To change back to previous
ALTER TABLE employees.projects
ALTER COLUMN budget TYPE NUMERIC(12,2);

-- Alter table "emp_projects": Drop the column "end_date".
ALTER TABLE employees.emp_projects
DROP COLUMN end_date;

-- To change back to previous
ALTER TABLE employees.emp_projects
ADD COLUMN end_date DATE;