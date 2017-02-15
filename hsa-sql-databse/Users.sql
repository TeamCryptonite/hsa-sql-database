CREATE TABLE [dbo].[Users]
(
	[UserId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Username] VARCHAR(30),
	[Password] VARCHAR(MAX),
	[FirstName] VARCHAR(30),
	[LastName] VARCHAR(30),
	[PrefName] VARCHAR(30)
)
