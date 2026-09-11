![PostgreSQL Tinitiate Image](../postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](../README.md)

# DQL - Basic Operators

> **[postgresql-dql-basic-operators.sql](../code/postgresql-dql-basic-operators.sql) [CTRL + CLICK]**

* PostgreSQL provides various operators that can be used to filter, compare, and manipulate data in SQL queries.
* These operators are commonly used with the `WHERE` clause to specify conditions.

## Equality Operator (=):

* The equality operator is used to compare two values and returns rows where the values are equal.

```sql
SELECT *
FROM employees.emp
WHERE deptno = 20;
```

## Inequality Operator (<>):

* The inequality operator is used to compare two values and returns rows where the values are not equal.

```sql
SELECT *
FROM employees.emp
WHERE deptno <> 20;
```

## IN Operator:

* The `IN` operator is used to specify multiple values in a `WHERE` clause.

```sql
SELECT *
FROM employees.emp
WHERE deptno IN (10, 20);
```

## NOT IN Operator:

* The `NOT IN` operator is used to exclude multiple values in a `WHERE` clause.

```sql
SELECT *
FROM employees.emp
WHERE deptno NOT IN (10, 20);
```

## LIKE Operator:

* The `LIKE` operator is used to search for a specified pattern in a column.

```sql
SELECT *
FROM employees.emp
WHERE ename LIKE 's%';
```

## NOT LIKE Operator:

* The `NOT LIKE` operator is used to exclude rows matching a specified pattern.

```sql
SELECT *
FROM employees.emp
WHERE ename NOT LIKE 's%';
```

## BETWEEN Operator:

* The `BETWEEN` operator is used to select values within a specified range.

```sql
SELECT *
FROM employees.emp
WHERE sal BETWEEN 1000 AND 2000;
```

## Greater Than Operator (>):

* The greater than operator returns rows where the first value is greater than the second value.

```sql
SELECT *
FROM employees.emp
WHERE sal > 2000;
```

## Greater Than or Equal To Operator (>=):

```sql
SELECT *
FROM employees.emp
WHERE sal >= 2000;
```

## Less Than Operator (<):

```sql
SELECT *
FROM employees.emp
WHERE sal < 2000;
```

## Less Than or Equal To Operator (<=):

```sql
SELECT *
FROM employees.emp
WHERE sal <= 2000;
```

## EXISTS Operator:

* The `EXISTS` operator is used to test whether a subquery returns one or more rows.

```sql
SELECT *
FROM employees.dept d
WHERE EXISTS (
    SELECT 1
    FROM employees.emp e
    WHERE e.deptno = d.deptno
);
```

## NOT EXISTS Operator:

* The `NOT EXISTS` operator is used to test whether a subquery returns no rows.

```sql
SELECT *
FROM employees.dept d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees.emp e
    WHERE e.deptno = d.deptno
);
```

##### [Back To Contents](../README.md)

---

| © TINITIATE.COM |
| --------------- |
