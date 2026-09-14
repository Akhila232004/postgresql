![PostgreSQL Tinitiate Image](/postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](/README.md)

# DDL - Constraints
* In PostgreSQL, Data Definition Language (DDL) constraints are rules applied to the structure of a database table.
* These constraints ensure data integrity and consistency by enforcing certain conditions on the data being inserted, updated, or deleted in the table.
* These constraints are applied to columns when the table is created or altered.

## Here are the common types of DDL constraints in PostgreSQL:
### NOT NULL Constraint:
* This constraint ensures that a column cannot contain NULL values.
* It enforces that every row in the table must have a value for that column.
```sql
-- NOT NULL Constraint on empno and ename columns in the employees table
ALTER TABLE employees.emp
ALTER COLUMN empno SET NOT NULL,
ALTER COLUMN ename SET NOT NULL; #OUTPUT: Updated Rows: 0

-- We can also specify this constraint while table creation; for example 
CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    age INTEGER
); #OUTPUT: Updated Rows: 0
```

### UNIQUE Constraint:
* This constraint ensures that the values in a column (or a group of columns) are unique across all rows in the table.
```sql
-- UNIQUE Constraint to the empid column in the employees.emp table
ALTER TABLE employees.emp
ADD CONSTRAINT unique_empno UNIQUE (empno); #OUTPUT: Updated Rows: 0
-- We can also specify this constraint while table creation; for example
CREATE TABLE students (
    student_id SERIAL,
    email VARCHAR UNIQUE,
    name VARCHAR
); #OUTPUT: Updated Rows: 0
```

### CHECK Constraint:
* This constraint specifies a condition that must be satisfied for each row in the table.
* It allows you to define custom rules for data validation.
```sql
-- CHECK Constraint on project_budget column in the employees.projects table
ALTER TABLE employees.projects
ADD CONSTRAINT chk_project_budget CHECK (budget > 0); #OUTPUT: Updated Rows: 0

-- We can also specify this constraint while table creation; for example
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR,
    price DECIMAL,
    quantity INTEGER,
    CHECK (price > 0 AND quantity >= 0)
);  #OUTPUT: Updated Rows: 0
```

### PRIMARY KEY Constraint:
* This constraint uniquely identifies each record in a table and ensures that there are no duplicate values in the specified column(s).
```sql
-- PRIMARY KEY Constraint on deptno column in the employees.dept table
ALTER TABLE employees.dept
ADD CONSTRAINT pk_dept PRIMARY KEY (deptno);  #OUTPUT: Updated Rows: 0

-- PRIMARY KEY Constraint on empno column in the employees.emp table
ALTER TABLE employees.emp
ADD CONSTRAINT pk_emp PRIMARY KEY (empno); #OUTPUT: Updated Rows: 0

-- PRIMARY KEY Constraint on projectno column in the employees.projects table
ALTER TABLE employees.projects
ADD CONSTRAINT pk_projects PRIMARY KEY (projectno); #OUTPUT: Updated Rows: 0

-- PRIMARY KEY Constraint on emp_projectno column in the employees.emp_projects table
ALTER TABLE employees.emp_projects
ADD CONSTRAINT pk_empprojects PRIMARY KEY (emp_projectno); #OUTPUT: Updated Rows: 0

-- We can also specify this constraint while table creation; for example
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    order_date DATE
); #OUTPUT: Updated Rows: 0
```

### FOREIGN KEY Constraint:
* This constraint establishes a relationship between two tables.
* It ensures referential integrity by enforcing a link between the data in the foreign key column(s) and the primary key or unique key in another table.
```sql
-- FOREIGN KEY Constraint on deptno column in the employees.emp table referencing
-- the deptno column in the employees.dept table

ALTER TABLE employees.emp
ADD CONSTRAINT fk_deptno
FOREIGN KEY (deptno)
REFERENCES employees.dept(deptno); #OUTPUT: Updated Rows: 0

-- FOREIGN KEY Constraints on empno and projectno columns in the
-- employees.emp_projects table referencing the respective columns in the
-- employees.emp and employees.projects tables

ALTER TABLE employees.emp_projects
ADD CONSTRAINT fk_empno
FOREIGN KEY (empno)
REFERENCES employees.emp(empno),
ADD CONSTRAINT fk_projectno
FOREIGN KEY (projectno)
REFERENCES employees.projects(projectno); #OUTPUT: Updated Rows: 0

-- We can also specify this constraint while table creation; for example
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    -- Assuming there is a column customer_id in customers table
    order_date DATE
); #OUTPUT: Updated Rows: 0
```

##### [Back To Contents](/README.md)

---

| © TINITIATE.COM |
| --------------- |
