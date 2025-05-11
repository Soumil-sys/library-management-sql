-- Sample Members
INSERT INTO Members VALUES (1, 'Soumil Jain', 'soumil@example.com', '9876543210', '2023-01-15');
INSERT INTO Members VALUES (2, 'Isha Verma', 'isha@example.com', '8765432109', '2023-02-20');

-- Sample Books
INSERT INTO Books VALUES (101, 'Clean Code', 'Robert C. Martin', 'Programming', 2008, 5, 3);
INSERT INTO Books VALUES (102, 'Atomic Habits', 'James Clear', 'Self-help', 2018, 4, 2);

-- Sample Loans
INSERT INTO Loans VALUES (1001, 1, 101, '2024-05-01', '2024-05-15', NULL);
INSERT INTO Loans VALUES (1002, 2, 102, '2024-04-20', '2024-05-04', '2024-05-03');

-- Sample Fines
INSERT INTO Fines VALUES (501, 1001, 30.00, FALSE);
INSERT INTO Fines VALUES (502, 1002, 0.00, TRUE);

-- Sample Librarians
INSERT INTO Librarians VALUES (1, 'Anil Mehta', 'anil@library.com', '2020-01-01');

-- Sample Book Requests
INSERT INTO Book_Requests VALUES (301, 1, 'Deep Work', 'Cal Newport', '2024-05-10');