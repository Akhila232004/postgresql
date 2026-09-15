/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--DATE ADDITION/SUBTRACTION:
-- Add a specific number of days from a date
SELECT hiredate + INTERVAL '7 days' FROM employees.emp;

-- Subtract 6 months from the 'hiredate' column in the employees table
SELECT hiredate - INTERVAL '6 months' FROM employees.emp;