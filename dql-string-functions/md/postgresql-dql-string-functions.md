![PostgreSQL Tinitiate Image](/postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](/README.md)

# DQL - String Functions

> **[postgresql-dql-string-functions.sql](../code/postgresql-dql-string-functions.sql) [CTRL + CLICK]**

* PostgreSQL provides various string functions for manipulating and processing text values.

## LENGTH:

* The `LENGTH` function returns the number of characters in a string.

```sql
SELECT LENGTH(ename)
FROM employees.emp;
```

## SUBSTRING:

* The `SUBSTRING` function extracts a portion of a string.

```sql
SELECT SUBSTRING(ename, 1, 3)
FROM employees.emp;
```

## Concatenation Operator (||):

* The `||` operator is used to concatenate two or more strings.

```sql
SELECT ename || ' - ' || job
FROM employees.emp;
```

## LOWER:

* The `LOWER` function converts a string to lowercase.

```sql
SELECT LOWER(ename)
FROM employees.emp;
```

## UPPER:

* The `UPPER` function converts a string to uppercase.

```sql
SELECT UPPER(ename)
FROM employees.emp;
```

## TRIM:

* The `TRIM` function removes leading and trailing spaces from a string.

```sql
SELECT TRIM(ename)
FROM employees.emp;
```

## LTRIM:

* The `LTRIM` function removes leading spaces from a string.

```sql
SELECT LTRIM(ename)
FROM employees.emp;
```

## RTRIM:

* The `RTRIM` function removes trailing spaces from a string.

```sql
SELECT RTRIM(ename)
FROM employees.emp;
```

## POSITION:

* The `POSITION` function returns the position of a substring within a string.

```sql
SELECT POSITION('a' IN ename)
FROM employees.emp;
```

## LEFT:

* The `LEFT` function returns the specified number of characters from the beginning of a string.

```sql
SELECT LEFT(ename, 3)
FROM employees.emp;
```

## RIGHT:

* The `RIGHT` function returns the specified number of characters from the end of a string.

```sql
SELECT RIGHT(ename, 3)
FROM employees.emp;
```

## REVERSE:

* The `REVERSE` function reverses a string.

```sql
SELECT REVERSE(ename)
FROM employees.emp;
```

## REPLACE:

* The `REPLACE` function replaces occurrences of a specified substring with another substring.

```sql
SELECT REPLACE(ename, 'a', 'A')
FROM employees.emp;
```

## CASE:

* The `CASE` expression can be used to perform conditional logic.

```sql
SELECT
    ename,
    CASE
        WHEN sal > 3000 THEN 'High'
        WHEN sal > 2000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employees.emp;
```

## COALESCE:

* The `COALESCE` function returns the first non-null value from a list of expressions.

```sql
SELECT
    ename,
    COALESCE(commission, 0)
FROM employees.emp;
```

##### [Back To Contents](/README.md)

---

| © TINITIATE.COM |
| --------------- |
