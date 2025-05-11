# 📚 Library Management System (SQL Project)

This is a SQL-only backend project that simulates a real-world Library Management System. It demonstrates how data is organized and retrieved using normalized tables and SQL queries.

---

## 🧱 Features

- Manage members, books, book loans, and librarians
- Handle late returns and fine calculations
- Track book requests by members
- Analyze borrowing patterns with queries

---

## 🗃️ Database Schema

**Tables:**
- `Members` – library users
- `Books` – book inventory
- `Loans` – borrowing records
- `Fines` – fine management
- `Librarians` – staff
- `Book_Requests` – requested books by members

---

## 📊 Sample Queries

```sql
-- 1. List overdue books
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

-- 3. Unpaid fines
SELECT m.full_name, SUM(f.fine_amount) AS total_fine
FROM Fines f
JOIN Loans l ON f.loan_id = l.loan_id
JOIN Members m ON l.member_id = m.member_id
WHERE f.paid = FALSE
GROUP BY m.full_name;
```

---

## 💾 How to Use

1. Import `schema.sql` into MySQL/PostgreSQL to create tables.
2. Run `sample_data.sql` to populate with sample data.
3. Run `queries.sql` to explore real use cases.

---

## 🎯 Skills Demonstrated

- Relational database design
- Complex SQL joins and aggregations
- Data normalization and integrity
- Real-world scenario modeling

---

## ✅ Author

**Soumil Jain**  
Built for portfolio & interview demonstration.
