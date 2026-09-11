/*******************************************************************************

* Organization : TINITIATE TECHNOLOGIES PVT LTD
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DML - Data Manipulation Language
* Author       : Team Tinitiate
  *******************************************************************************/

-- INSERT:
-- Insert a single record into the dept table
INSERT INTO emp.dept (deptno, dname, loc)
VALUES (10, 'ACCOUNTING', 'NEW YORK');

-- Insert multiple records into the dept table
INSERT INTO emp.dept (deptno, dname, loc)
VALUES
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

-- UPDATE:
-- Update the location of department 10
UPDATE emp.dept
SET loc = 'BOSTON'
WHERE deptno = 10;

-- Update the salary of employees in department 10
UPDATE emp.emp
SET sal = sal + 500
WHERE deptno = 10;

-- DELETE:
-- Delete department 40
DELETE FROM emp.dept
WHERE deptno = 40;

-- Delete employees belonging to department 10
DELETE FROM emp.emp
WHERE deptno = 10;
