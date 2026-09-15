/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONSS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - String Functions
* Author       : Team Tinitiate
  *******************************************************************************/
--CASE:
SELECT
    ename,
    CASE
        WHEN sal > 3000 THEN 'High'
        WHEN sal > 2000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employees.emp;