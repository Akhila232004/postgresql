/*******************************************************************************

* Organization : TINITIATE TECHNOLOGIES PVT LTD
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Analytical Functions
* Author       : Team Tinitiate
  *******************************************************************************/

-- ROW_NUMBER:
SELECT
empno,
ename,
deptno,
sal,
ROW_NUMBER() OVER (ORDER BY sal DESC) AS row_number
FROM employees.emp;

-- RANK:
SELECT
empno,
ename,
deptno,
sal,
RANK() OVER (ORDER BY sal DESC) AS rank
FROM employees.emp;

-- DENSE_RANK:
SELECT
empno,
ename,
deptno,
sal,
DENSE_RANK() OVER (ORDER BY sal DESC) AS dense_rank
FROM employees.emp;

-- NTILE:
SELECT
empno,
ename,
deptno,
sal,
NTILE(4) OVER (ORDER BY sal DESC) AS salary_group
FROM employees.emp;

-- LAG:
SELECT
empno,
ename,
sal,
LAG(sal) OVER (ORDER BY empno) AS previous_salary
FROM employees.emp;

-- LEAD:
SELECT
empno,
ename,
sal,
LEAD(sal) OVER (ORDER BY empno) AS next_salary
FROM employees.emp;

-- FIRST_VALUE:
SELECT
empno,
ename,
deptno,
sal,
FIRST_VALUE(sal) OVER (
PARTITION BY deptno
ORDER BY sal DESC
) AS highest_salary
FROM employees.emp;

-- LAST_VALUE:
SELECT
empno,
ename,
deptno,
sal,
LAST_VALUE(sal) OVER (
PARTITION BY deptno
ORDER BY sal DESC
ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
) AS lowest_salary
FROM employees.emp;
