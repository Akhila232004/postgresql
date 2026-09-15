/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Constraints
* Author       : Team Tinitiate
  *******************************************************************************/

-- UNIQUE CONSTRAINT:
-- UNIQUE Constraint to the empid column in the employees.emp table
ALTER TABLE employees.emp
ADD CONSTRAINT unique_empno UNIQUE (empno); 
-- We can also specify this constraint while table creation; for example
CREATE TABLE students (
    student_id SERIAL,
    email VARCHAR UNIQUE,
    name VARCHAR
); 
