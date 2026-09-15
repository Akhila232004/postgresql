/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--Date Formatting (TO_CHAR):
-- Format the 'hiredate' column in a specific date format
SELECT TO_CHAR(hiredate, 'YYYY-MM-DD') FROM employees.emp;