USE [RecordDB]
GO

/****** Object:  Table [dbo].[CardDetails]  ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CardDetails](
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[CardNo] [bigint] NULL,
	[ExpiryDate] [varchar](50) NULL,
	[CVV] [int] NULL,
	[BillingAddr] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

