CREATE DATABASE realbooks;
USE realbooks;
CREATE TABLE Customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Address VARCHAR(100),
    EmailAddress VARCHAR(100)
);

CREATE TABLE Books (
    BookID VARCHAR(10) PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    DatePublished DATE,
    QuantityAvailable INT
);

CREATE TABLE BooksOrdered (
    OrderID VARCHAR(10) PRIMARY KEY,
    CustomerID VARCHAR(10),
    BookID VARCHAR(10),
    DatePurchased DATE,
    AmountPaid DECIMAL(10, 2),
    Quantity INT,
    OrderStatus VARCHAR(20),
    ShippingAddress VARCHAR(100),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Address, EmailAddress) VALUES
('C001', 'Peter', 'Smith', '123 Main St', 'psmith@yahoo.com'),
('C002', 'Prince', 'Johnson', '456 Elm St', 'prince.johnson@gmail.com'),
('C003', 'Robert', 'Williams', '789 Oak Ave', 'williamsr@gmail.com'),
('C004', 'David', 'Brown', '234 Pine St', 'davidsbrown@gmail.com'),
('C005', 'Jennifer', 'Davis', NULL, 'davidsj@gmail.com'),
('C006', 'Sarah', 'Davids', '567 Maple Rd', NULL),
('C007', 'Mark', 'Miller', '890 Oak Ave', 'miller_mark@yahoo.com'),
('C008', 'Jessica', 'Anderson', '123 Main St', 'jessica@yahoo'),
('C009', 'Michael', 'Wilson', '432 Elm St', 'wilsonmich@pic.uk'),
('C010', 'Emily', 'Taylor', '789 Oak Ave', 'taylor@abc.edu'),
('C011', 'Samantha', 'Nicholas', '567 Maple Rd', 'samanthan@gmail.com'),
('C012', 'Daniel', 'Walker', '890 Oak Ave', 'walker_daniel@gmail.com'),
('C013', 'Rebecca', 'Green', NULL, 'greenr@yahoo.com'),
('C014', 'Nicholas', 'Turner', '234 Pine St', 'nicholast@wvy.ac.na'),
('C015', 'Olivia', 'Clark', '432 Elm St', NULL),
('C016', 'Roland', 'Stephens', '789 Oak Ave', 'roland@gmail.com'),
('C017', 'Sarah', 'Davids', '567 Maple Rd', NULL);

INSERT INTO Books (BookID, Title, Author, DatePublished, QuantityAvailable) VALUES
('SN1001', 'The Great Gatsby', 'Scott Fitzgerald', '1925-04-10', 10),
('SN1002', 'Things fall apart', 'Chinua Achebe', '1960-07-11', 5),
('SN1003', 'Oliver twist', 'Charles Dickens', '1949-06-08', 15),
('SN1004', 'Pride and Prejudice', 'Jane Austen', '1813-01-28', 8),
('SN1005', 'The Catcher in the Rye', 'Jerome David Salinger', '1951-07-16', NULL),
('SN1006', 'To Kill a Mockingbird', 'Harper Lee', '1960-07-11', 3),
('SN1007', 'Harry Potter and the Philosopher\'s Stone', 'Joanne Rowling', NULL, 20),
('SN1008', 'The Lord of the Rings', 'John Ronald Reuel Tolkien', '1954-07-29', 12),
('SN1009', 'Romeo and Juliet', 'William Shakespeare', '1597-01-01', 5),
('SN1010', 'The Hobbit', 'John Ronald Reuel Tolkien', '1937-09-21', 7),
('SN1011', 'Coming of the Dry Season', 'Charles Mungoshi', '1981-07-16', 10),
('SN1012', 'The Lion and the Jewel', 'Wole Soyinka', '1962-06-26', 2),
('SN1013', 'Pride and Prejudice', 'Jane Austen', '1813-01-28', 4),
('SN1014', 'The Grapes of Wrath', 'John Steinbeck', '1939-07-29', NULL),
('SN1015', 'Introduction to Data Mining', 'Pang-Ning Tan', '2011-06-28', 6),
('SN1016', 'Brave New World', 'Aldous Huxley', '1932-04-10', 8),
('SN1017', 'To Kill a Mockingbird', 'Harper Lee', '1960-07-11', 3);

