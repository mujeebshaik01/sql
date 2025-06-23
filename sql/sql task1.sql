create database inventorymanagementsystem
USE inventorymanagementsystem
CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);
CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_info VARCHAR(150)
);
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category_id INT,
    supplier_id INT,
    price DECIMAL(10,2),
    description TEXT,
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);
CREATE TABLE Stock (
    stock_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    last_updated DATE,
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);
