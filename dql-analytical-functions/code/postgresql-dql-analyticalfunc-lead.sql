/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Analytical Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--LEAD:
-- Retrieves employee names and salaries, along with
-- the next salary for each employee.
SELECT ename, sal,
       LEAD(sal) OVER (ORDER BY sal) AS next_sal
FROM employees.emp;

-- Retrieves the next salary for each employee, ordered by their hire date.
SELECT empno, ename, hiredate, sal,
       LEAD(sal) OVER (ORDER BY hiredate) AS next_sal
FROM employees.emp;

-- Lag and Lead example
SELECT empno, sal,
       LEAD(sal) OVER (ORDER BY sal) AS next_salary,
       LAG(sal) OVER (ORDER BY sal) AS previous_salary
FROM employees.emp;

-- Calculates the difference in salary between an employee and
-- the next and previous employee within each department.
SELECT deptno, ename, sal,
       sal - LAG(sal) OVER (PARTITION BY deptno ORDER BY sal)
        AS sal_diff_with_prev,
       LEAD(sal) OVER (PARTITION BY deptno ORDER BY sal) - sal
        AS sal_diff_with_next
FROM employees.emp;