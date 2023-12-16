USE [RecordDB]
GO

/****** Object:  Table [dbo].[register] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[register](
	[fname] [varchar](50) NOT NULL,
	[lname] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[phone] [bigint] NOT NULL,
	[password] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

