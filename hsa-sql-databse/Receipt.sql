﻿CREATE TABLE [dbo].[Receipt]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[UserId] INT,
	[DateTime] DATETIME DEFAULT CURRENT_TIMESTAMP,
	[IsScanned] BIT DEFAULT 0,
	[StoreId] INT NOT NULL
    CONSTRAINT [FK_Receipt_User] FOREIGN KEY ([ReceiptId]) REFERENCES [Receipt]([Id])
)
