/*
========================================================================
Create Database and Schemas

========================================================================
Script Purpose:
This script creates a new database called DataWarehouse after first checking for its existence. 
If the database already exists, it is dropped and recreated. 
The script also sets up three schemas within the database—Bronze, Silver, and Gold.


WARNING:
    Running this script will permanently delete all existing data in the database, if it exists.
    All the data in the database will be permanently deleted.
    Proceed with caution and ensure that proper backups are in place before execution.

*/


USE master;
GO

--Drop and Recreate the 'DataWarehouse' database 
IF EXISTS ( SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO


--Create 'DataWarehouse' Database

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse ;
GO

--Create Schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
