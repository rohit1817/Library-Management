CREATE TABLE checkout(
CHECKOUT_ID INT PRIMARY KEY,
BOOK_ID INT,
MEMBER_ID INT,
CHECKOUT_DATE DATE,
DUE_DATE DATE,
RETURN_DATE DATE,
FOREIGN KEY (BOOK_ID) REFERENCES BOOKS(BOOKID),
FOREIGN KEY (MEMBER_ID) REFERENCES MEMBERS(MEMBER_ID)



)