CREATE TABLE AUTHORS (
	author_id INT AUTO_INCREMENT PRIMARY KEY ,
    author_name VARCHAR(215) NOT NULL
);
CREATE TABLE BOOKS (
	book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) PEFERENCES AUTHOR(author_id)
);
CREATE TABLE ORDERS (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) PEFERENCES CUSTOMERS(customer_id)
);
CREATE TABLE ORDER_DETAILS (
	orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) PEFERENCES ORDERS(order_id),
    FOREIGN KEY (book_id) PEFERENCES BOOKS(book_id)
);