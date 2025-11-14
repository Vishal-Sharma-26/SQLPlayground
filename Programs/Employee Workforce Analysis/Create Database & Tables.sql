-- Create Database
create database EmployeeWorkforceAnalysis

-- Create Tables
create table Jobs (
	job_id int primary key,
	job_title varchar(50),
	min_salary decimal(10,2),
	max_salary decimal(20,2)
)

create table Locations (
	location_id int primary key,
	city varchar(50),
	country varchar(60)
)

create table Departments (
	dept_id int primary key,
	dept_name varchar(50),
	location_id int,

	foreign key (location_id) references Locations(location_id)
)

create table Employees (
	emp_id int primary key,
	first_name varchar(50),
	last_name varchar(50),
	gender varchar(20),
	dob date,
	hire_date date,
	dept_id int,
	job_id int,
	salary decimal(10,2),
	manager_id int,

	foreign key (dept_id) references Departments(dept_id),
	foreign key (job_id) references Jobs(job_id)
)

create table Performance (
	review_id int primary key,
	emp_id int,
	year int,
	rating int,
	remark varchar(100),

	foreign key (emp_id) references Employees(emp_id)
)

create table Attendance (
	attendance_id int primary key,
	emp_id int,
	date date,
	status varchar(100)
)