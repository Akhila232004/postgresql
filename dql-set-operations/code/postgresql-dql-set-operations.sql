/*******************************************************************************

* Organization : TINITIATE TECHNOLOGIES PVT LTD
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Set Operations
* Author       : Team Tinitiate
  *******************************************************************************/

-- UNION:
SELECT ename
FROM employees.emp
WHERE deptno = 10

UNION

SELECT ename
FROM employees.emp
WHERE deptno = 20;

-- UNION ALL:
SELECT ename
FROM employees.emp
WHERE deptno = 10

UNION ALL

SELECT ename
FROM employees.emp
WHERE deptno = 20;

-- INTERSECT:
SELECT ename
FROM employees.emp
WHERE deptno = 10

INTERSECT

SELECT ename
FROM employees.emp
WHERE sal > 2000;

-- INTERSECT ALL:
SELECT ename
FROM employees.emp
WHERE deptno = 10

INTERSECT ALL

SELECT ename
FROM employees.emp
WHERE sal > 2000;

-- EXCEPT:
SELECT ename
FROM employees.emp
WHERE deptno = 10

EXCEPT

SELECT ename
FROM employees.emp
WHERE sal > 2000;

-- EXCEPT ALL:
SELECT ename
FROM employees.emp
WHERE deptno = 10

EXCEPT ALL

SELECT ename
FROM employees.emp
WHERE sal > 2000;
