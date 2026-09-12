/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Data Definition Language
* Author       : Team Tinitiate
  *******************************************************************************/

-- DROP:
-- To drop dept table in emp schema
DROP TABLE emp.dept; 

-- To again create it
CREATE TABLE emp.dept (
    deptid  integer,
    dname   varchar(100)
);  