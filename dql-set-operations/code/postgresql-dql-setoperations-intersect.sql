/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Set Operations
* Author       : Team Tinitiate
  *******************************************************************************/
--INTERSECT:
-- Retrieve grade number that exist in both the employees
-- and projects tables
SELECT grade FROM employees.salgrade
INTERSECT
SELECT projectno AS grade FROM employees.projects;

-- Retrieve employee names that exist in both the employees
-- and employee-projects tables
SELECT empno
FROM employees.emp
INTERSECT
SELECT empno
FROM employees.emp_projects;

-- INTERSECT ALL: This operator does same as INTERSECT, including duplicate rows
-- Find employees who are also in projects, including duplicates
SELECT empno FROM employees.emp
INTERSECT ALL
SELECT empno FROM employees.emp_projects;