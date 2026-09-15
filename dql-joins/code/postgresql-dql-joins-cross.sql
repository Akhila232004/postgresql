/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Joins
* Author       : Team Tinitiate
  *******************************************************************************/
  -- CROSS JOIN:
SELECT
    e.empno,
    e.ename,
    d.deptno,
    d.dname
FROM employees.emp e
CROSS JOIN employees.dept d;