CREATE TABLE [dbo].[ShoppingLists]
(
	[ShoppingListId] INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[UserObjectId] uniqueidentifier NOT NULL,
	[Name] VARCHAR(MAX),
	[Description] VARCHAR(MAX),
	[DateTime] DATETIME,
	CONSTRAINT [FK_ShoppingLists_Users] FOREIGN KEY ([UserObjectId]) REFERENCES [Users]([UserObjectId]) ON DELETE SET NULL
)
