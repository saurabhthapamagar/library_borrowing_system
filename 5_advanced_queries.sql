-- Count of times each book has been borrowed
SELECT b.title, COUNT(br.borrow_id) AS times_borrowed
FROM Borrowers br
JOIN Books b ON br.book_id = b.book_id
GROUP BY b.title
ORDER BY times_borrowed DESC;

-- Most popular genres
SELECT b.genre, COUNT(*) AS genre_count
FROM Books b
JOIN Borrowers br ON b.book_id = br.book_id
GROUP BY b.genre
ORDER BY genre_count DESC;

-- Average borrow duration
SELECT AVG(DATEDIFF(return_date, borrow_date)) AS avg_duration_days
FROM Borrowers
WHERE return_date IS NOT NULL;
