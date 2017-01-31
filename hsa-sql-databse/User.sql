CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Username] VARCHAR(30),
	[Password] VARCHAR(MAX),
	[FirstName] VARCHAR(30),
	[LastName] VARCHAR(30),
	[PrefName] VARCHAR(30)
)
