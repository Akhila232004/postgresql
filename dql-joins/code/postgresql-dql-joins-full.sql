/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Joins
* Author       : Team Tinitiate
  *******************************************************************************/
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