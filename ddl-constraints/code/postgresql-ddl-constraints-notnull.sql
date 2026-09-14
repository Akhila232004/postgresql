/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Constraints
* Author       : Team Tinitiate
  *******************************************************************************/

-- NOT NULL CONSTRAINT:
-- NOT NULL Constraint on empno and ename columns in the employees table
ALTER TABLE employees.emp
ALTER COLUMN empno SET NOT NULL,
ALTER COLUMN ename SET NOT NULL; 

-- We can also specify this constraint while table creation; for example 
CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    age INTEGER
);