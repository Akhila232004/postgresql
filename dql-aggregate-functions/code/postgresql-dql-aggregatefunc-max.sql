/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Aggregate Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--MAX:
-- Retrieves the maximum value in sal column
SELECT MAX(sal) AS max_salary FROM employees.emp;

-- Find the employee(s) with the highest salary
SELECT * 
FROM employees.emp 
WHERE sal = (SELECT MAX(sal) FROM employees.emp);

-- Find the employee(s) with the highest salary in each department
SELECT e.*
FROM employees.emp e
JOIN (
    SELECT deptno, MAX(sal) AS max_salary
    FROM employees.emp
    GROUP BY deptno
) AS max_salaries ON e.deptno = max_salaries.deptno
 AND e.sal = max_salaries.max_salary;