/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Aggregate Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--AVG:
-- Calculates the average value of a sal column
SELECT AVG(sal) AS avg_salary FROM employees.emp;

-- Find the average salary of employees in each job position
SELECT job, AVG(sal) AS avg_salary 
FROM employees.emp 
GROUP BY job;

-- Find the average salary of employees hired after 1982
SELECT AVG(sal) AS avg_salary 
FROM employees.emp 
WHERE EXTRACT(YEAR FROM hiredate) > 1982;

-- Identify the departments where the average salary is higher than $2500
SELECT deptno 
FROM employees.emp 
GROUP BY deptno 
HAVING AVG(sal) > 2500;

-- Find the job position with the highest average salary and
-- display the result along with the average salary
SELECT job, AVG(sal) AS avg_salary 
FROM employees.emp 
GROUP BY job
ORDER BY avg_salary DESC
LIMIT 1;