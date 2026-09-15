/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Basic Operators
* Author       : Team Tinitiate
  *******************************************************************************/
  -- NOT IN Operator:
  SELECT *
FROM employees.emp
WHERE deptno NOT IN (10, 20);