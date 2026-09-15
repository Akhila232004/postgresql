/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Data Query Language
* Author       : Team Tinitiate
  *******************************************************************************/
  --LIMIT CLAUSE:
  -- Retrieve the first 5 employees
SELECT *
FROM employees.emp
LIMIT 5;

-- Retrieve the employees with the top 10 highest salaries
SELECT *
FROM employees.emp
ORDER BY sal DESC
LIMIT 10;

-- Retrieve 5 employees starting from the 11th row
SELECT *
FROM employees.emp
LIMIT 5 OFFSET 10;