/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Data Definition Language
* Author       : Team Tinitiate
  *******************************************************************************/

-- DROP:
-- To drop dept table in employees schema
DROP TABLE employees.dept;

-- To again create it
CREATE TABLE employees.dept (
    deptno  integer,
    dname   varchar(14),
    loc     varchar(13)
); 