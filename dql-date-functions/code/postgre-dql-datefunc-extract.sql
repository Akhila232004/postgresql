/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--EXTRACT:
-- Extract the year from the 'hiredate' column in the employees table
SELECT EXTRACT(YEAR FROM hiredate) FROM employees.emp;