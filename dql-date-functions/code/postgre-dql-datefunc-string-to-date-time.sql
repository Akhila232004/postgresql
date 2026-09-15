/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--String to DateTime (Various Formats):
-- YYYY-MM-DD HH:MI:SS
SELECT TO_TIMESTAMP('2023-04-15 13:30:45', 'YYYY-MM-DD HH24:MI:SS') AS datetime;

-- MM/DD/YYYY HH:MI:SS
SELECT TO_TIMESTAMP('04/15/2023 13:30:45', 'MM/DD/YYYY HH24:MI:SS') AS datetime;

-- DD.MM.YYYY HH:MI:SS
SELECT TO_TIMESTAMP('15.04.2023 13:30:45', 'DD.MM.YYYY HH24:MI:SS') AS datetime;

-- Mon DD YYYY HH:MI:SS:MS
SELECT TO_TIMESTAMP('Apr 15 2023 01:30:45:375', 'Mon DD YYYY HH24:MI:SS:MS') AS datetime;

-- YYYYMMDD HH:MI:SS
SELECT TO_TIMESTAMP('20230415 13:30:45', 'YYYYMMDD HH24:MI:SS') AS datetime;