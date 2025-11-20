-- Create Database
create database FoodDeliveryPlatform

-- Create Tables
create table Customers (
	customer_id int primary key,
	name varchar(50),
	phone varchar(50),
	city varchar(50),
	signup_date date
)

create table Restaurants (
	restaurant_id int primary key,
	name varchar(50),
	cuisine varchar(50),
	city varchar(50),
	rating decimal(10,2),
	is_active bit default 0
)

create table Menu_Items (
	item_id int primary key,
	restaurant_id int,
	item_name varchar(50),
	price decimal(20,2),
	category varchar(50)

	foreign key (restaurant_id) references Restaurants(restaurant_id)
)

create table Orders (
	order_id int primary key,
	customer_id int,
	restaurant_id int,
	order_time datetime,
	delivery_time datetime,
	status varchar(50),
	total_amount decimal(20,2),

	foreign key (customer_id) references Customers(customer_id),
	foreign key (restaurant_id) references Restaurants(restaurant_id)
)

create table Order_Items (
	order_item_id int primary key,
	order_id int,
	item_id int,
	quantity int,

	foreign key (order_id) references Orders(order_id),
	foreign key (item_id) references Menu_Items(item_id)
)

create table Delivery_Partners (
	partner_id int primary key,
	name varchar(50),
	vehicle_type varchar(50),
	city varchar(50)
)

create table Delivery_Assignment (
	order_id int,
	partner_id int,
	assigned_time datetime,
	delivered_time datetime

	foreign key (order_id) references Orders(order_id),
	foreign key (partner_id) references Delivery_Partners(partner_id)
)