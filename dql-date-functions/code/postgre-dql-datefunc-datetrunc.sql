/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--DATE_TRUNC:
-- Truncate the 'hiredate' column to the nearest month
SELECT DATE_TRUNC('month', hiredate) FROM employees.emp;