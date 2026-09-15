/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Aggregate Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--COUNT:
-- Counts the number of rows in a emp table
SELECT COUNT(*) AS total_employees FROM employees.emp;

-- Count the number of employees in each department
SELECT deptno, COUNT(*) AS num_employees 
FROM employees.emp 
GROUP BY deptno;

-- Count the number of employees hired after 1980 in each department and
-- only display departments with more than 3 employees
SELECT deptno, COUNT(*) AS num_employees 
FROM employees.emp 
WHERE EXTRACT(YEAR FROM hiredate) > 1980
GROUP BY deptno
HAVING COUNT(*) > 3;

-- Identify the number of employees hired each year
SELECT EXTRACT(YEAR FROM hiredate) AS hire_year, COUNT(*) AS num_employees 
FROM employees.emp 
GROUP BY hire_year;