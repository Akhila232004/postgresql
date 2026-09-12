/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DML - Data Manipulation Language
* Author       : Team Tinitiate
  *******************************************************************************/

-- INSERT:
-- Insert with column created order
INSERT INTO emp.dept (deptid, dname) VALUES (1000, 'PRODUCTION');
INSERT INTO emp.emp (empid, ename, sal, deptid) VALUES
(101, 'John Doe', 5000.00, 1000);
INSERT INTO emp (empid, ename, sal, deptid) VALUES
(102, 'Jane Smith', 6000.00, 2000);

-- Insert with column names, use positional values
INSERT INTO emp.dept VALUES (2000, 'FOUNDRY');

-- Insert with column names, different order
INSERT INTO emp.dept (dname, deptid) VALUES ('STORES', 3000);

-- Insert without schema mentioning untill you are in the same schema
INSERT INTO dept (deptid, dname) VALUES (4000, 'SALES');

-- Insert all, Insert more data in single insert
INSERT INTO emp.dept (deptid, dname)
VALUES 
    (111, 'TECHNOLOGY'),
    (211, 'FACTORY'),
    (311, 'RETAIL');

-- Insert with select statement (Copy data from another table)
-- Create table dept1
CREATE TABLE emp.dept1 (
    deptid INT,
    dname VARCHAR(100)
);
-- Insert data from dept into dept1
INSERT INTO emp.dept1 (deptid, dname)
SELECT deptid, dname
FROM emp.dept;

-- Incorrect data violations
-- Primary Key violation
INSERT INTO emp.dept (deptid, dname) VALUES (4000, 'MARKETING');

-- DataType Size violation
INSERT INTO emp.dept (deptid, dname) 
VALUES (6, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');

-- Foreign Key violation
INSERT INTO emp.emp VALUES (16, '4A', 11000.00, 6);