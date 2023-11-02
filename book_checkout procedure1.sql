CREATE PROCEDURE Book_Checkout
    @bookID INT,
    @memberID INT
AS
BEGIN
    DECLARE @membershipStatus NVARCHAR(20);
    DECLARE @checkoutID INT;

    -- Retrieve membership status
    SELECT @membershipStatus = membership_status
    FROM members
    WHERE member_id = @memberID;

    IF @membershipStatus = 'Active'
    BEGIN
        DECLARE @checkoutDate DATE = GETDATE();
        DECLARE @dueDate DATE = DATEADD(DAY, 21, @checkoutDate);

        -- Get the maximum checkout_id and increment for the new entry
        SELECT @checkoutID = ISNULL(MAX(checkout_id) + 1, 1)
        FROM checkout;

        INSERT INTO checkout (checkout_id, book_id, member_id, checkout_date, due_date)
        VALUES (@checkoutID, @bookID, @memberID, @checkoutDate, @dueDate);

        PRINT 'Book ID ' + CAST(@bookID AS NVARCHAR) + ' checked out successfully! Due date: ' + CONVERT(VARCHAR, @dueDate);
    END
    ELSE
    BEGIN
        PRINT 'Membership is expired or suspended. Unable to check out the book.';
    END
END
