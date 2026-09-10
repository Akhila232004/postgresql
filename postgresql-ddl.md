![PostgreSQL Tinitiate Image](postgresql_tinitiate.png)

# PostgreSQL
&copy; TINITIATE.COM

##### [Back To Context](./README.md)

# DDL - Data Definition Language
* In PostgreSQL, DDL (Data Definition Language) refers to a set of SQL commands used to define, modify, and remove the structure of database objects. These objects include tables, indexes, views, schemas, sequences, and more. 
* DDL statements are essential for setting up the database schema, defining relationships between tables, and ensuring data integrity. They provide the framework for organizing and managing data within PostgreSQL databases.

## Primary DDL commands in PostgreSQL:
### CREATE:
* Used to create new database objects like tables, indexes, views, schemas, sequences, etc.
```sql
-- Connect to database
\c tinitiate 
#OUTPUT: You are now connected to database "tinitiate" as user "postgres".
         # tinitiate=#

-- Schema DDL
CREATE SCHEMA emp; #OUTPUT: CREATE SCHEMA
CREATE USER ti WITH PASSWORD 'Tinitiate!23'; #OUTPUT: CREATE ROLE
ALTER SCHEMA emp OWNER TO ti; #OUTPUT: ALTER SCHEMA

-- Set the schema where you want to create the DB objects
SET search_path TO emp; #OUTPUT: SET

-- DDL Create Command
-- Create dept table
CREATE TABLE emp.dept (
    deptno INT,
    dname  VARCHAR(14),
    loc    VARCHAR(13)
);
#OUTPUT: CREATE TABLE

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
#OUTPUT: CREATE TABLE

-- Create Salgrade table
CREATE TABLE emp.salgrade (
    grade INT,
    losal INT,
    hisal INT
);
#OUTPUT: CREATE TABLE

-- Create projects table
CREATE TABLE emp.projects (
    projectno          INT,
    budget             NUMERIC(7,2),
    monthly_commission NUMERIC(7,2)
);
#OUTPUT: CREATE TABLE

-- Create emp_projects table
CREATE TABLE emp.emp_projects (
    emp_projectno INT,
    empno         INT,
    projectno     INT,
    start_date    DATE,
    end_date      DATE
);
#OUTPUT: CREATE TABLE
```

### ALTER:
* Modifies the structure of existing database objects, such as adding or dropping columns from a table.
```sql
-- Alter table "dept": Rename the column "dname" to "department_name".
ALTER TABLE emp.dept RENAME COLUMN dname TO department_name; #OUTPUT: ALTER TABLE
-- To change back to previous
ALTER TABLE emp.dept RENAME COLUMN department_name TO dname; #OUTPUT: ALTER TABLE

-- Alter table "emp": Add a new column called "hire_date" of type DATE. 
ALTER TABLE emp.emp ADD COLUMN hire_date DATE; #OUTPUT: ALTER TABLE
-- To change back to previous
ALTER TABLE emp.emp DROP COLUMN hire_date; #OUTPUT: ALTER TABLE

-- Alter table "projects":
-- Change the data type of the column "budget" to DECIMAL(12,2).
ALTER TABLE emp.projects ALTER COLUMN budget TYPE DECIMAL(12,2); #OUTPUT: ALTER TABLE
-- To change back to previous
ALTER TABLE emp.projects ALTER COLUMN budget TYPE NUMERIC(12,2); #OUTPUT: ALTER TABLE

-- Alter table "emp_rojects": Drop the column "end_date".
ALTER TABLE emp.emp_projects DROP COLUMN end_date; #OUTPUT: ALTER TABLE
-- To change back to previous
ALTER TABLE emp.emp_projects ADD COLUMN end_date DATE; #OUTPUT: ALTER TABLE
```

### DROP:
* Deletes existing database objects, such as tables, indexes, or views.
```sql
-- To drop dept table in emp schema
DROP TABLE emp.dept; #OUTPUT: DROP TABLE

-- To again create it
CREATE TABLE emp.dept (
    deptid  integer,
    dname   varchar(100)
);
#OUTPUT: CREATE TABLE
```

##### [Back To Context](./README.md)
***
| &copy; TINITIATE.COM |
|----------------------|
