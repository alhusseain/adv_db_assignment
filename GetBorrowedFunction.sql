-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION GetBooksBorrowed
(
	@MemberId int
)
RETURNS int
AS
BEGIN
declare @cnt int;
select @cnt = count(*) from Borrowed where Borrowed.MemberId = @MemberId and Borrowed.IsReturned=0 group by Borrowed.MemberId;
return @cnt;

END
GO

