CREATE DATABASE IF NOT EXISTS order_management;

USE order_management;

-- Customers table
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20)
);

-- Insert customers
INSERT INTO customers
(customer_id, customer_name, email, phone)
VALUES
(1, 'Jacintha', 'jasi@gmail.com', '9876543210'),
(2, 'bhoomika', 'bhoomika@gmail.com', '9876543211'),
(3, 'shalini', 'shalini@gmail.com', '9876543212'),
(4, 'lavanya', 'lavanya@gmail.com', '9876543213'),
(5, 'gayatthri', 'gayatthri@gmail.com', '9876543214');

-- Products table
CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

-- Insert products
INSERT INTO products
(product_id, product_name, price, stock)
VALUES
(1, 'Laptop', 6000.00, 10),
(2, 'Keyboard', 1500.00, 25),
(3, 'Mouse', 800.00, 30),
(4, 'Monitor', 7500.00, 15),
(5, 'Headphones', 2500.00, 20);

-- Orders table
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    discount DECIMAL(10,2) NOT NULL DEFAULT 0,
    final_amount DECIMAL(10,2) NOT NULL,
    order_status VARCHAR(30) DEFAULT 'CREATED',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

-- Insert orders
INSERT INTO orders
(
    order_id,
    customer_id,
    product_id,
    quantity,
    price,
    total_amount,
    discount,
    final_amount,
    order_status
)
VALUES
(1, 1, 1, 2, 6000.00, 12000.00, 1200.00, 10800.00, 'CREATED'),
(2, 2, 2, 3, 1500.00, 4500.00, 0.00, 4500.00, 'CREATED'),
(3, 3, 4, 2, 7500.00, 15000.00, 1500.00, 13500.00, 'CREATED'),
(4, 4, 3, 5, 800.00, 4000.00, 0.00, 4000.00, 'CREATED'),
(5, 5, 5, 5, 2500.00, 12500.00, 1250.00, 11250.00, 'CREATED');