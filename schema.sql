DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Order_Items;

CREATE TABLE Customers (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE Orders (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

CREATE TABLE Books (
    id INTEGER PRIMARY KEY,
    title TEXT
);

CREATE TABLE Order_Items (
    id INTEGER PRIMARY KEY,
    order_id INTEGER,
    book_id INTEGER,
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (book_id) REFERENCES Books(id)
);