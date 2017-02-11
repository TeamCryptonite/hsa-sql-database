CREATE TABLE [dbo].[LineItems]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[ReceiptId] INT NOT NULL,
	[ProductId] INT NOT NULL,
	[Price] DEC(18,2) NOT NULL,
	[Quantity] INT NOT NULL,
	CONSTRAINT [FK_LineItem_Receipt] FOREIGN KEY ([ReceiptId]) REFERENCES [Receipts]([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_LineItem_Product] FOREIGN KEY ([ProductId]) REFERENCES [Products]([Id]) ON DELETE CASCADE

)
