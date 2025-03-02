DROP DATABASE IF EXISTS fee_management;

CREATE DATABASE fee_management;

USE fee_management;

CREATE TABLE users(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_age VARCHAR(3) NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    user_pass VARCHAR(255) NOT NULL
);

CREATE TABLE fee(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	user_id INT NOT NULL,
    fee_name VARCHAR(255) NOT NULL,
    fee_description TEXT NOT NULL,
    date_create DATE,
    expiration_date DATE,
	FOREIGN KEY (user_id) REFERENCES users (id)
);