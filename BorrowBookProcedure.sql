-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE BorrowBook
(
	@MemberId int,
	@BookId int
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @active bit;
	declare @copies int;
	select @active = Member.IsActive from dbo.Member where Member.MemberId = @MemberId;
	select @copies = Books.CopiesAvailable from Books where Books.BookId = @BookId;
	if @active = 1 and @copies>0
	begin
	insert into Borrowed(MemberId,BookId,BorrowDate,DueDate,IsReturned) values(@MemberId,@BookId,GETDATE(),DATEADD(MONTH,1,GETDATE()),0);
	update Books set CopiesAvailable = @copies-1 where Books.BookId = @BookId;
	update Member set TotalBooksBorrowed = TotalBooksBorrowed+1 where Member.MemberId= @MemberId;
	end

END
GO
