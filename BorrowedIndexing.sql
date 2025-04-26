USE [Assignment]
GO

/****** Object:  Index [member-book-index]    Script Date: 4/26/2025 11:36:32 PM ******/
CREATE NONCLUSTERED INDEX [member-book-index] ON [dbo].[Borrowed]
(
	[BookId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

