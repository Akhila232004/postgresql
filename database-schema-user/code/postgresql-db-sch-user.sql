/*******************************************************************************

* Organization : TINITIATEAI SOLUTIONS
* Website      : tinitiate.com
* Script Title : PostgreSQL Tutorial
* Description  : Database, Schema, and User
* Author       : Team Tinitiate
  *******************************************************************************/

-- DATABASE:
-- Create database tinitiate
CREATE DATABASE tinitiate;

-- Alter the database tinitiate to set the default tablespace
ALTER DATABASE tinitiate SET TABLESPACE pg_default;

-- PostgreSQL commands are generally case-insensitive.
-- We can use uppercase, lowercase, or a mixture of both for commands.
-- For best practice, follow a consistent naming convention.

-- USER:
-- Create a user named 'tiuser' with the password 'Tinitiate!23'
CREATE USER tiuser WITH PASSWORD 'Tinitiate!23';

-- Create a user named 'developer' with the password 'Tinitiate!23'
CREATE USER developer WITH PASSWORD 'Tinitiate!23';

-- SCHEMA:
-- Create the schema named employees
-- and assign ownership to the tiuser role
CREATE SCHEMA employees AUTHORIZATION tiuser;
