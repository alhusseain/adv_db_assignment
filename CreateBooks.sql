USE [Assignment]
GO

/****** Object:  Table [dbo].[Books]    Script Date: 4/26/2025 9:09:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Books](
	[BookId] [int] NOT NULL,
	[Title] [nchar](10) NULL,
	[Author] [nchar](10) NULL,
	[CopiesAvailable] [int] NULL,
	[TotalCopies] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

