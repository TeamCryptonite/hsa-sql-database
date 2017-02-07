/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

print 'Inserting seed data'

INSERT INTO dbo.[Product] (Name, Description, IsHSA) VALUES
	('Water Bottle', 'A Bottle for holding water', 0),
	('Tylinol', 'A headache cure', 1);

INSERT INTO dbo.[Store] (Name, Location) VALUES
	('Wally World', geography::Point(38.951705, -92.334072, 4326)),
	('HighCee', geography::Point(61.218056, -149.900278, 4326));

INSERT INTO dbo.[StoreProducts] (ProductId, StoreId) VALUES
	(1, 1),
	(2, 1), 
	(2, 2);

INSERT INTO dbo.[User] (Username, Password, FirstName, LastName, PrefName) VALUES
	('phutson', 'testpass', 'Pearse', 'Hutson', 'Pearse'),
	('soccermom86', '12345', 'Cynthia', 'Smith', 'Cindy');

INSERT INTO dbo.[Receipt] (StoreId, UserId, IsScanned) VALUES
	(1, 1, 0), 
	(2, 2, 0);

INSERT INTO dbo.[LineItem] (ProductId, ReceiptId, Price, Quantity) VALUES
	(1, 1, 15.98, 1), 
	(2, 1, 3.00, 3);