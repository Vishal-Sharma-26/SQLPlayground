CREATE DATABASE SalesInsightTracker

CREATE TABLE Customers (
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(50),
	signup_date DATE
);

CREATE TABLE Products (
	product_id INT PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50),
	unit_price DECIMAL
);

CREATE TABLE Orders (
	order_id INT PRIMARY KEY,
	customer_id INT,
	order_date DATE,
	total_amount DECIMAL,
	payment_method VARCHAR(50)
);

CREATE TABLE Order_items (
	item_id INT PRIMARY KEY,
	order_id INT,
	product_id INT,
	quantity INT,
	unit_price DECIMAL
);

CREATE TABLE stores (
	store_id INT PRIMARY KEY,
	store_name VARCHAR(50),
	city VARCHAR(50),
	region VARCHAR(50)
);

CREATE TABLE shipments (
	shipment_id INT PRIMARY KEY,
	order_id INT,
	shipped_date DATE,
	delivered_date DATE,
	status VARCHAR(50)
);