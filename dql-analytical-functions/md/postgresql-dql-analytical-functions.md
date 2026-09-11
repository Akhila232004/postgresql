![PostgreSQL Tinitiate Image](/postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](/README.md)

# DQL - Analytical Functions

> **[postgresql-dql-analytical-functions.sql](../code/postgresql-dql-analytical-functions.sql) [CTRL + CLICK]**

* Analytical functions, also known as window functions, perform calculations across a set of rows that are related to the current row.
* Unlike aggregate functions, analytical functions do not group rows into a single result. Instead, they return a value for each row while allowing calculations across a defined window of rows.

## ROW_NUMBER:

* The `ROW_NUMBER()` function assigns a unique sequential number to each row within a result set.

```sql id="t6m3de"
SELECT
    empno,
    ename,
    deptno,
    sal,
    ROW_NUMBER() OVER (ORDER BY sal DESC) AS row_number
FROM employees.emp;
```

## RANK:

* The `RANK()` function assigns a rank to each row within a result set.
* Rows with the same value receive the same rank, and gaps appear in the ranking after tied rows.

```sql id="7u9s5a"
SELECT
    empno,
    ename,
    deptno,
    sal,
    RANK() OVER (ORDER BY sal DESC) AS rank
FROM employees.emp;
```

## DENSE_RANK:

* The `DENSE_RANK()` function assigns a rank to each row without gaps between ranking groups.

```sql id="4w6g2q"
SELECT
    empno,
    ename,
    deptno,
    sal,
    DENSE_RANK() OVER (ORDER BY sal DESC) AS dense_rank
FROM employees.emp;
```

## NTILE:

* The `NTILE()` function divides the rows into a specified number of groups.

```sql id="x0g1pn"
SELECT
    empno,
    ename,
    deptno,
    sal,
    NTILE(4) OVER (ORDER BY sal DESC) AS salary_group
FROM employees.emp;
```

## LAG:

* The `LAG()` function provides access to a value from a previous row in the result set.

```sql id="c5k2v8"
SELECT
    empno,
    ename,
    sal,
    LAG(sal) OVER (ORDER BY empno) AS previous_salary
FROM employees.emp;
```

## LEAD:

* The `LEAD()` function provides access to a value from a subsequent row in the result set.

```sql id="v9j4sm"
SELECT
    empno,
    ename,
    sal,
    LEAD(sal) OVER (ORDER BY empno) AS next_salary
FROM employees.emp;
```

## FIRST_VALUE:

* The `FIRST_VALUE()` function returns the first value in the window.

```sql id="2j8rqa"
SELECT
    empno,
    ename,
    deptno,
    sal,
    FIRST_VALUE(sal) OVER (
        PARTITION BY deptno
        ORDER BY sal DESC
    ) AS highest_salary
FROM employees.emp;
```

## LAST_VALUE:

* The `LAST_VALUE()` function returns the last value in the window.

```sql id="n7f3kc"
SELECT
    empno,
    ename,
    deptno,
    sal,
    LAST_VALUE(sal) OVER (
        PARTITION BY deptno
        ORDER BY sal DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS lowest_salary
FROM employees.emp;
```

##### [Back To Contents](/README.md)

---

| © TINITIATE.COM |
| --------------- |
