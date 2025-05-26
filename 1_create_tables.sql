-- Create Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(100),
    genre VARCHAR(50)
);

-- Create Borrowers Table
CREATE TABLE Borrowers (
    borrow_id INT PRIMARY KEY,
    book_id INT,
    borrower_name VARCHAR(100),
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);