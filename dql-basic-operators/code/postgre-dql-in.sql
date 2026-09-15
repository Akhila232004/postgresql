/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Basic Operators
* Author       : Team Tinitiate
  *******************************************************************************/
  --IN Operator:
  SELECT *
FROM employees.emp
WHERE deptno IN (10, 20);