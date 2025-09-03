/* Create Database and Schemas
====================================================
Script Purpose :
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three Schemas
  within the database: 'bronze', 'silver', and 'gold'

WARNING:
  running this script will drop the entire 'DataWarehouse' after checking if it already exists.
  All data in the database will be permanently deleted.Proceed with caution
  and ensure you have proper backups before running this scripts
*/
USE master;
GO
--Drop and recreate the 'dataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'dataWarehouse')
BEGIN
    ALTER DATABASE dataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE dataWarehouse;
END;
GO

--Create database DataWarehouse
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
