/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Constraints
* Author       : Team Tinitiate
  *******************************************************************************/

-- PRIMARY KEY CONSTRAINT:
-- PRIMARY KEY Constraint on deptno column in the employees.dept table
ALTER TABLE employees.dept
ADD CONSTRAINT pk_dept PRIMARY KEY (deptno);  

-- PRIMARY KEY Constraint on empno column in the employees.emp table
ALTER TABLE employees.emp
ADD CONSTRAINT pk_emp PRIMARY KEY (empno); 

-- PRIMARY KEY Constraint on projectno column in the employees.projects table
ALTER TABLE employees.projects
ADD CONSTRAINT pk_projects PRIMARY KEY (projectno); 

-- PRIMARY KEY Constraint on emp_projectno column in the employees.emp_projects table
ALTER TABLE employees.emp_projects
ADD CONSTRAINT pk_empprojects PRIMARY KEY (emp_projectno); 

-- We can also specify this constraint while table creation; for example
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    order_date DATE
); 