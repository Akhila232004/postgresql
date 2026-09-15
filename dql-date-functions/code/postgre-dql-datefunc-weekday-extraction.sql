/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--Weekday Function (EXTRACT):
-- Retrieve the day of the week (0 for Sunday, 1 for Monday, etc.) from
-- the 'hiredate' column
SELECT EXTRACT(DOW FROM hiredate) FROM employees.emp;