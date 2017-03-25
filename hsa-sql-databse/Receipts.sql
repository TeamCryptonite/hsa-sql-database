﻿CREATE TABLE [dbo].[Receipts]
(
	[ReceiptId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[UserObjectId] UNIQUEIDENTIFIER,
	[DateTime] DATETIME DEFAULT CURRENT_TIMESTAMP,
	[IsScanned] BIT DEFAULT 0,
	[StoreId] INT,
	[ImageRef] VARCHAR(MAX),
	[OcrRef] VARCHAR(MAX) NULL, 
    [WaitingForOcr] BIT NOT NULL DEFAULT 0, 
    [Provisional] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Receipts_Stores] FOREIGN KEY ([StoreId]) REFERENCES [Stores]([StoreId]) ON DELETE SET NULL,
	CONSTRAINT [FK_Receipts_Users] FOREIGN KEY ([UserObjectId]) REFERENCES [Users]([UserObjectId]) ON DELETE SET NULL
)
