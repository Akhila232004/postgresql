/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Analytical Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--LASTVAL:
-- Retrieves employee names and salaries,
-- along with the last salary in the sorted order.
SELECT ename, sal,
       LAST_VALUE(sal) OVER (
           ORDER BY sal
           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
       ) AS last_sal
FROM employees.emp;

-- Finds the last salary for each department and
-- compares it with each employee's salary.
SELECT empno, ename, deptno, sal,
       sal - LAST_VALUE(sal) OVER (PARTITION BY deptno ORDER BY
        hiredate ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
         AS sal_diff_with_last
FROM employees.emp;

-- Finds the difference between each employee's salary and
-- the first and last salary within their department.
SELECT deptno, ename, sal,
       sal - FIRST_VALUE(sal) OVER (PARTITION BY deptno ORDER BY sal)
        AS sal_diff_with_first,
       LAST_VALUE(sal) OVER (PARTITION BY deptno ORDER BY
        sal ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) - sal
         AS sal_diff_with_last
FROM employees.emp;