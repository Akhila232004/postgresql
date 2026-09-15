/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--DATE_PART:
-- Retrieve the day of the month from the 'hiredate' column
SELECT DATE_PART('day', hiredate) FROM employees.emp;