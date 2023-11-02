CREATE PROCEDURE CheckBookAvailability
    @bookID INT
AS
BEGIN
    DECLARE @bookCount INT;
    DECLARE @returnDate DATE;
    DECLARE @bookTitle NVARCHAR(255);

   
    SELECT @bookCount = COUNT(*)
    FROM books
    WHERE bookID = @bookID;

    IF @bookCount > 0
    BEGIN
        
        SELECT @bookTitle = title
        FROM books
        WHERE bookID = @bookID;

        SELECT @returnDate = MAX(return_date)
        FROM checkout
        WHERE book_id = @bookID;

        IF @returnDate IS NULL
        BEGIN
           
            PRINT 'Book "' + @bookTitle + '" is available for checkout.';
        END
        ELSE
        BEGIN
            
            PRINT 'Book "' + @bookTitle + '" is available.';
        END
    END
    ELSE
    BEGIN
        
        PRINT 'Book ID ' + CAST(@bookID AS NVARCHAR) + ' does not exist.';
    END
END
