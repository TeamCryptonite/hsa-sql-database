CREATE TABLE [dbo].[LineItem]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[ReceiptId] INT NOT NULL,
	[ProductId] INT NOT NULL,
	[Price] DEC(18,2) NOT NULL,
	[Quantity] INT NOT NULL,
	CONSTRAINT [FK_LineItem_Receipt] FOREIGN KEY ([ReceiptId]) REFERENCES [Receipt]([Id]),
	CONSTRAINT [FK_LineItem_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product]([Id])

)
