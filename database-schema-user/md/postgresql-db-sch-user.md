![PostgreSQL Tinitiate Image](../postgresql_tinitiate.png)

# PostgreSQL Tutorial

© TINITIATE.COM

##### [Back To Contents](../README.md)

# Database, Schema, and User

> **[postgresql-db-sch-user.sql](../code/postgresql-db-sch-user.sql) [CTRL + CLICK]**

* In PostgreSQL, a **database** is a structured collection of data that is organized and managed for efficient storage and retrieval.

* A **schema** is a logical namespace within a database used to organize database objects such as tables, views, functions, and sequences.

* A **user** is a database role that can log in to PostgreSQL and access database objects based on assigned privileges.

* To summarize:

  * A PostgreSQL server instance can host **multiple databases**.
  * Each database can contain **multiple schemas**.
  * Schemas provide logical namespaces for organizing database objects.
  * Users and roles can be granted permissions to databases, schemas, and database objects.

## Database:

* A database in PostgreSQL is a logical container used to store and manage data.
* It contains database objects such as schemas, tables, views, functions, sequences, and other objects.
* A PostgreSQL server instance can contain multiple databases.

```sql
-- Create a database named tinitiate
CREATE DATABASE tinitiate;

-- Alter the database tinitiate to set the default tablespace
ALTER DATABASE tinitiate SET TABLESPACE pg_default;

-- PostgreSQL commands are generally case-insensitive.
-- We can use uppercase, lowercase, or a mixture of both for commands.
-- For best practice, follow a consistent naming convention.
```

```output
Output:
CREATE DATABASE
ALTER DATABASE
```

## User:

* PostgreSQL users are database roles that can log in to the PostgreSQL server.
* Users can be granted permissions to databases, schemas, tables, and other database objects.
* The `CREATE USER` command creates a role with the `LOGIN` privilege.

```sql
-- Create a user named tiuser
CREATE USER tiuser WITH PASSWORD 'Tinitiate!23';

-- Create a user named developer
CREATE USER developer WITH PASSWORD 'Tinitiate!23';
```

```output
Output:
CREATE ROLE
CREATE ROLE
```

## Schema:

* A schema in PostgreSQL is a logical namespace within a database.
* Schemas are used to organize and group database objects.
* A schema can be assigned an owner, and permissions can be granted to users or roles.

```sql
-- Create the schema named employees
-- and assign ownership to the tiuser role
CREATE SCHEMA employees AUTHORIZATION tiuser;
```

```output
Output:
CREATE SCHEMA
```

##### [Back To Contents](../README.md)

---

| © TINITIATE.COM |
| --------------- |
