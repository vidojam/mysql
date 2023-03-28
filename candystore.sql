--Create candystore database:
CREATE DATABASE candystore;

-- Switch to candystore database:
USE candystore;

-- Create the customers table
CREATE TABLE customers (
  customerId INT AUTO_INCREMENT PRIMARY KEY,
  firstName VARCHAR(20) NOT NULL,
  lastName VARCHAR(20) NOT NULL,
  email VARCHAR(30),
  phone VARCHAR(20),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add our first customer;
INSERT INTO customers (firstName, lastName, email, phone)
VALUES ('Damian', 'Montero', 'damian@bocacode.com', '976-Code');

-- lets get all of the customers now;
SELECT * FROM customers;

-- Add our first customer;
INSERT INTO customers (firstName, lastName, email, phone)
VALUES ('Cassandra', 'Curcio', 'cassandra@bocacode.com', '976-Cats');

-- Add our first customer;
INSERT INTO customers (firstName, lastName, email, phone)
VALUES ('Bridgette', 'Lemus', 'bridgette@bocacode.com', '974-DOGS');

-- To find a specific customer; 
SELECT * FROM customers WHERE firstName = ('Cassandra');

-- Create the orders table
CREATE TABLE orders (
  orderId INT AUTO_INCREMENT PRIMARY KEY,
  customerId INT NOT NULL,
  total DECIMAL(6,2),
  tax DECIMAL(7,2),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO orders (customerId, total, tax)
VALUES (1, 104.05, 10.05);

-- How can I search all of Damian's orders?
SELECT * FROM customers
JOIN orders ON orders.customerId = customers.customerId
WHERE firstName = 'Damian';
