/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : DDL - Data Definition Language
* Author       : Team Tinitiate
  *******************************************************************************/

--CREATE:
-- Use database
USE DATABASE tinitiate;

-- Schema DDL
CREATE SCHEMA emp; 
CREATE USER ti WITH PASSWORD 'Tinitiate!23'; 
ALTER SCHEMA emp OWNER TO ti; 

-- Set the schema where you want to create the DB objects
SET search_path TO emp; 

-- DDL Create Command
-- Create dept table
CREATE TABLE employees.dept (
    deptno INT,
    dname  VARCHAR(14),
    loc    VARCHAR(13)
); 


-- Create emp table
CREATE TABLE employees.emp (
    empno        INT,
    ename        VARCHAR(10),
    job          VARCHAR(9),
    mgr          NUMERIC(4),
    sal          NUMERIC(7,2),
    commission   NUMERIC(7,2),
    deptno       INT
); 

-- Create Salgrade table
CREATE TABLE employees.salgrade (
    grade INT,
    losal INT,
    hisal INT
); 

-- Create projects table
CREATE TABLE employees.projects (
    projectno          INT,
    budget             NUMERIC(7,2),
    monthly_commission NUMERIC(7,2)
); 

-- Create empprojects table
CREATE TABLE employees.emp_projects (
    emp_projectno INT,
    empno         INT,
    projectno     INT,
    start_date    DATE,
    end_date      DATE
); 