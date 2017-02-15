CREATE TABLE [dbo].[Stores]
(
	[StoreId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Location] [sys].[geography],
	[Name] VARCHAR(50) NOT NULL
)
