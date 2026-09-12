/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DML - Data Manipulation Language
* Author       : Team Tinitiate
  *******************************************************************************/

-- UPDATE:
-- Update salary of an employee
UPDATE emp.emp SET sal = 6200.00 WHERE empid = 101;

-- Update project end date
UPDATE emp.EmpProjects SET EndDate = '2024-06-01'
 WHERE ProjectID = 1 AND EmpID = 101;