/*******************************************************************************

* Organization : TINITIATE TECHNOLOGIES PVT LTD
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Joins
* Author       : Team Tinitiate
  *******************************************************************************/

-- INNER JOIN:
SELECT
e.empno,
e.ename,
e.job,
d.dname,
d.loc
FROM employees.emp e
INNER JOIN employees.dept d
ON e.deptno = d.deptno;

-- LEFT JOIN:
SELECT
e.empno,
e.ename,
e.job,
d.dname,
d.loc
FROM employees.emp e
LEFT JOIN employees.dept d
ON e.deptno = d.deptno;

-- RIGHT JOIN:
SELECT
e.empno,
e.ename,
e.job,
d.dname,
d.loc
FROM employees.emp e
RIGHT JOIN employees.dept d
ON e.deptno = d.deptno;

-- FULL JOIN:
SELECT
e.empno,
e.ename,
e.job,
d.dname,
d.loc
FROM employees.emp e
FULL JOIN employees.dept d
ON e.deptno = d.deptno;

-- CROSS JOIN:
SELECT
e.empno,
e.ename,
d.deptno,
d.dname
FROM employees.emp e
CROSS JOIN employees.dept d;
