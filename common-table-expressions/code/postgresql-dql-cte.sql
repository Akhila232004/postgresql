/*******************************************************************************

* Organization : TINITIATE TECHNOLOGIES PVT LTD
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Common Table Expressions
* Author       : Team Tinitiate
  *******************************************************************************/

-- COMMON TABLE EXPRESSION:
WITH employee_details AS (
SELECT
empno,
ename,
job,
sal,
deptno
FROM employees.emp
)
SELECT *
FROM employee_details;

-- CTE WITH FILTERING:
WITH high_salary_employees AS (
SELECT
empno,
ename,
job,
sal,
deptno
FROM employees.emp
WHERE sal > 2000
)
SELECT *
FROM high_salary_employees;

-- MULTIPLE CTEs:
WITH employee_details AS (
SELECT
empno,
ename,
deptno,
sal
FROM employees.emp
),
department_details AS (
SELECT
deptno,
dname
FROM employees.dept
)
SELECT
e.empno,
e.ename,
e.sal,
d.dname
FROM employee_details e
JOIN department_details d
ON e.deptno = d.deptno;

-- CTE WITH AGGREGATE FUNCTIONS:
WITH department_salary AS (
SELECT
deptno,
SUM(sal) AS total_salary
FROM employees.emp
GROUP BY deptno
)
SELECT *
FROM department_salary;

-- CTE WITH ANALYTICAL FUNCTIONS:
WITH employee_rank AS (
SELECT
empno,
ename,
deptno,
sal,
RANK() OVER (
PARTITION BY deptno
ORDER BY sal DESC
) AS salary_rank
FROM employees.emp
)
SELECT *
FROM employee_rank;

-- RECURSIVE CTE:
WITH RECURSIVE employee_hierarchy AS (
SELECT
empno,
ename,
mgr,
1 AS level
FROM employees.emp
WHERE mgr IS NULL

```
UNION ALL

SELECT
    e.empno,
    e.ename,
    e.mgr,
    eh.level + 1
FROM employees.emp e
JOIN employee_hierarchy eh
    ON e.mgr = eh.empno
```

)
SELECT *
FROM employee_hierarchy;
