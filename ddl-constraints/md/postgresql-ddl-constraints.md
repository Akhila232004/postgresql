![PostgreSQL Tinitiate Image](/postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](/README.md)

# DDL - Constraints
* In PostgreSQL, constraints are rules enforced on table columns to maintain data integrity and consistency.
* Constraints can be defined when creating a table or added later using the `ALTER TABLE` command.

## NOT NULL Constraint:

* The `NOT NULL` constraint ensures that a column cannot contain `NULL` values.

```sql
-- Create table with NOT NULL constraint
CREATE TABLE emp.dept (
    deptno INT NOT NULL,
    dname  VARCHAR(14),
    loc    VARCHAR(13)
);
```

```output
Output:
CREATE TABLE
```

## UNIQUE Constraint:

* The `UNIQUE` constraint ensures that all values in a column are different.

```sql
-- Create table with UNIQUE constraint
CREATE TABLE emp.dept (
    deptno INT UNIQUE,
    dname  VARCHAR(14),
    loc    VARCHAR(13)
);
```

```output
Output:
CREATE TABLE
```

## CHECK Constraint:

* The `CHECK` constraint ensures that all values in a column satisfy a specific condition.

```sql
-- Create table with CHECK constraint
CREATE TABLE emp.emp (
    empno INT,
    ename VARCHAR(10),
    sal   NUMERIC(7,2) CHECK (sal > 0),
    deptno INT
);
```

```output
Output:
CREATE TABLE
```

## PRIMARY KEY Constraint:

* The `PRIMARY KEY` constraint uniquely identifies each row in a table.
* A primary key cannot contain `NULL` values and must contain unique values.

```sql
-- Create table with PRIMARY KEY constraint
CREATE TABLE emp.dept (
    deptno INT PRIMARY KEY,
    dname  VARCHAR(14),
    loc    VARCHAR(13)
);
```

```output
Output:
CREATE TABLE
```

## FOREIGN KEY Constraint:

* The `FOREIGN KEY` constraint is used to establish a relationship between two tables.
* A foreign key references a primary key or unique key in another table.

```sql
-- Create parent table
CREATE TABLE emp.dept (
    deptno INT PRIMARY KEY,
    dname  VARCHAR(14),
    loc    VARCHAR(13)
);

-- Create child table with FOREIGN KEY constraint
CREATE TABLE emp.emp (
    empno  INT PRIMARY KEY,
    ename  VARCHAR(10),
    deptno INT,
    CONSTRAINT fk_emp_dept
        FOREIGN KEY (deptno)
        REFERENCES emp.dept(deptno)
);
```

```output
Output:
CREATE TABLE
CREATE TABLE
```

##### [Back To Contents](/README.md)

---

| © TINITIATE.COM |
| --------------- |
