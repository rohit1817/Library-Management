CREATE PROCEDURE CheckBookAvailability
    @bookID INT
AS
BEGIN
    DECLARE @bookCount INT;
    DECLARE @returnDate DATE;
    DECLARE @bookTitle NVARCHAR(255);

    -- Check if the book ID exists in the books table
    SELECT @bookCount = COUNT(*)
    FROM books
    WHERE bookID = @bookID;

    IF @bookCount > 0
    BEGIN
        -- Book ID exists in the books table, check availability in checkout table
        SELECT @bookTitle = title
        FROM books
        WHERE bookID = @bookID;

        SELECT @returnDate = MAX(return_date)
        FROM checkout
        WHERE book_id = @bookID;

        IF @returnDate IS NULL
        BEGIN
            -- Book is present in checkout table but not yet returned
            PRINT 'Book "' + @bookTitle + '" is available for checkout.';
        END
        ELSE
        BEGIN
            -- Book is present in checkout table and has been returned
            PRINT 'Book "' + @bookTitle + '" is available.';
        END
    END
    ELSE
    BEGIN
        -- Book ID does not exist in the books table
        PRINT 'Book ID ' + CAST(@bookID AS NVARCHAR) + ' does not exist.';
    END
END
