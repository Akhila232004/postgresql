/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Common Table Expressions
* Author       : Team Tinitiate
  *******************************************************************************/
--CREATING a CTE:
-- Define a CTE to get employees with job title 'manager' 
-- Retrieve employees with job title 'manager' using the CTE
WITH managers AS (
    SELECT empno, ename, job, sal
    FROM employees.emp
    WHERE job = 'manager'
)
SELECT *
FROM managers;

-- Define a CTE to count employees in each department
-- Define a CTE to calculate the average salary by department
WITH dept_employee_count AS (
    SELECT deptno, COUNT(*) AS num_employees
    FROM employees.emp
    GROUP BY deptno
)
SELECT d.deptno, d.dname, dec.num_employees
FROM employees.dept d
JOIN dept_employee_count dec ON d.deptno = dec.deptno;
WITH avg_salary AS (
    SELECT deptno, AVG(sal) AS avg_sal
    FROM employees.emp
    GROUP BY deptno
)
SELECT d.deptno, d.dname, a.avg_sal
FROM employees.dept d
JOIN avg_salary a ON d.deptno = a.deptno;

-- Define a CTE to list employees and their associated projects
WITH employee_projects AS (
    SELECT e.empno, e.ename, ep.projectno, p.budget
    FROM employees.emp e
    JOIN employees.emp_projects ep ON e.empno = ep.empno
    JOIN employees.projects p ON ep.projectno = p.projectno
)
SELECT empno, ename, projectno, budget
FROM employee_projects;

-- Define a CTE to rank employees by salary within each department
WITH RankedEmployees AS (
    SELECT empno, ename, deptno, sal,
           ROW_NUMBER() OVER (PARTITION BY deptno ORDER BY sal DESC) AS row_num,
           RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) AS rank,
           DENSE_RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) AS dense_rank
    FROM employees.emp
)
SELECT empno, ename, deptno, sal, row_num, rank, dense_rank
FROM RankedEmployees;

-- Define a CTE to calculate running total of salaries within each department
WITH RunningTotal AS (
    SELECT empno, ename, deptno, sal,
           SUM(sal) OVER (PARTITION BY deptno ORDER BY empno ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
    FROM employees.emp e 
)
SELECT empno, ename, deptno, sal, running_total
FROM RunningTotal;