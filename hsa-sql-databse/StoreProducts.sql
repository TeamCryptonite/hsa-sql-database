CREATE TABLE [dbo].[StoreProducts]
(
	[ProductId] INT NOT NULL,
	[StoreId] INT NOT NULL,
	CONSTRAINT [FK_StoreProducts_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product]([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_StoreProducts_Store] FOREIGN KEY ([StoreId]) REFERENCES [Store]([Id]) ON DELETE CASCADE,
	CONSTRAINT [PK_StoreProducts] PRIMARY KEY ([ProductId], [StoreId])
)
