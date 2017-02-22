CREATE TABLE [dbo].[Products]
(
	[ProductId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(100) NOT NULL,
	[Description] TEXT,
	[AlwaysHsa] BIT NOT NULL DEFAULT 0,
	[CategoryId] INT,
	CONSTRAINT [FK_Products_Categories] FOREIGN KEY ([CategoryId]) REFERENCES [Categories]([CategoryId]) ON DELETE CASCADE,
)
