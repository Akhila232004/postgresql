/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Constraints
* Author       : Team Tinitiate
  *******************************************************************************/

-- CHECK CONSTRAINT:
-- CHECK Constraint on project_budget column in the employees.projects table
ALTER TABLE employees.projects
ADD CONSTRAINT chk_project_budget CHECK (budget > 0);

-- We can also specify this constraint while table creation; for example
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR,
    price DECIMAL,
    quantity INTEGER,
    CHECK (price > 0 AND quantity >= 0)
);  
