/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Data Query Language
* Author       : Team Tinitiate
  *******************************************************************************/
--HAVING CLAUSE:
-- Retrieve departments with more than two employees
SELECT deptno, COUNT(*) AS num_employees
FROM employees.emp
GROUP BY deptno
HAVING COUNT(*) > 2;

-- Retrieve job titles with an average salary greater than 2500
SELECT job, AVG(sal) AS avg_salary
FROM employees.emp
GROUP BY job
HAVING AVG(sal) > 2500;

-- Retrieve departments where the total salary expense exceeds 10000
SELECT deptno, SUM(sal) AS total_salary
FROM employees.emp
GROUP BY deptno
HAVING SUM(sal) > 10000;