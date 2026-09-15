/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Basic Operators
* Author       : Team Tinitiate
  *******************************************************************************/
--NOT EXISTS Operator:
SELECT *
FROM employees.dept d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees.emp e
    WHERE e.deptno = d.deptno
);