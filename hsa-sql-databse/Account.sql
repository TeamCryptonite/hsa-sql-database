﻿CREATE TABLE [dbo].[Account]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[AccountNum] INT NOT NULL,
	[IsActive] BIT DEFAULT 0 NOT NULL
)