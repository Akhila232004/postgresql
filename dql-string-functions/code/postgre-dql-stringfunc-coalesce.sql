/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - String Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--COALESCE:
SELECT
    ename,
    COALESCE(commission, 0)
FROM employees.emp;