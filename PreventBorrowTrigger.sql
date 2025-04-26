--====================================
--  Create database trigger template 
--====================================
USE Assignment
GO

CREATE TRIGGER PreventBorrowIfNoCopies  ON Borrowed instead of INSERT
AS 
declare @active bit;
declare @copies int;
declare @bookid int;
declare @memberid int;
select @bookid = BookId,@memberid = MemberId from inserted;
select @active = Member.IsActive from Member where MemberId = @memberid;
select @copies = Books.CopiesAvailable from Books where BookId= @bookid;
if @active =0 or @copies = 0
BEGIN
   PRINT 'Cannot complete borrowing' 
   ROLLBACK TRANSACTION
END
GO


