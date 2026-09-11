![PostgreSQL Tinitiate Image](/postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](/README.md)

# DQL - Set Operations

> **[postgresql-dql-set-operations.sql](../code/postgresql-dql-set-operations.sql) [CTRL + CLICK]**

* Set operations in PostgreSQL are used to combine the results of two or more `SELECT` queries.
* PostgreSQL supports the following set operations:

  * `UNION`
  * `UNION ALL`
  * `INTERSECT`
  * `INTERSECT ALL`
  * `EXCEPT`
  * `EXCEPT ALL`

## UNION:

* The `UNION` operator combines the result sets of two or more `SELECT` statements and removes duplicate rows.

```sql id="1x5j8z"
SELECT ename
FROM employees.emp
WHERE deptno = 10

UNION

SELECT ename
FROM employees.emp
WHERE deptno = 20;
```

## UNION ALL:

* The `UNION ALL` operator combines the result sets of two or more `SELECT` statements and retains duplicate rows.

```sql id="9x6s1q"
SELECT ename
FROM employees.emp
WHERE deptno = 10

UNION ALL

SELECT ename
FROM employees.emp
WHERE deptno = 20;
```

## INTERSECT:

* The `INTERSECT` operator returns rows that are common to the result sets of both queries.

```sql id="q8g4hm"
SELECT ename
FROM employees.emp
WHERE deptno = 10

INTERSECT

SELECT ename
FROM employees.emp
WHERE sal > 2000;
```

## INTERSECT ALL:

* The `INTERSECT ALL` operator returns all common rows, including duplicates.

```sql id="w2p9av"
SELECT ename
FROM employees.emp
WHERE deptno = 10

INTERSECT ALL

SELECT ename
FROM employees.emp
WHERE sal > 2000;
```

## EXCEPT:

* The `EXCEPT` operator returns rows from the first query that are not present in the second query.

```sql id="h6c3me"
SELECT ename
FROM employees.emp
WHERE deptno = 10

EXCEPT

SELECT ename
FROM employees.emp
WHERE sal > 2000;
```

## EXCEPT ALL:

* The `EXCEPT ALL` operator returns rows from the first query that are not present in the second query, including duplicate occurrences.

```sql id="p7v1zr"
SELECT ename
FROM employees.emp
WHERE deptno = 10

EXCEPT ALL

SELECT ename
FROM employees.emp
WHERE sal > 2000;
```

##### [Back To Contents](/README.md)

---

| © TINITIATE.COM |
| --------------- |
