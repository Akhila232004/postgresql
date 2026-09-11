![PostgreSQL Tinitiate Image](../postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](../README.md)

# DQL - Common Table Expressions

> **[postgresql-dql-cte.sql](../code/postgresql-dql-cte.sql) [CTRL + CLICK]**

* Common Table Expressions (CTEs) in PostgreSQL provide a way to define temporary result sets that can be referenced within a SQL statement.
* CTEs are defined using the `WITH` clause and can make complex queries easier to read and maintain.

## Common Table Expression:

* A CTE is defined using the `WITH` clause and can be referenced within the main query.

```sql id="c9p3xq"
WITH employee_details AS (
    SELECT
        empno,
        ename,
        job,
        sal,
        deptno
    FROM employees.emp
)
SELECT *
FROM employee_details;
```

## CTE with filtering:

```sql id="q5v8dn"
WITH high_salary_employees AS (
    SELECT
        empno,
        ename,
        job,
        sal,
        deptno
    FROM employees.emp
    WHERE sal > 2000
)
SELECT *
FROM high_salary_employees;
```

## Multiple CTEs:

* Multiple CTEs can be defined in a single `WITH` clause.

```sql id="w2k6fa"
WITH employee_details AS (
    SELECT
        empno,
        ename,
        deptno,
        sal
    FROM employees.emp
),
department_details AS (
    SELECT
        deptno,
        dname
    FROM employees.dept
)
SELECT
    e.empno,
    e.ename,
    e.sal,
    d.dname
FROM employee_details e
JOIN department_details d
    ON e.deptno = d.deptno;
```

## CTE with Aggregate Functions:

```sql id="m7r1be"
WITH department_salary AS (
    SELECT
        deptno,
        SUM(sal) AS total_salary
    FROM employees.emp
    GROUP BY deptno
)
SELECT *
FROM department_salary;
```

## CTE with Analytical Functions:

```sql id="a4t9pk"
WITH employee_rank AS (
    SELECT
        empno,
        ename,
        deptno,
        sal,
        RANK() OVER (
            PARTITION BY deptno
            ORDER BY sal DESC
        ) AS salary_rank
    FROM employees.emp
)
SELECT *
FROM employee_rank;
```

## Recursive CTE:

* Recursive CTEs are used when a query needs to reference its own result.
* They are useful for hierarchical data.

```sql id="j8s2cf"
WITH RECURSIVE employee_hierarchy AS (
    SELECT
        empno,
        ename,
        mgr,
        1 AS level
    FROM employees.emp
    WHERE mgr IS NULL

    UNION ALL

    SELECT
        e.empno,
        e.ename,
        e.mgr,
        eh.level + 1
    FROM employees.emp e
    JOIN employee_hierarchy eh
        ON e.mgr = eh.empno
)
SELECT *
FROM employee_hierarchy;
```

##### [Back To Contents](../README.md)

---

| © TINITIATE.COM |
| --------------- |
