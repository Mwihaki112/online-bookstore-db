SELECT * FROM Customers;

SELECT * FROM Books;

SELECT Orders.id, Customers.name, Orders.order_date
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.id;

SELECT Orders.id AS order_id, Books.title
FROM Order_Items
JOIN Orders ON Order_Items.order_id = Orders.id
JOIN Books ON Order_Items.book_id = Books.id;

SELECT Customers.name, Books.title
FROM Customers
JOIN Orders ON Customers.id = Orders.customer_id
JOIN Order_Items ON Orders.id = Order_Items.order_id
JOIN Books ON Order_Items.book_id = Books.id
WHERE Customers.name = 'David';