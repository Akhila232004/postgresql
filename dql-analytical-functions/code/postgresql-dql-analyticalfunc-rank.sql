/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Analytical Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--RANK:
-- Assigns a unique integer to each distinct row within the partition of a
-- result set, leaving gaps between the ranks if there are ties.
SELECT ename, sal, RANK() OVER (ORDER BY sal DESC) AS rank
FROM employees.emp;

-- Assigns a rank to each employee within their department based on their salary
SELECT deptno, ename, sal,
       RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) AS rank
FROM employees.emp;