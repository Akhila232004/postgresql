/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Constraints
* Author       : Team Tinitiate
  *******************************************************************************/

-- FOREIGN KEY CONSTRAINT:
-- FOREIGN KEY Constraint on deptid column in the employees.emp table referencing
-- the deptid column in the employees.dept table
ALTER TABLE employees.emp
ADD CONSTRAINT fk_deptid
FOREIGN KEY (deptno)
REFERENCES employees.dept(deptno); 

-- FOREIGN KEY Constraints on emp_id and project_id columns in the
-- employees.emp_projects table referencing the respective columns in the
-- employees.emp and employees.projects tables
ALTER TABLE employees.emp_projects
ADD CONSTRAINT fk_emp_id
FOREIGN KEY (empno)
REFERENCES employees.emp(empno),
ADD CONSTRAINT fk_project_id
FOREIGN KEY (projectno)
REFERENCES employees.projects(projectno); 

-- We can also specify this constraint while table creation; for example
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    -- Assuming there is a column customer_id in customers table
    order_date DATE
); 