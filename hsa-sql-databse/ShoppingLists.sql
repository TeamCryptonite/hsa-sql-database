﻿CREATE TABLE [dbo].[ShoppingLists]
(
	[ShoppingListId] INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[UserObjectId] uniqueidentifier NOT NULL,
	[Name] VARCHAR(MAX),
	[Description] VARCHAR(MAX)
)