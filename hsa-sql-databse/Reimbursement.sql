CREATE TABLE [dbo].[Reimbursement]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[AccountId] INT NOT NULL,
	[IsReimbursed] BIT NOT NULL DEFAULT 0,
	[DateTime] DATETIME NOT NULL,
	[Amount] DECIMAL(18, 2) NOT NULL,
	CONSTRAINT [FK_dbo.Account_dbo.Account_Id] FOREIGN Key ([AccountId])
		REFERENCES [dbo].[Account] ([ID]) ON DELETE CASCADE
)
