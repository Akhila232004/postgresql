![PostgreSQL Tinitiate Image](/postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](/README.md)

# DDL - Data Definition Language
* In PostgreSQL, DDL (Data Definition Language) refers to a set of SQL commands used to define, modify, and remove the structure of database objects. These objects include tables, indexes, views, schemas, sequences, and more. 
* DDL statements are essential for setting up the database schema, defining relationships between tables, and ensuring data integrity. They provide the framework for organizing and managing data within PostgreSQL databases.

## Primary DDL commands in PostgreSQL:
### CREATE:
* Used to create new database objects like tables, indexes, views, schemas, sequences, etc.
```sql
-- Use database
USE DATABASE tinitiate;

-- Schema DDL
CREATE SCHEMA emp; #OUTPUT: Updated Rows: 0
CREATE USER ti WITH PASSWORD 'Tinitiate!23'; #OUTPUT: Updated Rows: 0
ALTER SCHEMA emp OWNER TO ti; #OUTPUT: Updated Rows: 0

-- Set the schema where you want to create the DB objects
SET search_path TO emp;  #OUTPUT: Updated Rows: 0

-- DDL Create Command
-- Create dept table
CREATE TABLE employees.dept (
    deptno INT,
    dname  VARCHAR(14),
    loc    VARCHAR(13)
); #OUTPUT: Updated Rows: 0


-- Create emp table
CREATE TABLE employees.emp (
    empno        INT,
    ename        VARCHAR(10),
    job          VARCHAR(9),
    mgr          NUMERIC(4),
    sal          NUMERIC(7,2),
    commission   NUMERIC(7,2),
    deptno       INT
); #OUTPUT: Updated Rows: 0

-- Create Salgrade table
CREATE TABLE employees.salgrade (
    grade INT,
    losal INT,
    hisal INT
); #OUTPUT: Updated Rows: 0

-- Create projects table
CREATE TABLE employees.projects (
    projectno          INT,
    budget             NUMERIC(7,2),
    monthly_commission NUMERIC(7,2)
); #OUTPUT: Updated Rows: 0

-- Create empprojects table
CREATE TABLE employees.emp_projects (
    emp_projectno INT,
    empno         INT,
    projectno     INT,
    start_date    DATE,
    end_date      DATE
); #OUTPUT: Updated Rows: 0

```

### ALTER:
* Modifies the structure of existing database objects, such as adding or dropping columns from a table.
```sql
-- Alter table "employees.dept": Rename the column "dname" to "department_name".
ALTER TABLE employees.dept RENAME COLUMN dname TO department_name; #OUTPUT: Updated Rows: 0
-- To change back to previous
ALTER TABLE employees.dept RENAME COLUMN department_name TO dname; #OUTPUT: Updated Rows: 0

-- Alter table "employees.emp": Add a new column called "hire_date" of type DATE.
ALTER TABLE employees.emp ADD COLUMN hire_date DATE; #OUTPUT: Updated Rows: 0
-- To change back to previous
ALTER TABLE employees.emp DROP COLUMN hire_date; #OUTPUT: Updated Rows: 0

-- Alter table "employees.projects":
-- Change the data type of the column "budget" to DECIMAL(12,2).
ALTER TABLE employees.projects ALTER COLUMN budget TYPE DECIMAL(12,2); #OUTPUT: Updated Rows: 0
-- To change back to previous
ALTER TABLE employees.projects ALTER COLUMN budget TYPE NUMERIC(12,2); #OUTPUT: Updated Rows: 0

-- Alter table "employees.emp_rojects": Drop the column "end_date".
ALTER TABLE employees.emp_projects DROP COLUMN end_date; #OUTPUT: Updated Rows: 0
-- To change back to previous
ALTER TABLE employees.emp_projects ADD COLUMN end_date DATE; #OUTPUT: Updated Rows: 0
```

### DROP:
* Deletes existing database objects, such as tables, indexes, or views.
```sql
-- To drop dept table in emp schema
DROP TABLE emp.dept; #OUTPUT: Updated Rows: 0

-- To again create it
CREATE TABLE emp.dept (
    deptid  integer,
    dname   varchar(100)
);  #OUTPUT: Updated Rows: 0
```

##### [Back To Contents](/README.md)

---

| © TINITIATE.COM |
| --------------- |
