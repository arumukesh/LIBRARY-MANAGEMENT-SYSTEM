CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    year INT,
    available BOOLEAN
);
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20)
);
CREATE TABLE borrowings (
    borrowing_id INT PRIMARY KEY,
    book_id INT,
    user_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO books (book_id, title, author, year, available)VALUES
    (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, true),
    (2, 'To Kill a Mockingbird', 'Harper Lee', 1960, true),
    (3, 'Pride and Prejudice', 'Jane Austen', 1813, false),
    (4, 'Eminem the true story', 'Mathew Higgins', 2000, false),
    (5, 'Lion king', 'Christopher Nolan', 1823, True);
INSERT INTO users (user_id, name, email, phone)
VALUES
    (1, 'John Smith', 'john.smith@example.com', '555-1234'),
    (2, 'Jane Doe', 'jane.doe@example.com', '555-5678'),
    (3,'Katie','katie@example.com','555-7896'),
    (4,'Karan','karan@example.com','555-7776'),
    (5,'ben','ben@example.com','555-7987');
INSERT INTO borrowings (borrowing_id, book_id, user_id, borrow_date, return_date)
VALUES
    (1, 1, 1, '2023-04-23', NULL),
    (2, 2, 2, '2023-04-23', NULL),
    (3, 3, 3, '2023-03-22','2024-03-10'),
    (4, 4, 4, '2023-04-10','2023-05-10'),
    (5, 5, 5, '2023-02-13','2023-06-13'); 