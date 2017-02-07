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

DROP TABLE dbo.[Account], dbo.[LineItem], dbo.[Product], dbo.[Receipt], dbo.[Reimbursement],
	dbo.[ReimbursementReceipts], dbo.[Store], dbo.[StoreProducts], dbo.[User];