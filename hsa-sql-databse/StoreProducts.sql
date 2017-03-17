CREATE TABLE [dbo].[StoreProducts]
(
	[ProductId] INT NOT NULL,
	[StoreId] INT NOT NULL,
	[UPC] VARCHAR(MAX) NULL, 
    CONSTRAINT [FK_StoreProducts_Product] FOREIGN KEY ([ProductId]) REFERENCES [Products]([ProductId]) ON DELETE CASCADE,
	CONSTRAINT [FK_StoreProducts_Store] FOREIGN KEY ([StoreId]) REFERENCES [Stores]([StoreId]) ON DELETE CASCADE,
	CONSTRAINT [PK_StoreProducts] PRIMARY KEY ([ProductId], [StoreId])
)
