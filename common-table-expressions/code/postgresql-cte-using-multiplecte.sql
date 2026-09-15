/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Common Table Expressions
* Author       : Team Tinitiate
  *******************************************************************************/
--USING MULTIPLE CTEs:
-- Define CTEs to calculate total salary and average salary by department
-- Retrieve department numbers, total salary, and average salary
WITH total_salary AS (
    SELECT deptno, SUM(sal) AS total_sal
    FROM employees.emp
    GROUP BY deptno
),
average_salary AS (
    SELECT deptno, AVG(sal) AS avg_sal
    FROM employees.emp
    GROUP BY deptno
)
SELECT t.deptno, t.total_sal, a.avg_sal
FROM total_salary t
JOIN average_salary a ON t.deptno = a.deptno;


-- Retrieve department numbers, total salary, and total project budget
WITH TotalSalary AS (
    SELECT deptno, SUM(sal) AS total_sal
    FROM employees.emp d 
    GROUP BY deptno
),
TotalBudget AS (
    SELECT e.deptno, SUM(p.budget) AS total_budget
    FROM employees.emp e
    JOIN employees.emp_projects ep ON e.empno = ep.empno
    JOIN employees.projects p ON ep.projectno = p.projectno
    GROUP BY e.deptno
)
SELECT ts.deptno, ts.total_sal, tb.total_budget
FROM TotalSalary ts
JOIN TotalBudget tb ON ts.deptno = tb.deptno;