USE [RecordDB]
GO

/****** Object:  Table [dbo].[Record]    ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Record](
	[Id] [int] NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Phone] [bigint] NOT NULL,
	[Password] [int] NOT NULL,
	[RoleId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

