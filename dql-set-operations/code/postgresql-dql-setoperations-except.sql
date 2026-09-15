/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Set Operations
* Author       : Team Tinitiate
  *******************************************************************************/
--EXCEPT:
-- Retrieve empno numbers from the employees table that
-- do not exist in the emp_projects table
SELECT empno FROM employees.emp
EXCEPT
SELECT empno as empno FROM employees.emp_projects;

-- Retrieve employee names from the employees table that
-- do not exist in the emp_projects table
SELECT empno
FROM employees.emp
EXCEPT
SELECT empno
FROM employees.emp_projects;

-- EXCEPT ALL: 
-- Find employee numbers that are not part of any project,
-- including duplicate occurrences
SELECT empno
FROM employees.emp
EXCEPT ALL
SELECT empno
FROM employees.emp_projects;