INSERT INTO BooksOrdered (OrderID, CustomerID, BookID, DatePurchased, AmountPaid, Quantity, OrderStatus, ShippingAddress) VALUES
('OR100001', 'C001', 'SN1001', '2023-01-05', 24.99, 1, 'Shipped', '7 Marlin Cresent'),
('OR100002', 'C002', 'SN1002', '2023-02-18', 19.99, 2, 'Delivered', '4 Belmont drive'),
('OR100003', 'C003', 'SN1003', '2023-03-10', 12.99, 1, 'Pending', '78 Nelson Avenue'),
('OR100004', 'C004', 'SN1004', '2023-04-22', 39.99, 3, 'Shipped', '9 Andrier drive'),
('OR100005', 'C005', 'SN1005', '2023-05-07', 24.99, 1, 'Delivered', '67 Maple Rd'),
('OR100006', 'C006', 'SN1006', '2023-06-13', 19.99, 2, 'Shipped', '90 Oak drive'),
('OR100007', 'C007', 'SN1007', '2023-07-28', 12.99, 1, 'Delivered', '89 Cambridge drive'),
('OR100008', 'C008', 'SN1008', '2023-08-19', 39.99, 3, 'Pending', '03 Andrews st'),
('OR100009', 'C009', 'SN1009', '2023-09-02', 24.99, 1, 'Shipped', '23 Oaukridge square'),
('OR100010', 'C010', 'SN1010', '2023-10-14', 19.99, 2, 'Delivered', '17 Pineland St'),
('OR100011', 'C011', 'SN1011', '2023-04-05', 12.99, 1, 'Shipped', '8 Unki drive'),
('OR100012', 'C012', 'SN1012', '2023-05-17', 39.99, 3, 'Delivered', '17 Beijing drive'),
('OR100013', 'C013', 'SN1013', '2023-06-30', 24.99, 1, 'Pending', '56 Lagos square'),
('OR100014', 'C014', 'SN1014', '2023-07-25', 19.99, 2, 'Shipped', 'Corner Jill and Jik'),
('OR100015', 'C015', 'SN1015', '2023-08-08', 12.99, 1, 'Delivered', '795 Oliver st'),
('OR100016', 'C016', 'SN1016', '2023-09-19', 39.00, NULL, NULL, NULL);


-- Data Cleaning
--  Fix malformed email addresses:

UPDATE Customers
SET EmailAddress = 'jessica@yahoo.com'
WHERE CustomerID = 'C008';

-- Replace NULL in QuantityAvailable with 0:
UPDATE Books
SET QuantityAvailable = 0
WHERE QuantityAvailable IS NULL;

-- Handle NULL in BooksOrdered
UPDATE BooksOrdered
SET OrderStatus = 'Pending'
WHERE OrderStatus IS NULL;


-- Merge Data
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Address AS CustomerAddress,
    COALESCE(c.EmailAddress, 'Not Provided') AS EmailAddress,
    b.BookID,
    b.Title,
    b.Author,
    COALESCE(b.DatePublished, '1900-01-01') AS DatePublished,
    COALESCE(b.QuantityAvailable, 0) AS QuantityAvailable,
    bo.OrderID,
    bo.DatePurchased,
    bo.AmountPaid,
    COALESCE(bo.Quantity, 1) AS Quantity,
    COALESCE(bo.OrderStatus, 'Pending') AS OrderStatus,
    COALESCE(bo.ShippingAddress, c.Address) AS ShippingAddress
FROM
    BooksOrdered bo
JOIN
    Customers c ON bo.CustomerID = c.CustomerID
JOIN
    Books b ON bo.BookID = b.BookID;




-- Export to Excel
SELECT 
    bo.OrderID, 
    bo.CustomerID, 
    c.FirstName, 
    c.LastName, 
    c.Address AS CustomerAddress, 
    c.EmailAddress, 
    bo.BookID, 
    b.Title, 
    b.Author, 
    b.DatePublished, 
    bo.DatePurchased, 
    bo.AmountPaid, 
    bo.Quantity, 
    bo.OrderStatus, 
    bo.ShippingAddress
INTO OUTFILE "C:\Users\DELL\Downloads\mergedata.csv"
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM BooksOrdered bo
JOIN Customers c ON bo.CustomerID = c.CustomerID
JOIN Books b ON bo.BookID = b.BookID;

