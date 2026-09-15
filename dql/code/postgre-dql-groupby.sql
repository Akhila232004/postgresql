/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Data Query Language
* Author       : Team Tinitiate
  *******************************************************************************/

--GROUPBY CLAUSE:
-- Calculate the total salary expense for each dept
SELECT deptno, SUM(sal) AS total_salary
FROM employees.emp
GROUP BY deptno;

-- Count the number of employees in each job title
SELECT job, COUNT(*) AS num_employees
FROM employees.emp
GROUP BY job;

-- Calculate the average commission for each dept
SELECT deptno, AVG(commission) AS avg_commission
FROM employees.emp
GROUP BY deptno;
