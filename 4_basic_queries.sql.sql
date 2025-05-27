-- All borrowed books with names and dates
SELECT b.title, br.borrower_name, br.borrow_date
FROM Borrowers br
JOIN Books b ON br.book_id = b.book_id;

-- All overdue books
SELECT b.title, br.borrower_name
FROM Borrowers br
JOIN Books b ON br.book_id = b.book_id
WHERE br.return_date IS NULL;

-- Top 5 most active borrowers
SELECT borrower_name, COUNT(*) AS total_borrowed
FROM Borrowers
GROUP BY borrower_name
ORDER BY total_borrowed DESC
LIMIT 5;

