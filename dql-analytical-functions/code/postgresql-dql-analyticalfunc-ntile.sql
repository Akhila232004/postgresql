/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Analytical Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--NTILE:
-- Divides the result set into a specified number of roughly equal
-- groups or "tiles".
SELECT ename, sal, NTILE(4) OVER (ORDER BY sal DESC) AS quartile
FROM employees.emp;

-- Divides employees into quartiles based on their salary within each department
SELECT deptno, ename, sal,
       NTILE(4) OVER (PARTITION BY deptno ORDER BY sal DESC) AS quartile
FROM employees.emp;