/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Set Operations
* Author       : Team Tinitiate
  *******************************************************************************/

-- UNION:
-- Retrieve unique department numbers from both the employees 
-- and projects tables
SELECT deptno FROM employees.emp
UNION
SELECT projectno AS deptno FROM employees.projects;

-- Retrieve unique employee names and project names from both the employees
-- and projects tables
SELECT ename AS name FROM employees.emp
UNION
SELECT 'Project: ' || projectno AS name FROM employees.projects;

-- Combine the names of employees, departments, and projects
SELECT ename AS name FROM employees.emp
UNION
SELECT dname AS name FROM employees.dept
UNION
SELECT projectno::TEXT AS name FROM employees.projects;

-- UNION ALL: This operator does same as UNION with including duplicate rows
-- Retrieve all department numbers from both the employees
-- and projects tables
SELECT deptno FROM employees.emp
UNION ALL
SELECT projectno AS deptno FROM employees.projects;