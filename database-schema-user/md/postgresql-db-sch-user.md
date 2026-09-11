![PostgreSQL Tinitiate Image](/postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](/README.md)

# Database, Schema, and User
* In PostgreSQL, a database is a collection of organized data, a schema is a logical container for database objects, and a user is an entity with access privileges to interact with the database system.
## Database:
* In PostgreSQL, a database is a structured collection of data that is organized and managed for efficient storage and retrieval.
* It Stores tables, views, functions, and other objects that define the schema and structure of the data.
* Within a PostgreSQL server instance, you can create multiple databases to organize your data.
```sql
-- Create a database named tinitiate
CREATE DATABASE tinitiate;
#OUTPUT:CREATE DATABASE

-- Alter the database tinitiate to set tablespace
ALTER DATABASE tinitiate SET TABLESPACE pg_default;
#OUTPUT: Updated Rows: 0

-- PostgreSQL commands are generally case-insensitive
-- We can use uppercase or lowercase or mix of both for commands 
-- But for best practice stick to any one format
```  
## User:
* Users in PostgreSQL are individual logins that can access the database objects within a schema.
* Users are granted permissions to interact with specific databases and schemas as per the database administrator's configuration.
```sql
-- Create users
CREATE USER tiuser WITH PASSWORD 'Tinitiate!23'; #OUTPUT: CREATE ROLE
CREATE USER developer WITH PASSWORD 'Tinitiate!23'; #OUTPUT: CREATE ROLE
```
## Schema:
* Each database in PostgreSQL contains a logical grouping of database objects called schemas.
* Schemas provide a way to organize and namespace database objects within a database.
```sql
-- Create the schema with authorization to user
CREATE SCHEMA employees AUTHORIZATION tiuser; #OUTPUT: CREATE SCHEMA
```

##### [Back To Contents](/README.md)

---

| © TINITIATE.COM |
| --------------- |
