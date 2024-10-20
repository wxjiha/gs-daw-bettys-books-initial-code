# Create database script for Bettys books

# Create the database
CREATE DATABASE IF NOT EXISTS bettys_books;
USE bettys_books;

# Create the books tables
CREATE TABLE IF NOT EXISTS books (id INT AUTO_INCREMENT,name VARCHAR(50),price DECIMAL(5, 2) unsigned,PRIMARY KEY(id));

# create the users tables
CREATE TABLE IF NOT EXISTS users (id INT AUTO_INCREMENT, username VARCHAR(50)NOT NULL UNIQUE, first_name VARCHAR(50)NOT NULL, last_name VARCHAR(50)NOT NULL, email VARCHAR(100)NOT NULL UNIQUE, hashedPassword VARCHAR(50)NOT NULL, PRIMARY KEY (id));

# Create the app user
CREATE USER IF NOT EXISTS 'bettys_books_app'@'localhost' IDENTIFIED BY 'qwertyuiop'; 
GRANT ALL PRIVILEGES ON bettys_books.* TO ' bettys_books_app'@'localhost';
