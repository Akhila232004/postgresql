/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DML - Data Manipulation Language
* Author       : Team Tinitiate
  *******************************************************************************/

-- UPDATE:
-- Update salary of an employee
UPDATE employees.emp SET sal = 6200.00 WHERE empno = 101;

-- Update project end date
UPDATE employees.emp_projects
SET end_date = '2024-06-01'
WHERE projectno = 1 AND empno = 101;