/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DQL - Analytical Functions
* Author       : Team Tinitiate
  *******************************************************************************/

-- All aggregation functions for each department
SELECT  deptno
        ,count(sal) AS count_dept_sal
       ,max(sal) AS max_dept_sal
       ,min(sal) AS min_dept_sal
       ,sum(sal) AS tot_dept_sal
       ,avg(sal) AS avg_dept_sal
FROM  employees.emp e
GROUP BY deptno;

-- All aggregation functions on emp table with respect to every dept 
SELECT  e.*
       ,max(sal) OVER () AS max_sal
       ,max(sal) OVER (PARTITION BY deptno) AS max_dept_sal
       ,min(sal) OVER (PARTITION BY deptno) AS min_dept_sal
       ,sum(sal) OVER (PARTITION BY deptno) AS tot_dept_sal
       ,avg(sal) OVER (PARTITION BY deptno) AS avg_dept_sal
       ,count(1) OVER (PARTITION BY deptno) AS emp_count_by_dept
FROM   employees.emp e;