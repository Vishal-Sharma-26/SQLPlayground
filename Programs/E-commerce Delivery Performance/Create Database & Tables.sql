-- Create Database
create database EcommerceDeliveryPerformance

-- Create Tables
create table Customers (
	customer_id int primary key,
	name varchar(50),
	city varchar(100),
	state varchar(100),
	join_date date
)

create table Orders (
	order_id int primary key,
	customer_id int,
	order_date date,
	total_amount decimal(10,2),
	status varchar(50)

	foreign key (customer_id) references Customers(customer_id)
)

create table Delivery (
	delivery_id int primary key,
	order_id int,
	shipped_date date,
	delivered_date date,
	delivery_partner varchar(100),
	delivery_city varchar(60),

	foreign key (order_id) references Orders(order_id)
)

create table Products (
	product_id int primary key,
	product_name varchar(100),
	category varchar(100),
	price decimal(20,2)
)

create table Order_items (
	order_item_id int primary key,
	order_id int,
	product_id int,
	quantity int,
	line_total decimal(20,2),

	foreign key (order_id) references Orders(order_id),
	foreign key (product_id) references Products(product_id)
)