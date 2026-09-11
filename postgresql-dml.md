![PostgreSQL Tinitiate Image](postgresql_tinitiate.png)

# PostgreSQL
&copy; TINITIATE.COM

##### [Back To Context](./README.md)

# DML - Data Manipulation Language
* In PostgreSQL, DML (Data Manipulation Language) consists of SQL commands that allow users to manipulate data within a database.
* DML commands are used to perform operations such as inserting, updating and  deleting.

## Primary DML commands in PostgreSQL:
### INSERT:
* This command is used to add new rows of data into a table.
* You can specify the values to be inserted into each column of the table.
```sql
-- Insert with column created order
INSERT INTO emp.dept (deptid, dname) VALUES (1000, 'PRODUCTION'); #OUTPUT: INSERT 0 1
INSERT INTO emp.emp (empno, ename, sal, deptno) VALUES
(101, 'John Doe', 5000.00, 1000); #OUTPUT: INSERT 0 1

-- Insert department 2000 before inserting employee 102
-- because emp.dept.deptid is referenced by emp.emp.deptno.
INSERT INTO emp.dept VALUES (2000, 'FOUNDRY');#OUTPUT: INSERT 0 1

INSERT INTO emp.emp (empno, ename, sal, deptno) VALUES
(102, 'Jane Smith', 6000.00, 2000);#OUTPUT: INSERT 0 1

-- Insert with column names, different order
INSERT INTO emp.dept (dname, deptid) VALUES ('STORES', 3000);#OUTPUT: INSERT 0 1

-- Insert without schema mentioning untill you are in the same schema
INSERT INTO emp.dept (deptid, dname) VALUES (4000, 'SALES');#OUTPUT: INSERT 0 1

-- Insert all, Insert more data in single insert
INSERT INTO emp.dept (deptid, dname)
VALUES 
    (111, 'TECHNOLOGY'),
    (211, 'FACTORY'),
    (311, 'RETAIL');
#OUTPUT: INSERT 0 3

-- Insert with select statement (Copy data from another table)
-- Create table dept1
CREATE TABLE emp.dept1 (
    deptid INT,
    dname VARCHAR(100)
);#OUTPUT: CREATE TABLE
-- Insert data from dept into dept1
INSERT INTO emp.dept1 (deptid, dname)
SELECT deptid, dname
FROM emp.dept; #OUTPUT: INSERT 0 7

-- Incorrect data violations
-- Primary Key violation
INSERT INTO emp.dept (deptid, dname) VALUES (4000, 'MARKETING'); #OUTPUT: ERROR:  duplicate key value violates unique constraint "pk_dept"
                                                                 # DETAIL:  Key (deptid)=(4000) already exists.

-- DataType Size violation
INSERT INTO emp.dept (deptid, dname) 
VALUES (6, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'); #OUTPUT: ERROR:  value too long for type character varying(100)

-- Foreign Key violation:
-- deptno 6 does not exist in emp.dept.deptid.
INSERT INTO emp.emp (empno, ename, sal, deptno)
VALUES (17, '4A', 11000.00, 6); #OUTPUT: ERROR:  insert or update on table "emp" violates foreign key constraint "fk_deptid"
                                #DETAIL:  Key (deptno)=(6) is not present in table "dept"
```

### UPDATE:
* This command is used to modify existing data in a table.
* You can update one or more columns of existing rows based on a specified condition.
```sql
-- Update salary of an employee
UPDATE emp.emp
SET sal = 6200.00
WHERE empno = 101; #OUTPUT: UPDATE 1

-- Update project end date.
-- This updates an existing emp_projects row for employee 101 and project 1.
-- If no matching row exists, PostgreSQL returns UPDATE 0.
UPDATE emp.emp_projects
SET end_date = '2024-06-01'
WHERE projectno = 1 AND empno = 101; #OUTPUT: UPDATE 0
```

### DELETE:
* This command is used to remove one or more rows from a table based on a specified condition.
```sql
-- Delete a dept
DELETE FROM emp.dept WHERE deptid = 3000; #OUTPUT: DELETE 1


-- Remove an employee
DELETE FROM emp.emp
WHERE empno = 101; #OUTPUT: DELETE 1

```

##### [Back To Context](./README.md)
***
| &copy; TINITIATE.COM |
|----------------------|
