CREATE DATABASE northwind;

USE northwind;

CREATE TABLE customers (
	customerID INT PRIMARY KEY,
    company_name VARCHAR(20)
);

-- Exercício 1
INSERT INTO customers
VALUES (1, 'Mercedes'), (2, 'BMW'), (3, 'Volkswagen'), (4, 'FIAT');

DROP TABLE customers;

SELECT * FROM customers;

SELECT customerID, company_name 
FROM customers
ORDER BY company_name ASC;

-- Exercício 2
ALTER TABLE customers
ADD contactname INT;

ALTER TABLE customers
ADD region VARCHAR(30);

ALTER TABLE customers
ADD country VARCHAR(30);

UPDATE customers
SET contactname = 12345,
    region = 'Berlim',
    country = 'Alemanha'
WHERE customerID = 1;

UPDATE customers
SET contactname = 12346,
    region = 'Berlim',
    country = 'Alemanha'
WHERE customerID = 2;

UPDATE customers
SET contactname = 12347,
    region = 'Baviera',
    country = 'Alemanha'
WHERE customerID = 3;

UPDATE customers
SET contactname = 12348,
    region = 'Roma',
    country = 'Itália'
WHERE customerID = 4;

INSERT INTO customers
VALUES (5, 'DINA', 12349, 'Novo México', 'México');

SELECT customerID, company_name, contactname, region 
FROM customers
ORDER BY region ASC;

-- Exercício 3

CREATE TABLE products (
	productID INT PRIMARY KEY,
    categoryID INT,
    supplierID INT,
    unitsInStock INT,
    productname VARCHAR(30)
 );

INSERT INTO products
VALUES (12, 1, 019, 1, 'Arroz'),
(23, 3, 028, 1, 'Lápis de Cor'),
(34, 2, 037, 0, 'Nutella'),
(45, 4, 046, 1, 'Detergente');

SELECT productID, productname, supplierID, unitsInStock
FROM products
WHERE unitsInStock > 0;

-- Exercício 4

CREATE TABLE orders (
	orderID INT PRIMARY KEY,
    quantity INT
);
DROP TABLE products;
DROP TABLE orders;

ALTER TABLE products
ADD orderID INT;

ALTER TABLE products
ADD FOREIGN KEY (orderID) REFERENCES orders(orderID);

UPDATE products
SET orderID = 10812
WHERE productID = 12;

UPDATE products
SET orderID = 10173
WHERE productID = 23;

UPDATE products
SET orderID = 10278
WHERE productID = 34;

UPDATE products
SET orderID = 10812
WHERE productID = 45;

INSERT INTO products
VALUES (56, 1, 055, 0, 'Caviar', 10251),
(67, 4, 064, 1, 'Pasta de Dente', 10296),
(78, 5, 073, 0, 'Tesoura', 10655),
(89, 2, 082, 1, 'Chocolate', 10296);

SELECT * FROM products;