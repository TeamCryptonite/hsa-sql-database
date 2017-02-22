CREATE TABLE [dbo].[ShoppingListItems]
(
	[ShoppingListItemId] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ShoppingListId] INT NOT NULL,
	[ProductName] VARCHAR(MAX),
	[ProductId] INT,
	[Quantity] INT,
	[StoreId] INT,
	[Checked] BIT NOT NULL DEFAULT 0,
	CONSTRAINT [FK_ShoppingListItem_ShoppingLists] FOREIGN KEY ([ShoppingListId]) REFERENCES [ShoppingLists]([ShoppingListId]) ON DELETE CASCADE,
	CONSTRAINT [FK_ShoppingListItem_Products] FOREIGN KEY ([ProductId]) REFERENCES [Products]([ProductId]) ON DELETE SET NULL,
	CONSTRAINT [FK_StoreProducts_Stores] FOREIGN KEY ([StoreId]) REFERENCES [Stores]([StoreId]) ON DELETE SET NULL,

)
