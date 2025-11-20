-- Create Database
create database UniversityStudentPerformance

-- Create Tables
create table Departments (
	department_id int primary key,
	department_name varchar(50)
)

create table Students (
	student_id int primary key,
	first_name varchar(50),
	last_name varchar(50),
	gender varchar(20),
	department_id int,

	foreign key (department_id) references Departments(department_id)
)

create table Courses (
	course_id int primary key,
	course_name varchar(50),
	department_id int,
	credits	int

	foreign key (department_id) references Departments(department_id)
)

create table Enrollments (
	enrollment_id int primary key,
	student_id int,
	course_id int,
	semester varchar(50),
	year int

	foreign key (student_id) references Students(student_id),
	foreign key (course_id) references Courses(course_id)
)

create table Exam_Scores (
	exam_id int primary key,
	enrollment_id int,
	score decimal(10,2),
	is_absent bit default 0,

	foreign key (enrollment_id) references Enrollments(enrollment_id)
)

create table Attendance (
	attendance_id int primary key,
	enrollment_id int,
	total_classes int,
	attended_classes int

	foreign key (enrollment_id) references Enrollments(enrollment_id)
)