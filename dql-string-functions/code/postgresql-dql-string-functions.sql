/*******************************************************************************

* Organization : TINITIATE TECHNOLOGIES PVT LTD
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - String Functions
* Author       : Team Tinitiate
  *******************************************************************************/

-- LENGTH:
SELECT LENGTH(ename)
FROM employees.emp;

-- SUBSTRING:
SELECT SUBSTRING(ename, 1, 3)
FROM employees.emp;

-- CONCATENATION OPERATOR (||):
SELECT ename || ' - ' || job
FROM employees.emp;

-- LOWER:
SELECT LOWER(ename)
FROM employees.emp;

-- UPPER:
SELECT UPPER(ename)
FROM employees.emp;

-- TRIM:
SELECT TRIM(ename)
FROM employees.emp;

-- LTRIM:
SELECT LTRIM(ename)
FROM employees.emp;

-- RTRIM:
SELECT RTRIM(ename)
FROM employees.emp;

-- POSITION:
SELECT POSITION('a' IN ename)
FROM employees.emp;

-- LEFT:
SELECT LEFT(ename, 3)
FROM employees.emp;

-- RIGHT:
SELECT RIGHT(ename, 3)
FROM employees.emp;

-- REVERSE:
SELECT REVERSE(ename)
FROM employees.emp;

-- REPLACE:
SELECT REPLACE(ename, 'a', 'A')
FROM employees.emp;

-- CASE:
SELECT
ename,
CASE
WHEN sal > 3000 THEN 'High'
WHEN sal > 2000 THEN 'Medium'
ELSE 'Low'
END AS salary_level
FROM employees.emp;

-- COALESCE:
SELECT
ename,
COALESCE(commission, 0)
FROM employees.emp;
