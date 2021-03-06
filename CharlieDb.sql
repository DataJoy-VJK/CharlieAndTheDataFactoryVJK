/****** Object:  Schema [charlie]    Script Date: 5/9/2020 1:33:15 PM ******/
CREATE SCHEMA [charlie]
GO
/****** Object:  Schema [charlieFinal]    Script Date: 5/9/2020 1:33:15 PM ******/
CREATE SCHEMA [charlieFinal]
GO
/****** Object:  Table [charlieFinal].[Versions]    Script Date: 5/9/2020 1:33:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [charlieFinal].[Versions](
	[VersionId] [int] NOT NULL,
	[VersionName] [varchar](50) NOT NULL,
	[VersionYear] [int] NOT NULL,
	[MediaType] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [charlieFinal].[Actors]    Script Date: 5/9/2020 1:33:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [charlieFinal].[Actors](
	[ActorId] [int] NOT NULL,
	[ActorFirstName] [varchar](50) NOT NULL,
	[ActorLastName] [varchar](50) NOT NULL,
	[CharacterId] [int] NULL,
	[VersionId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [charlieFinal].[Characters]    Script Date: 5/9/2020 1:33:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [charlieFinal].[Characters](
	[CharacterId] [int] NOT NULL,
	[CharacterFirstName] [varchar](50) NOT NULL,
	[CharacterLastName] [varchar](50) NULL,
	[CharacterName] [varchar](50) NOT NULL,
	[AgeCategory] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_CharactersActors]    Script Date: 5/9/2020 1:33:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_CharactersActors] AS

SELECT 
	c.CharacterName AS [Character]
	,a2.ActorFirstName + ' ' + a2.ActorLastName AS [Charlie and the Chocolate Factory]
	,a3.ActorFirstName + ' ' + a3.ActorLastName AS [Willy Wonka & the Chocolate Factory]
	,c.AgeCategory
FROM
(	SELECT a.*
	FROM charlieFinal.actors a
	JOIN charlieFinal.versions v ON a.VersionId = v.VersionId
	WHERE v.VersionName = 'Willy Wonka & the Chocolate Factory'
) a2
JOIN
(	SELECT a.*
	FROM charlieFinal.actors a
	JOIN charlieFinal.versions v ON a.VersionId = v.VersionId
	WHERE v.VersionName = 'Charlie and the Chocolate Factory'
) a3 ON a2.CharacterId = a3.CharacterId
JOIN charlieFinal.characters c ON a2.CharacterId = c.CharacterId
GO
/****** Object:  Table [charlie].[Actors]    Script Date: 5/9/2020 1:33:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [charlie].[Actors](
	[ActorId] [int] NOT NULL,
	[ActorFirstName] [varchar](50) NOT NULL,
	[ActorLastName] [varchar](50) NOT NULL,
	[CharacterId] [int] NULL,
	[VersionId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [charlie].[Characters]    Script Date: 5/9/2020 1:33:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [charlie].[Characters](
	[CharacterId] [int] NOT NULL,
	[CharacterFirstName] [varchar](50) NOT NULL,
	[CharacterLastName] [varchar](50) NULL,
	[AgeCategory] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [charlie].[Versions]    Script Date: 5/9/2020 1:33:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [charlie].[Versions](
	[VersionId] [int] NOT NULL,
	[VersionName] [varchar](50) NOT NULL,
	[VersionYear] [int] NOT NULL,
	[MediaType] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (1, N'Johnny', N'Depp', 7, 3)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (2, N'Gene', N'Wilder', 7, 2)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (3, N'Peter', N'Ostrum', 1, 2)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (4, N'Freddie', N'Highmore', 1, 3)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (5, N'AnnaSophia', N'Robb', 6, 3)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (6, N'Denise', N'Nickerson', 6, 2)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (7, N'Julie Dawn', N'Cole', 5, 2)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (8, N'Julia', N'Winter', 5, 3)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (9, N'Philip', N'Wiegratz', 3, 3)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (10, N'Michael', N'Bollner', 3, 2)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (11, N'Jack', N'Albertson', 2, 2)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (12, N'David', N'Kelly', 2, 3)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (13, N'Jordan', N'Fry', 4, 3)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (14, N'Paris', N'Themmen', 4, 2)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (15, N'Gunter', N'Meisner', 8, 2)
INSERT [charlie].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (16, N'Philip', N'Philmar', 8, 3)
INSERT [charlie].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [AgeCategory]) VALUES (1, N'Charlie', N'Bucket', N'Child')
INSERT [charlie].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [AgeCategory]) VALUES (2, N'Grandpa Joe', NULL, N'Adult')
INSERT [charlie].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [AgeCategory]) VALUES (3, N'Augustus', N'Gloop', N'Child')
INSERT [charlie].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [AgeCategory]) VALUES (4, N'Mike', N'Teavee', N'Child')
INSERT [charlie].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [AgeCategory]) VALUES (8, N'Arthur', N'Slugworth', N'Adult')
INSERT [charlie].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [AgeCategory]) VALUES (5, N'Veruca', N'Salt', N'Child')
INSERT [charlie].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [AgeCategory]) VALUES (6, N'Violet', N'Beauregarde', N'Child')
INSERT [charlie].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [AgeCategory]) VALUES (7, N'Willy', N'Wonka', N'Adult')
INSERT [charlie].[Versions] ([VersionId], [VersionName], [VersionYear], [MediaType]) VALUES (1, N'Charlie and the Chocolate Factory', 1964, N'Book')
INSERT [charlie].[Versions] ([VersionId], [VersionName], [VersionYear], [MediaType]) VALUES (2, N'Willy Wonka & the Chocolate Factory', 1971, N'Movie')
INSERT [charlie].[Versions] ([VersionId], [VersionName], [VersionYear], [MediaType]) VALUES (3, N'Charlie and the Chocolate Factory', 2005, N'Movie')
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (1, N'Johnny', N'Depp', 7, 3)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (2, N'Gene', N'Wilder', 7, 2)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (3, N'Peter', N'Ostrum', 1, 2)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (4, N'Freddie', N'Highmore', 1, 3)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (5, N'AnnaSophia', N'Robb', 6, 3)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (6, N'Denise', N'Nickerson', 6, 2)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (7, N'Julie Dawn', N'Cole', 5, 2)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (8, N'Julia', N'Winter', 5, 3)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (9, N'Philip', N'Wiegratz', 3, 3)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (10, N'Michael', N'Bollner', 3, 2)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (11, N'Jack', N'Albertson', 2, 2)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (12, N'David', N'Kelly', 2, 3)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (13, N'Jordan', N'Fry', 4, 3)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (14, N'Paris', N'Themmen', 4, 2)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (15, N'Gunter', N'Meisner', 8, 2)
INSERT [charlieFinal].[Actors] ([ActorId], [ActorFirstName], [ActorLastName], [CharacterId], [VersionId]) VALUES (16, N'Philip', N'Philmar', 8, 3)
INSERT [charlieFinal].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [CharacterName], [AgeCategory]) VALUES (1, N'Charlie', N'Bucket', N'Charlie Bucket', N'Child')
INSERT [charlieFinal].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [CharacterName], [AgeCategory]) VALUES (2, N'Grandpa Joe', NULL, N'Grandpa Joe', N'Adult')
INSERT [charlieFinal].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [CharacterName], [AgeCategory]) VALUES (3, N'Augustus', N'Gloop', N'Augustus Gloop', N'Child')
INSERT [charlieFinal].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [CharacterName], [AgeCategory]) VALUES (4, N'Mike', N'Teavee', N'Mike Teavee', N'Child')
INSERT [charlieFinal].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [CharacterName], [AgeCategory]) VALUES (8, N'Arthur', N'Slugworth', N'Arthur Slugworth', N'Adult')
INSERT [charlieFinal].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [CharacterName], [AgeCategory]) VALUES (5, N'Veruca', N'Salt', N'Veruca Salt', N'Child')
INSERT [charlieFinal].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [CharacterName], [AgeCategory]) VALUES (6, N'Violet', N'Beauregarde', N'Violet Beauregarde', N'Child')
INSERT [charlieFinal].[Characters] ([CharacterId], [CharacterFirstName], [CharacterLastName], [CharacterName], [AgeCategory]) VALUES (7, N'Willy', N'Wonka', N'Willy Wonka', N'Adult')
INSERT [charlieFinal].[Versions] ([VersionId], [VersionName], [VersionYear], [MediaType]) VALUES (1, N'Charlie and the Chocolate Factory', 1964, N'Book')
INSERT [charlieFinal].[Versions] ([VersionId], [VersionName], [VersionYear], [MediaType]) VALUES (2, N'Willy Wonka & the Chocolate Factory', 1971, N'Movie')
INSERT [charlieFinal].[Versions] ([VersionId], [VersionName], [VersionYear], [MediaType]) VALUES (3, N'Charlie and the Chocolate Factory', 2005, N'Movie')
/****** Object:  StoredProcedure [dbo].[GiveCandy]    Script Date: 5/9/2020 1:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GiveCandy] AS

SELECT 1
GO
/****** Object:  StoredProcedure [dbo].[GiveGoodChildTheFactory]    Script Date: 5/9/2020 1:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GiveGoodChildTheFactory]
as

--dummy procedure
select 1
GO
/****** Object:  StoredProcedure [dbo].[LogPipelineError]    Script Date: 5/9/2020 1:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LogPipelineError] AS 

SELECT 1
GO
/****** Object:  StoredProcedure [dbo].[LogPipelineStart]    Script Date: 5/9/2020 1:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LogPipelineStart] AS 

SELECT 1
GO
/****** Object:  StoredProcedure [dbo].[LogPipelineSuccess]    Script Date: 5/9/2020 1:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LogPipelineSuccess] AS 

SELECT 1
GO
/****** Object:  StoredProcedure [dbo].[SendBadChildHome]    Script Date: 5/9/2020 1:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SendBadChildHome]
as

--dummy procedure
select 1
GO
/****** Object:  StoredProcedure [dbo].[ViewCharactersActors]    Script Date: 5/9/2020 1:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ViewCharactersActors] AS

SELECT *
FROM vw_CharactersActors
ORDER BY AgeCategory, [Character]
GO
