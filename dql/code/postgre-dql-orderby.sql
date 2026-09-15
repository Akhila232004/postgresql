/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Data Query Language
* Author       : Team Tinitiate
  *******************************************************************************/
--ORDERBY CLAUSE:
-- Retrieve employees sorted by salary in descending order
SELECT *
FROM employees.emp
ORDER BY sal DESC;

-- Retrieve employees sorted by hire date in ascending order
SELECT *
FROM employees.emp
ORDER BY hiredate ASC;

-- Retrieve employees sorted by department number in
-- aescending and salary in descending order
SELECT *
FROM employees.emp
ORDER BY deptno ASC, sal DESC;