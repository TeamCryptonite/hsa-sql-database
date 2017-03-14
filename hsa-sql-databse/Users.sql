﻿CREATE TABLE [dbo].[Users]
(
	[UserObjectId] UNIQUEIDENTIFIER PRIMARY KEY, 
    [IsEmployee] BIT NOT NULL DEFAULT 0, 
    [IsActiveUser] BIT NOT NULL DEFAULT 0 
)
