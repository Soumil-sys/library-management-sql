-- 1. Overdue books
SELECT m.full_name, b.title, l.due_date
FROM Loans l
JOIN Members m ON l.member_id = m.member_id
JOIN Books b ON l.book_id = b.book_id
WHERE l.return_date IS NULL AND l.due_date < CURRENT_DATE;

-- 2. Most borrowed books
SELECT b.title, COUNT(*) AS borrow_count
FROM Loans l
JOIN Books b ON l.book_id = b.book_id
GROUP BY b.title
ORDER BY borrow_count DESC
LIMIT 3;

-- 3. Unpaid fines per member
SELECT m.full_name, SUM(f.fine_amount) AS total_fine
FROM Fines f
JOIN Loans l ON f.loan_id = l.loan_id
JOIN Members m ON l.member_id = m.member_id
WHERE f.paid = FALSE
GROUP BY m.full_name;