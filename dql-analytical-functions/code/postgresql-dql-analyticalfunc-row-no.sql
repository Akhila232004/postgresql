/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Analytical Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--ROW_NUMBER:
-- Assigns a unique integer to each row to establish the row's position within
-- the partition of a result set.
SELECT empno, ename, ROW_NUMBER() OVER (ORDER BY empno) AS row_num
FROM employees.emp;

-- Assigns a unique integer to each row within the partition.
SELECT empno, ename, deptno, ROW_NUMBER() OVER (PARTITION BY deptno) AS row_num
FROM employees.emp;

-- Assigns a unique integer to each row within a partition, based on salary,
-- for each department.
SELECT deptno, ename, sal,
       ROW_NUMBER() OVER (PARTITION BY deptno ORDER BY sal DESC) AS row_num
FROM employees.emp;

-- Find the employee with the highest salary in each department
SELECT deptno, ename, sal
FROM (
    SELECT deptno, ename, sal,
           ROW_NUMBER() OVER (PARTITION BY deptno ORDER BY sal DESC) AS row_num
    FROM employees.emp
) AS ranked
WHERE row_num = 1;

-- Multi-Ordered Row Numbering
SELECT  row_number() OVER (ORDER BY sal)      AS sal_rn_asc,
        row_number() OVER (ORDER BY sal DESC) AS sal_rn_desc,
        row_number() OVER (ORDER BY empno)    AS empno_rn,
        e.*
FROM    employees.emp e
ORDER BY deptno;

-- Multi-Partitioned Row Numbering
SELECT  row_number() OVER (PARTITION BY deptno ORDER BY sal)
         AS sal_rn_asc,
        row_number() OVER (PARTITION BY deptno ORDER BY sal DESC)
         AS sal_rn_desc,
        row_number() OVER (PARTITION BY deptno ORDER BY empno)
         AS empno_rn,
        e.*
FROM    employees.emp e
ORDER BY deptno;