/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Analytical Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--FIRSTVAL Function:
-- Retrieves employee names and salaries, along with
-- the first salary in the sorted order.
SELECT ename, sal,
       FIRST_VALUE(sal) OVER (ORDER BY sal) AS first_sal
FROM employees.emp;

-- Finds the first salary for each department and
-- compares it with each employee's salary.
SELECT empno, ename, deptno, sal,
       sal - FIRST_VALUE(sal) OVER (PARTITION BY deptno ORDER BY hiredate)
        AS sal_diff_with_first
FROM employees.emp;