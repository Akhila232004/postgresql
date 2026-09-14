/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DML - Data Manipulation Language
* Author       : Team Tinitiate
  *******************************************************************************/

---DELETE:S
-- Delete a dept
DELETE FROM employees.dept WHERE deptno = 3000;

-- Remove an employee
DELETE FROM employees.emp
WHERE empno = 101;
