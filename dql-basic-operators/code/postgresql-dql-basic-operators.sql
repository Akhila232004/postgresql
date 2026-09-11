/*******************************************************************************

* Organization : TINITIATE TECHNOLOGIES PVT LTD
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Basic Operators
* Author       : Team Tinitiate
  *******************************************************************************/

-- EQUALITY OPERATOR (=):
SELECT *
FROM employees.emp
WHERE deptno = 20;

-- INEQUALITY OPERATOR (<>):
SELECT *
FROM employees.emp
WHERE deptno <> 20;

-- IN OPERATOR:
SELECT *
FROM employees.emp
WHERE deptno IN (10, 20);

-- NOT IN OPERATOR:
SELECT *
FROM employees.emp
WHERE deptno NOT IN (10, 20);

-- LIKE OPERATOR:
SELECT *
FROM employees.emp
WHERE ename LIKE 's%';

-- NOT LIKE OPERATOR:
SELECT *
FROM employees.emp
WHERE ename NOT LIKE 's%';

-- BETWEEN OPERATOR:
SELECT *
FROM employees.emp
WHERE sal BETWEEN 1000 AND 2000;

-- GREATER THAN OPERATOR (>):
SELECT *
FROM employees.emp
WHERE sal > 2000;

-- GREATER THAN OR EQUAL TO OPERATOR (>=):
SELECT *
FROM employees.emp
WHERE sal >= 2000;

-- LESS THAN OPERATOR (<):
SELECT *
FROM employees.emp
WHERE sal < 2000;

-- LESS THAN OR EQUAL TO OPERATOR (<=):
SELECT *
FROM employees.emp
WHERE sal <= 2000;

-- EXISTS OPERATOR:
SELECT *
FROM employees.dept d
WHERE EXISTS (
SELECT 1
FROM employees.emp e
WHERE e.deptno = d.deptno
);

-- NOT EXISTS OPERATOR:
SELECT *
FROM employees.dept d
WHERE NOT EXISTS (
SELECT 1
FROM employees.emp e
WHERE e.deptno = d.deptno
);
