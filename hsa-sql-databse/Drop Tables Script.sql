
IF OBJECT_ID('dbo.[LineItems]', 'U') IS NOT NULL
	DROP TABLE dbo.[LineItems]; 
IF OBJECT_ID('dbo.[Products]', 'U') IS NOT NULL
	DROP TABLE dbo.[Products]; 
IF OBJECT_ID('dbo.[Receipts]', 'U') IS NOT NULL
	DROP TABLE dbo.[Receipts]; 
IF OBJECT_ID('dbo.[Reimbursements]', 'U') IS NOT NULL
	DROP TABLE dbo.[Reimbursements];
IF OBJECT_ID('dbo.[ReimbursementReceipts]', 'U') IS NOT NULL
	DROP TABLE dbo.[ReimbursementReceipts]; 
IF OBJECT_ID('dbo.[Stores]', 'U') IS NOT NULL
	DROP TABLE dbo.[Stores]; 
IF OBJECT_ID('dbo.[StoreProducts]', 'U') IS NOT NULL
	DROP TABLE dbo.[StoreProducts]; 
IF OBJECT_ID('dbo.[Users]', 'U') IS NOT NULL
	DROP TABLE dbo.[Users];
IF OBJECT_ID('dbo.[Accounts]', 'U') IS NOT NULL
	DROP TABLE dbo.[Accounts]; 