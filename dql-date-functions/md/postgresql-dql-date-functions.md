![PostgreSQL Tinitiate Image](../postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](../README.md)

# DQL - Date Functions

> **[postgresql-dql-date-functions.sql](../code/postgresql-dql-date-functions.sql) [CTRL + CLICK]**

* PostgreSQL provides various date and time functions for working with dates, timestamps, intervals, and time zones.

## CURRENT_DATE:

* `CURRENT_DATE` returns the current date.

```sql
SELECT CURRENT_DATE;
```

## CURRENT_TIMESTAMP:

* `CURRENT_TIMESTAMP` returns the current date and time.

```sql
SELECT CURRENT_TIMESTAMP;
```

## EXTRACT:

* The `EXTRACT` function extracts a specific field from a date or timestamp.

```sql
SELECT EXTRACT(YEAR FROM hiredate)
FROM employees.emp;

SELECT EXTRACT(MONTH FROM hiredate)
FROM employees.emp;

SELECT EXTRACT(DAY FROM hiredate)
FROM employees.emp;
```

## AGE:

* The `AGE` function calculates the difference between two dates.

```sql
SELECT AGE(CURRENT_DATE, hiredate)
FROM employees.emp;
```

## DATE_TRUNC:

* The `DATE_TRUNC` function truncates a date or timestamp to a specified precision.

```sql
SELECT DATE_TRUNC('year', hiredate)
FROM employees.emp;

SELECT DATE_TRUNC('month', hiredate)
FROM employees.emp;
```

## DATE_PART:

* The `DATE_PART` function extracts a specific field from a date or timestamp.

```sql
SELECT DATE_PART('year', hiredate)
FROM employees.emp;

SELECT DATE_PART('month', hiredate)
FROM employees.emp;

SELECT DATE_PART('day', hiredate)
FROM employees.emp;
```

## Date and Interval Arithmetic:

* PostgreSQL allows dates and timestamps to be added to or subtracted from intervals.

```sql
SELECT hiredate + INTERVAL '5 hours'
FROM employees.emp;

SELECT hiredate - INTERVAL '5 hours'
FROM employees.emp;
```

## TO_CHAR:

* The `TO_CHAR` function converts dates and timestamps into formatted strings.

```sql
SELECT TO_CHAR(hiredate, 'YYYY-MM-DD')
FROM employees.emp;

SELECT TO_CHAR(hiredate, 'DD-MON-YYYY')
FROM employees.emp;
```

## DOW:

* The `DOW` field can be used with `EXTRACT` to retrieve the day of the week.

```sql
SELECT EXTRACT(DOW FROM hiredate)
FROM employees.emp;
```

## Date and String Conversions:

* PostgreSQL provides functions to convert strings into dates and timestamps.

```sql
SELECT TO_DATE('2024-01-15', 'YYYY-MM-DD');

SELECT TO_TIMESTAMP('2024-01-15 10:30:00', 'YYYY-MM-DD HH24:MI:SS');
```

## Time Zone:

* PostgreSQL provides `AT TIME ZONE` for converting timestamps between time zones.

```sql
SELECT CURRENT_TIMESTAMP AT TIME ZONE 'UTC';

SELECT CURRENT_TIMESTAMP AT TIME ZONE 'EST';

SELECT CURRENT_TIMESTAMP AT TIME ZONE 'IST';
```

##### [Back To Contents](../README.md)

---

| © TINITIATE.COM |
| --------------- |
