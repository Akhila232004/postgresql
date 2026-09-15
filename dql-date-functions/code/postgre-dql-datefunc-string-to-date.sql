/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Date Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--String to Date (Various Formats):
-- YYYY-MM-DD
SELECT TO_DATE('2023-04-15', 'YYYY-MM-DD') AS date;

-- MM/DD/YYYY
SELECT TO_DATE('04/15/2023', 'MM/DD/YYYY') AS date;

-- DD.MM.YYYY
SELECT TO_DATE('15.04.2023', 'DD.MM.YYYY') AS date;

-- Mon DD, YYYY
SELECT TO_DATE('Apr 15, 2023', 'Mon DD, YYYY') AS date;

-- YYYYMMDD
SELECT TO_DATE('20230415', 'YYYYMMDD') AS date;