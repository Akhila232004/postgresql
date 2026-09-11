/*******************************************************************************

* Organization : TINITIATE TECHNOLOGIES PVT LTD
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/

-- CURRENT_DATE:
SELECT CURRENT_DATE;

-- CURRENT_TIMESTAMP:
SELECT CURRENT_TIMESTAMP;

-- EXTRACT:
SELECT EXTRACT(YEAR FROM hiredate)
FROM employees.emp;

SELECT EXTRACT(MONTH FROM hiredate)
FROM employees.emp;

SELECT EXTRACT(DAY FROM hiredate)
FROM employees.emp;

-- AGE:
SELECT AGE(CURRENT_DATE, hiredate)
FROM employees.emp;

-- DATE_TRUNC:
SELECT DATE_TRUNC('year', hiredate)
FROM employees.emp;

SELECT DATE_TRUNC('month', hiredate)
FROM employees.emp;

-- DATE_PART:
SELECT DATE_PART('year', hiredate)
FROM employees.emp;

SELECT DATE_PART('month', hiredate)
FROM employees.emp;

SELECT DATE_PART('day', hiredate)
FROM employees.emp;

-- DATE AND INTERVAL ARITHMETIC:
SELECT hiredate + INTERVAL '5 hours'
FROM employees.emp;

SELECT hiredate - INTERVAL '5 hours'
FROM employees.emp;

-- TO_CHAR:
SELECT TO_CHAR(hiredate, 'YYYY-MM-DD')
FROM employees.emp;

SELECT TO_CHAR(hiredate, 'DD-MON-YYYY')
FROM employees.emp;

-- DOW:
SELECT EXTRACT(DOW FROM hiredate)
FROM employees.emp;

-- DATE AND STRING CONVERSIONS:
SELECT TO_DATE('2024-01-15', 'YYYY-MM-DD');

SELECT TO_TIMESTAMP('2024-01-15 10:30:00', 'YYYY-MM-DD HH24:MI:SS');

-- TIME ZONE:
SELECT CURRENT_TIMESTAMP AT TIME ZONE 'UTC';

SELECT CURRENT_TIMESTAMP AT TIME ZONE 'EST';

SELECT CURRENT_TIMESTAMP AT TIME ZONE 'IST';
