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

--IF OBJECT_ID('dbo.[Accounts]', 'U') IS NOT NULL
--	DROP TABLE dbo.[Accounts]; 
--IF OBJECT_ID('dbo.[LineItems]', 'U') IS NOT NULL
--	DROP TABLE dbo.[LineItems]; 
--IF OBJECT_ID('dbo.[Products]', 'U') IS NOT NULL
--	DROP TABLE dbo.[Products]; 
--IF OBJECT_ID('dbo.[Receipts]', 'U') IS NOT NULL
--	DROP TABLE dbo.[Receipts]; 
--IF OBJECT_ID('dbo.[Reimbursements]', 'U') IS NOT NULL
--	DROP TABLE dbo.[Reimbursements];
--IF OBJECT_ID('dbo.[ReimbursementReceipts]', 'U') IS NOT NULL
--	DROP TABLE dbo.[ReimbursementReceipts]; 
--IF OBJECT_ID('dbo.[Stores]', 'U') IS NOT NULL
--	DROP TABLE dbo.[Stores]; 
--IF OBJECT_ID('dbo.[StoreProducts]', 'U') IS NOT NULL
--	DROP TABLE dbo.[StoreProducts]; 
--IF OBJECT_ID('dbo.[Users]', 'U') IS NOT NULL
--	DROP TABLE dbo.[Users];

--DROP TABLE IF EXISTS dbo.[Account]; 
--DROP TABLE IF EXISTS dbo.[LineItem]; 
--DROP TABLE IF EXISTS dbo.[Product]; 
--DROP TABLE IF EXISTS dbo.[Receipt]; 
--DROP TABLE IF EXISTS dbo.[Reimbursement];
--DROP TABLE IF EXISTS dbo.[ReimbursementReceipts]; 
--DROP TABLE IF EXISTS dbo.[Store]; 
--DROP TABLE IF EXISTS dbo.[StoreProducts]; 
--DROP TABLE IF EXISTS dbo.[User];