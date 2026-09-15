/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Joins
* Author       : Team Tinitiate
  *******************************************************************************/
  -- LEFT JOIN:
SELECT
    e.empno,
    e.ename,
    e.job,
    d.dname,
    d.loc
FROM employees.emp e
LEFT JOIN employees.dept d
    ON e.deptno = d.deptno;