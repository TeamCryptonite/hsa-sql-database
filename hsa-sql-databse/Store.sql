﻿CREATE TABLE [dbo].[Store]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Location] [sys].[geography],
	[Name] VARCHAR(50) NOT NULL
)
