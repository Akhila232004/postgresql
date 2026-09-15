/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--DateTime to String (Various Formats):
-- YYYY-MM-DD HH:MI:SS
SELECT empno, ename, TO_CHAR(hiredate, 'YYYY-MM-DD HH24:MI:SS') AS hiredate
FROM employees.emp;
-- hiredate doesn't have time parts, so only date will show up

-- Using CURRENT_TIMESTAMP
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'YYYY-MM-DD HH24:MI:SS') AS datetimetostring;

-- YYYY-MM-DD HH:MI:SS:MS
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'YYYY-MM-DD HH24:MI:SS.MS') AS datetimetostring;

-- DD Mon YYYY HH:MI:SS:MS
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'DD Mon YYYY HH24:MI:SS.MS') AS datetimetostring;

-- Mon DD YYYY HH:MI:SS:MSAM (or PM)
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'Mon DD YYYY HH:MI:SS.MSAM') AS datetimetostring;