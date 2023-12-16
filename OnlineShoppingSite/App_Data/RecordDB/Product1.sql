USE [RecordDB]
GO

/****** Object:  Table [dbo].[Product1]     ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product1](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Pname] [varchar](50) NOT NULL,
	[Pdesc] [varchar](max) NOT NULL,
	[Pimage] [varchar](max) NOT NULL,
	[Pprice] [int] NOT NULL,
	[Pquantity] [int] NOT NULL,
	[Pcategory] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Product1] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

