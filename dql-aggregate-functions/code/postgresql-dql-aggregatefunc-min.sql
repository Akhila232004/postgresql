/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Aggregate Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--MIN:
-- Retrieves the minimum value in sal column
SELECT MIN(sal) AS min_salary FROM employees.emp;

-- Find the employee(s) with the lowest commission
SELECT *
FROM employees.emp
WHERE commission = (SELECT MIN(commission) FROM employees.emp
 WHERE commission IS NOT NULL);

-- Find the employee(s) with the lowest salary in each department
SELECT e.*
FROM employees.emp e
JOIN (
    SELECT deptno, MIN(sal) AS min_salary
    FROM employees.emp
    GROUP BY deptno
) AS min_salaries ON e.deptno = min_salaries.deptno
 AND e.sal = min_salaries.min_salary;

-- Find the department(s) with the lowest average salary
SELECT d.deptno, d.dname, dept_avg.avg_salary
FROM employees.dept d
JOIN (
    SELECT deptno, AVG(sal) AS avg_salary
    FROM employees.emp
    GROUP BY deptno
) AS dept_avg ON d.deptno = dept_avg.deptno
WHERE dept_avg.avg_salary = (
    SELECT MIN(avg_salary)
    FROM (
        SELECT AVG(sal) AS avg_salary
        FROM employees.emp
        GROUP BY deptno
    ) AS dept_avg
);

-- Using both max and min
-- Determine the highest and lowest salary in each department
SELECT deptno, MAX(sal) AS max_salary, MIN(sal) AS min_salary 
FROM employees.emp 
GROUP BY deptno;

--Find the department(s) with the highest and lowest average salary,
-- along with their respective average salaries
SELECT d.deptno, d.dname, dept_avg.avg_salary
FROM employees.dept d
JOIN (
    SELECT deptno, AVG(sal) AS avg_salary
    FROM employees.emp
    GROUP BY deptno
) AS dept_avg ON d.deptno = dept_avg.deptno
WHERE dept_avg.avg_salary = (
    SELECT MAX(avg_salary)
    FROM (
        SELECT AVG(sal) AS avg_salary
        FROM employees.emp
        GROUP BY deptno
    ) AS dept_avg
)
OR dept_avg.avg_salary = (
    SELECT MIN(avg_salary)
    FROM (
        SELECT AVG(sal) AS avg_salary
        FROM employees.emp
        GROUP BY deptno
    ) AS dept_avg
);

-- Find the employee(s) with the highest salary and
-- the employee(s) with the lowest salary in each department
SELECT e.*
FROM employees.emp e
JOIN (
    SELECT deptno, MAX(sal) AS max_salary, MIN(sal) AS min_salary
    FROM employees.emp
    GROUP BY deptno
) AS salary_extremes ON e.deptno = salary_extremes.deptno 
AND (e.sal = salary_extremes.max_salary OR e.sal = salary_extremes.min_salary);