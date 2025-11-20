-- Create Database
create database BankingCustomerTransactions

-- Create Tables
create table Customers (
	customer_id int primary key,
	name varchar(50),
	email varchar(50),
	phone varchar(50),
	city varchar(50),
	join_date date
)

create table Accounts (
	account_id int primary key,
	customer_id int,
	account_type varchar(50),
	balance decimal(20,2),
	open_date date,
	status varchar(50),

	foreign key (customer_id) references Customers(customer_id)
)

create table Transactions (
	txn_id int primary key,
	account_id int,
	txn_date datetime,
	txn_type varchar(50),
	amount decimal(20,2),
	merchant varchar(100),
	status varchar(50)

	foreign key (account_id) references Accounts(account_id)
)

create table Loans (
	loan_id int primary key,
	customer_id int,
	loan_type varchar(50),
	amount decimal(20,2),
	start_date date,
	interest_rate decimal(20,2),
	loan_status varchar(50)

	foreign key (customer_id) references Customers(customer_id)
)

create table Cards (
	card_id int primary key,
	customer_id int,
	card_type varchar(50),
	limit_amount decimal(20,2),
	issued_date date,
	status varchar(50),

	foreign key (customer_id) references Customers(customer_id)
)