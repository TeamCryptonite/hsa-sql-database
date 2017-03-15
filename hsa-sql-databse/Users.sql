CREATE TABLE [dbo].[Users]
(
	[UserObjectId] UNIQUEIDENTIFIER PRIMARY KEY, 
    [IsEmployee] BIT NOT NULL DEFAULT 0, 
    [IsActiveUser] BIT NOT NULL DEFAULT 0, 
    [EmailAddress] VARCHAR(MAX) NOT NULL, 
    [GivenName] VARCHAR(MAX) NULL, 
    [Surname] VARCHAR(MAX) NULL 
)
