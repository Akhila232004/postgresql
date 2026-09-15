/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Aggregate Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--SUM:
-- Calculates the sum of a sal of emp
SELECT SUM(sal) AS total_salary FROM employees.emp;

-- Calculate the total salary budget for each department
SELECT deptno, SUM(sal) AS total_salary 
FROM employees.emp 
GROUP BY deptno;

-- Calculate the total salary budget for each department,
-- ordered by the total budget in descending order
SELECT deptno, SUM(sal) AS total_salary 
FROM employees.emp 
GROUP BY deptno
ORDER BY total_salary DESC;

-- Calculate the total commission earned by department
SELECT deptno, SUM(commission) AS total_commission 
FROM employees.emp 
GROUP BY deptno;

-- Calculate the total commission earned by department and display
-- departments with commissions exceeding $500, ordered by total commission
SELECT deptno, SUM(commission) AS total_commission 
FROM employees.emp 
GROUP BY deptno
HAVING SUM(commission) > 500
ORDER BY total_commission DESC;