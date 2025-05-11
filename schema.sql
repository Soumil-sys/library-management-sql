-- 1. Members Table
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    join_date DATE
);

-- 2. Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(100),
    genre VARCHAR(50),
    publication_year INT,
    total_copies INT,
    available_copies INT
);

-- 3. Loans Table
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- 4. Fines Table
CREATE TABLE Fines (
    fine_id INT PRIMARY KEY,
    loan_id INT,
    fine_amount DECIMAL(6,2),
    paid BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
);

-- 5. Librarians Table
CREATE TABLE Librarians (
    librarian_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    hire_date DATE
);

-- 6. Book Requests Table
CREATE TABLE Book_Requests (
    request_id INT PRIMARY KEY,
    member_id INT,
    title VARCHAR(255),
    author VARCHAR(100),
    request_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);