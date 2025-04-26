USE [Assignment]
GO

/****** Object:  Table [dbo].[Member]    Script Date: 4/26/2025 9:08:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Member](
	[MemberId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[TotalBooksBorrowed] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

