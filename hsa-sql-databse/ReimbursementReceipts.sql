CREATE TABLE [dbo].[ReimbursementReceipts]
(
	[ReceiptId] INT NOT NULL,
	[ReimbursementId] INT NOT NULL, 
    CONSTRAINT [FK_ReimbursementReceipts_Receipt] FOREIGN KEY ([ReceiptId]) REFERENCES [Receipts]([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ReimbursementReceipts_Reimbursement] FOREIGN KEY ([ReimbursementId]) REFERENCES [Reimbursements]([Id]) ON DELETE CASCADE,
	CONSTRAINT [PK_ReimbursementReceipts] PRIMARY KEY ([ReceiptId], [ReimbursementId])
)
