USE [RecordDB]
GO

/****** Object:  Table [dbo].[CartDetails]  ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CartDetails](
	[sno] [int] NULL,
	[ProductId] [int] NULL,
	[Pname] [varchar](50) NULL,
	[Pdesc] [varchar](max) NULL,
	[Pimage] [varchar](max) NULL,
	[Pprice] [int] NULL,
	[Pquantity] [int] NULL,
	[Pcategory] [varchar](50) NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

