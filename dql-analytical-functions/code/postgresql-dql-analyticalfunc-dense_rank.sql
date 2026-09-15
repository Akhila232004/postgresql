/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Analytical Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--DENSE_RANK:
-- Assigns a unique integer to each distinct row within the partition of a
-- result set, without gaps in the ranking sequence.
SELECT ename, sal, DENSE_RANK() OVER (ORDER BY sal DESC) AS dense_rank
FROM employees.emp;

-- Assigns a dense rank to each employee within their department based
-- on their salary.
SELECT deptno, ename, sal,
       DENSE_RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) AS dense_rank
FROM employees.emp;

-- Multi-functions with Multi-orders  example
SELECT  e.*,
        RANK() OVER (ORDER BY sal DESC)       AS rank,
        DENSE_RANK() OVER (ORDER BY sal DESC) AS dense_rank,
        ROW_NUMBER() OVER (ORDER BY sal DESC) AS rn
FROM    employees.emp e;

-- Multi-functions with Multi-Partitions  example
SELECT  e.*,
        RANK()       OVER (PARTITION BY deptno ORDER BY sal DESC)       AS rank,
        DENSE_RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) AS dense_rank,
        ROW_NUMBER() OVER (PARTITION BY deptno ORDER BY sal DESC) AS rn
FROM    employees.emp e;