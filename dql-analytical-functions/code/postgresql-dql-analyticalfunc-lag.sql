/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Analytical Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--LAG:
-- Retrieves employee names and salaries, along with the
-- previous salary for each employee.
SELECT ename, sal,
       LAG(sal) OVER (ORDER BY sal) AS prev_sal
FROM employees.emp;

-- Retrieves the previous salary for each employee, ordered by their hire date.
SELECT empno, ename, hiredate, sal,
       LAG(sal) OVER (ORDER BY hiredate) AS prev_sal
FROM employees.emp;