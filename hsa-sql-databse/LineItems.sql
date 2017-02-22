CREATE TABLE [dbo].[LineItems]
(
	[LineItemId] INT NOT NULL PRIMARY KEY IDENTITY,
	[ReceiptId] INT NOT NULL,
	[ProductId] INT NOT NULL,
	[Price] DEC(18,2) NOT NULL,
	[Quantity] INT NOT NULL,
	[IsHsa] BIT NOT NULL DEFAULT 0,
	CONSTRAINT [FK_LineItem_Receipt] FOREIGN KEY ([ReceiptId]) REFERENCES [Receipts]([ReceiptId]) ON DELETE CASCADE,
	CONSTRAINT [FK_LineItem_Product] FOREIGN KEY ([ProductId]) REFERENCES [Products]([ProductId]) ON DELETE CASCADE

)
