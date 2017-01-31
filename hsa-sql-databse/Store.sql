CREATE TABLE [dbo].[Store]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Location] [sys].[geography],
	[Name] VARCHAR(50) NOT NULL
)
