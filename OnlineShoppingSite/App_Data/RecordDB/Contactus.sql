USE [RecordDB]
GO

/****** Object:  Table [dbo].[Contactus]    ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Contactus](
	[Id] [int] IDENTITY(101,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Emailid] [varchar](100) NOT NULL,
	[Phoneno] [bigint] NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[issue] [varchar](max) NOT NULL,
	[fileupload] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

