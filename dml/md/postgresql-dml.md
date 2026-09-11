![PostgreSQL Tinitiate Image](../postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](../README.md)

# DML - Data Manipulation Language

> **[postgresql-dml.sql](../code/postgresql-dml.sql) [CTRL + CLICK]**

* DML (Data Manipulation Language) is used to manage and manipulate data stored in database tables.
* The primary DML commands in PostgreSQL are `INSERT`, `UPDATE`, and `DELETE`.

## INSERT:

* The `INSERT` command is used to add new records into a table.

```sql
-- Insert a single record into the dept table
INSERT INTO emp.dept (deptno, dname, loc)
VALUES (10, 'ACCOUNTING', 'NEW YORK');

-- Insert multiple records into the dept table
INSERT INTO emp.dept (deptno, dname, loc)
VALUES
    (20, 'RESEARCH', 'DALLAS'),
    (30, 'SALES', 'CHICAGO'),
    (40, 'OPERATIONS', 'BOSTON');
```

```output
Output:
INSERT 0 1
INSERT 0 4
```

## UPDATE:

* The `UPDATE` command is used to modify existing records in a table.

```sql
-- Update the location of department 10
UPDATE emp.dept
SET loc = 'BOSTON'
WHERE deptno = 10;

-- Update the salary of employees in department 10
UPDATE emp.emp
SET sal = sal + 500
WHERE deptno = 10;
```

```output
Output:
UPDATE 1
UPDATE
```

## DELETE:

* The `DELETE` command is used to remove existing records from a table.

```sql
-- Delete department 40
DELETE FROM emp.dept
WHERE deptno = 40;

-- Delete employees belonging to department 10
DELETE FROM emp.emp
WHERE deptno = 10;
```

```output
Output:
DELETE 1
DELETE
```

##### [Back To Contents](../README.md)

---

| © TINITIATE.COM |
| --------------- |
