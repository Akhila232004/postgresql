/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Constraints
* Author       : Team Tinitiate
  *******************************************************************************/

-- FOREIGN KEY CONSTRAINT:
-- FOREIGN KEY Constraint on deptno column in the employees.emp table referencing
-- the deptno column in the employees.dept table

ALTER TABLE employees.emp
ADD CONSTRAINT fk_deptno
FOREIGN KEY (deptno)
REFERENCES employees.dept(deptno); 

-- FOREIGN KEY Constraints on empno and projectno columns in the
-- employees.emp_projects table referencing the respective columns in the
-- employees.emp and employees.projects tables

ALTER TABLE employees.emp_projects
ADD CONSTRAINT fk_empno
FOREIGN KEY (empno)
REFERENCES employees.emp(empno),
ADD CONSTRAINT fk_projectno
FOREIGN KEY (projectno)
REFERENCES employees.projects(projectno); 

-- We can also specify this constraint while table creation; for example
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    -- Assuming there is a column customer_id in customers table
    order_date DATE
); 