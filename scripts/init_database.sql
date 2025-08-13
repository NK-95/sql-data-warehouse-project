/*
==================================================
Create Database and Schemas
==================================================
Script purpose:
This script creates a new database named 'Datawarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the scripts sets up three schemas
within the database: 'bronze', 'silver', and 'gold'.

Warning:
Running this script will drop the entire 'Datawarehouse' database if it exists.
All data in the database will be permanently deleted. Proceed with caution
and ensure you have proper backups before running this script.
*/

-- Create database 'Data warehouse'

USE master;
GO

-- Drop and recreate the 'Data warehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN

	DROP DATABASE DataWarehouse;
END;
GO


--Create the new database 'Datawarehouse'
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

--Create Shemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
