/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF OBJECT_ID('dbo.[Account]', 'U') IS NOT NULL
	DROP TABLE dbo.[Account]; 
IF OBJECT_ID('dbo.[LineItem]', 'U') IS NOT NULL
	DROP TABLE dbo.[LineItem]; 
IF OBJECT_ID('dbo.[Product]', 'U') IS NOT NULL
	DROP TABLE dbo.[Product]; 
IF OBJECT_ID('dbo.[Receipt]', 'U') IS NOT NULL
	DROP TABLE dbo.[Receipt]; 
IF OBJECT_ID('dbo.[Reimbursement]', 'U') IS NOT NULL
	DROP TABLE dbo.[Reimbursement];
IF OBJECT_ID('dbo.[ReimbursementReceipts]', 'U') IS NOT NULL
	DROP TABLE dbo.[ReimbursementReceipts]; 
IF OBJECT_ID('dbo.[Store]', 'U') IS NOT NULL
	DROP TABLE dbo.[Store]; 
IF OBJECT_ID('dbo.[StoreProducts]', 'U') IS NOT NULL
	DROP TABLE dbo.[StoreProducts]; 
IF OBJECT_ID('dbo.[User]', 'U') IS NOT NULL
	DROP TABLE dbo.[User];

--DROP TABLE IF EXISTS dbo.[Account]; 
--DROP TABLE IF EXISTS dbo.[LineItem]; 
--DROP TABLE IF EXISTS dbo.[Product]; 
--DROP TABLE IF EXISTS dbo.[Receipt]; 
--DROP TABLE IF EXISTS dbo.[Reimbursement];
--DROP TABLE IF EXISTS dbo.[ReimbursementReceipts]; 
--DROP TABLE IF EXISTS dbo.[Store]; 
--DROP TABLE IF EXISTS dbo.[StoreProducts]; 
--DROP TABLE IF EXISTS dbo.[User];