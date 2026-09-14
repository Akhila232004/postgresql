/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DML - Data Manipulation Language
* Author       : Team Tinitiate
  *******************************************************************************/

-- INSERT:
-- Insert with column created order
INSERT INTO employees.dept (deptno, dname) VALUES (1000, 'PRODUCTION'); 

INSERT INTO employees.emp (empno, ename, sal, deptno) VALUES
(101, 'John Doe', 5000.00, 1000);

INSERT INTO employees.emp (empno, ename, sal, deptno) VALUES
(102, 'Jane Smith', 6000.00, 2000);

-- Insert with column names, use positional values
INSERT INTO employees.dept VALUES (2000, 'FOUNDRY');

-- Insert with column names, different order
INSERT INTO employees.dept (dname, deptno) VALUES ('STORES', 3000);

-- Insert without schema mentioning untill you are in the same schema
INSERT INTO employees.dept (deptno, dname) VALUES (4000, 'SALES');

-- Insert all, Insert more data in single insert
INSERT INTO employees.dept (deptno, dname)
VALUES 
    (111, 'TECHNOLOGY'),
    (211, 'FACTORY'),
    (311, 'RETAIL'); 

-- Insert with select statement (Copy data from another table)
-- Create table dept1
CREATE TABLE employees.dept1 (
    deptno INT,
    dname VARCHAR(100)
);

-- Insert data from dept into dept1
INSERT INTO employees.dept1 (deptno, dname)
SELECT deptno, dname
FROM employees.dept;

-- Incorrect data violations

-- Primary Key violation
INSERT INTO employees.dept (deptno, dname) VALUES (4000, 'MARKETING');

-- DataType Size violation
INSERT INTO employees.dept (deptno, dname) 
VALUES (6, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');

-- Foreign Key violation
INSERT INTO employees.emp (
    empno,
    ename,
    job,
    mgr,
    sal,
    commission,
    deptno
)
VALUES (
    16,
    '4A',
    NULL,
    NULL,
    11000.00,
    NULL,
    6
);