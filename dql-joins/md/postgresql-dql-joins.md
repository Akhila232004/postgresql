![PostgreSQL Tinitiate Image](/postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](/README.md)

# DQL - Joins
* Joins in PostgreSQL are used to combine rows from two or more tables based on a related column between them.
* PostgreSQL supports different types of joins to retrieve related data from multiple tables.

## INNER JOIN:

* The `INNER JOIN` returns only the rows where there is a matching value in both tables.

```sql id="a8q7wp"
-- INNER JOIN
SELECT
    e.empno,
    e.ename,
    e.job,
    d.dname,
    d.loc
FROM employees.emp e
INNER JOIN employees.dept d
    ON e.deptno = d.deptno;
```

## LEFT JOIN:

* The `LEFT JOIN` returns all rows from the left table and the matching rows from the right table.
* If there is no matching row in the right table, `NULL` values are returned.

```sql id="n6y3cx"
-- LEFT JOIN
SELECT
    e.empno,
    e.ename,
    e.job,
    d.dname,
    d.loc
FROM employees.emp e
LEFT JOIN employees.dept d
    ON e.deptno = d.deptno;
```

## RIGHT JOIN:

* The `RIGHT JOIN` returns all rows from the right table and the matching rows from the left table.
* If there is no matching row in the left table, `NULL` values are returned.

```sql id="f3k9jd"
-- RIGHT JOIN
SELECT
    e.empno,
    e.ename,
    e.job,
    d.dname,
    d.loc
FROM employees.emp e
RIGHT JOIN employees.dept d
    ON e.deptno = d.deptno;
```

## FULL JOIN:

* The `FULL JOIN` returns all rows from both tables.
* When there is no matching row, `NULL` values are returned for the columns of the table without a match.

```sql id="r2m8va"
-- FULL JOIN
SELECT
    e.empno,
    e.ename,
    e.job,
    d.dname,
    d.loc
FROM employees.emp e
FULL JOIN employees.dept d
    ON e.deptno = d.deptno;
```

## CROSS JOIN:

* The `CROSS JOIN` returns the Cartesian product of the two tables.
* Every row from the first table is combined with every row from the second table.

```sql id="p4s1kx"
-- CROSS JOIN
SELECT
    e.empno,
    e.ename,
    d.deptno,
    d.dname
FROM employees.emp e
CROSS JOIN employees.dept d;
```

##### [Back To Contents](/README.md)

---

| © TINITIATE.COM |
| --------------- |
