-- Create Database :
CREATE DATABASE TechCorp_HR_Analytics;

-- Create Tables :
USE TechCorp_HR_Analytics;
CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    department VARCHAR(30),
    manager_id INT
);

CREATE TABLE sales (
    sale_id INT,
    sale_date DATE,
    amount DECIMAL(10,2)
);

CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE
);

-- Insert Values :
INSERT INTO employees VALUES
(1, 'Aarav', 75000, 'IT', 5),
(2, 'Vivaan', 68000, 'HR', 6),
(3, 'Ananya', 82000, 'IT', 5),
(4, 'Diya', 55000, 'HR', 6),
(5, 'Rohan', 90000, 'IT', NULL),
(6, 'Suresh', 70000, 'HR', NULL),
(7, 'Priya', 78000, 'IT', 5),
(8, 'Karan', 62000, 'Finance', 9),
(9, 'Neha', 85000, 'Finance', NULL),
(10, 'Ishaan', 88000, 'IT', 5),
(11, 'Riya',   59000, 'HR', 6),
(12, 'Arjun',  95000, 'Finance', 9),
(13, 'Sia',    61000, 'IT', 5),
(14, 'Vihaan', 72000, 'HR', 6),
(15, 'Aadhya', 81000, 'Finance', 9),
(16, 'Reyansh',65000, 'IT', 10),
(17, 'Saisha', 58000, 'HR', 11),
(18, 'Aarohi', 92000, 'Finance', 12),
(19, 'Kavya',  67000, 'IT', 10),
(20, 'Advik',  54000, 'HR', 11);


INSERT INTO sales VALUES
(1, '2025-01-05', 1200),
(2, '2025-01-12', 1800),
(3, '2025-02-08', 2500),
(4, '2025-02-15', 3200),
(5, '2025-03-03', 2800),
(6, '2025-03-20', 4000),
(7,  '2025-04-02', 3600),
(8,  '2025-04-18', 4200),
(9,  '2025-05-05', 3800),
(10, '2025-05-22', 5100),
(11, '2025-06-01', 4700),
(12, '2025-06-15', 5900),
(13, '2025-07-03', 5200),
(14, '2025-07-20', 6800),
(15, '2025-08-08', 6100),
(16, '2025-08-25', 7300),
(17, '2025-09-04', 6900),
(18, '2025-09-19', 8200),
(19, '2025-10-07', 7800),
(20, '2025-10-23', 9100),
(21, '2025-11-01', 8700),
(22, '2025-11-14', 9600);


INSERT INTO customers VALUES
(101, 'Rajesh'),
(102, 'Meena'),
(103, 'Sanjay'),
(104, 'Pooja'),
(105, 'Vikram'),
(106, 'Neetu'),
(107, 'Rohan'),
(108, 'Tara'),
(109, 'Yash'),
(110, 'Zoya');


INSERT INTO orders VALUES
(1001, 101, '2025-02-10'),
(1002, 103, '2025-02-15'),
(1003, 101, '2025-03-01'),
(1004, 102, '2025-03-12'),
(1005, 105, '2025-04-01'),
(1006, 103, '2025-04-20'),
(1007, 107, '2025-05-10'),
(1008, 106, '2025-06-05'),
(1009, 108, '2025-07-15'),
(1010, 101, '2025-08-02'),
(1011, 109, '2025-09-11'),
(1012, 105, '2025-10-05'),
(1013, 110, '2025-11-01');