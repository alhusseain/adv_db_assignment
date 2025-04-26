DELETE FROM Borrowed;
DELETE FROM Member;
DELETE FROM Books;


-- sample books
INSERT INTO Books (BookId, Title, Author, CopiesAvailable, TotalCopies)
VALUES
(1, 'Book A', 'Author A', 3, 5),
(2, 'Book B', 'Author B', 2, 4),
(3, 'Book C', 'Author C', 1, 3);

-- sample members
INSERT INTO Member (MemberId, Name, Email, TotalBooksBorrowed, IsActive)
VALUES
(1, 'Member X', 'memberx@example.com', 0, 1),
(2, 'Member Y', 'membery@example.com', 0, 1),
(3, 'Member Z', 'memberz@example.com', 0, 0);


