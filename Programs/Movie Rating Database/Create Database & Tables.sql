-- Create Database
create database MovieRating

-- Create Tables
create table movies (
	movie_id int primary key,
	title varchar(100),
	genre varchar(100),
	release_year int,
	language varchar(100)
);

create table users (
	user_id int primary key,
	name varchar(100),
	age int,
	country varchar(100)
)

create table ratings (
	rating_id int primary key,
	user_id int,
	movie_id int,
	rating decimal(10,2),
	rating_date date,

	foreign key (user_id) references users(user_id),
	foreign key (movie_id) references movies(movie_id)
)

create table directors (
	director_id int primary key,
	name varchar(60)
)

create table movie_directors (
	movie_id int,
	director_id int,

	foreign key (movie_id) references movies(movie_id),
	foreign key (director_id) references directors(director_id)
)