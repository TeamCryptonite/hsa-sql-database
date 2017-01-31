CREATE TABLE [dbo].[StoreProducts]
(
	[ProductId] INT NOT NULL,
	[StoreId] INT NOT NULL,
	CONSTRAINT [FK_StoreProducts_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product]([Id]),
	CONSTRAINT [FK_StoreProducts_Store] FOREIGN KEY ([StoreId]) REFERENCES [Store]([Id]),
	CONSTRAINT [PK_StoreProducts] PRIMARY KEY ([ProductId], [StoreId])
)
