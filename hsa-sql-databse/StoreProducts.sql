CREATE TABLE [dbo].[StoreProducts]
(
	[Id] INT NOT NULL IDENTITY PRIMARY KEY,
	[ProductId] INT NOT NULL,
	[StoreId] INT NOT NULL,
	CONSTRAINT [FK_StoreProducts_Product] FOREIGN KEY ([ProductId]) REFERENCES [Products]([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_StoreProducts_Store] FOREIGN KEY ([StoreId]) REFERENCES [Stores]([Id]) ON DELETE CASCADE,
	--CONSTRAINT [PK_StoreProducts] PRIMARY KEY ([ProductId], [StoreId])
)
