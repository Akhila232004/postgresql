/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Data Query Language
* Author       : Team Tinitiate
  *******************************************************************************/

--SELECT CLAUSE:
-- Retrieve all columns from the emp table
SELECT *
FROM employees.emp;

-- Retrieve empno, ename and job colums from the emp table
SELECT empno, ename, job
FROM employees.emp;

-- DISTINCT can be used to retrieve unique titles from the column
SELECT DISTINCT job
FROM employees.emp;

-- Using alias to display column name as per requirement
SELECT DISTINCT job AS employeejob FROM employees.emp;