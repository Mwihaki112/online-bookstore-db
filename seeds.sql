DELETE FROM Order_Items;
DELETE FROM Orders;
DELETE FROM Customers;
DELETE FROM Books;

-- Customers
INSERT INTO Customers (name) VALUES
('Agnes'),
('John'),
('Mary'),
('David'),
('Amina');

-- Books
INSERT INTO Books (title) VALUES
('Atomic Habits'),
('Clean Code'),
('The Pragmatic Programmer'),
('Deep Work');

-- Orders
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2026-05-01'),
(2, '2026-05-02'),
(1, '2026-05-03'),
(3, '2026-05-03'),
(4, '2026-05-04');

-- Order Items
INSERT INTO Order_Items (order_id, book_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 1),
(3, 4),
(4, 2),
(5, 3),
(5, 4);