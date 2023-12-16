USE [RecordDB]
GO

/****** Object:  Table [dbo].[OrderDetails]    ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderDetails](
	[orderid] [varchar](max) NOT NULL,
	[sno] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[productname] [varchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[orderdate] [varchar](50) NOT NULL,
	[status] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

