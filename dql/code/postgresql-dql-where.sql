/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Data Query Language
* Author       : Team Tinitiate
  *******************************************************************************/

  --WHERE CLAUSE:
  -- Retrieve employees with a specific job title
SELECT * FROM employees.emp WHERE job = 'manager';

-- Retrieve employees hired after a specific date
SELECT *
FROM employees.emp
WHERE hiredate > '1982-01-01';

-- Retrieve employees with a salary higher than a certain amount
SELECT *
FROM employees.emp
WHERE sal > 2000;