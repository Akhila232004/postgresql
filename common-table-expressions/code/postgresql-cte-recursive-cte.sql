/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Common Table Expressions
* Author       : Team Tinitiate
  *******************************************************************************/
--RECURSIVE CTE:
-- Define a recursive CTE to generate a sequence of numbers
WITH RECURSIVE sequence AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1
    FROM sequence
    WHERE num < 10
)
SELECT num
FROM sequence;

-- Define a recursive CTE to find the management hierarchy
-- Anchor member: select the top-level manager (president)
-- Recursive member: select employees managed by the current level
-- Retrieve the management hierarchy
WITH RECURSIVE emp_hierarchy AS (
    SELECT empno, ename, job, mgr
    FROM employees.emp
    WHERE mgr IS NULL
    UNION ALL 
    SELECT e.empno, e.ename, e.job, e.mgr
    FROM employees.emp e
    INNER JOIN emp_hierarchy eh ON e.mgr = eh.empno
)
SELECT *
FROM emp_hierarchy;