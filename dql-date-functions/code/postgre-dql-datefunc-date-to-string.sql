/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--DATE-TO-STRING:
-- YYYY-MM-DD
SELECT empno, ename, TO_CHAR(hiredate, 'YYYY-MM-DD') AS hiredate
FROM employees.emp;

-- MM/DD/YYYY
SELECT empno, ename, TO_CHAR(hiredate, 'MM/DD/YYYY') AS hiredate
FROM employees.emp;

-- DD/MM/YYYY
SELECT empno, ename, TO_CHAR(hiredate, 'DD/MM/YYYY') AS hiredate
FROM employees.emp;

-- Mon DD, YYYY
SELECT empno, ename, TO_CHAR(hiredate, 'Mon DD, YYYY') AS hiredate
FROM employees.emp;

-- YYYYMMDD
SELECT empno, ename, TO_CHAR(hiredate, 'YYYYMMDD') AS hiredate
FROM employees.emp;

-- DD-MM-YYYY
SELECT empno, ename, TO_CHAR(hiredate, 'DD-MM-YYYY') AS hiredate
FROM employees.emp;

-- YYYY/MM/DD
SELECT empno, ename, TO_CHAR(hiredate, 'YYYY/MM/DD') AS hiredate
FROM employees.emp;

-- DD MMM YYYY
SELECT empno, ename, TO_CHAR(hiredate, 'DD Mon YYYY') AS hiredate
FROM employees.emp;