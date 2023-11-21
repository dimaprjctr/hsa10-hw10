-- Create a database (if not exists)
CREATE DATABASE IF NOT EXISTS hw10;

-- Use the created database
USE hw10;

-- Create a table for users
CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL
);

-- Inserting random data into the users table
INSERT INTO users (username, date_of_birth) VALUES
    ('JohnDoe', '1990-05-15'),
    ('AliceSmith', '1985-11-22'),
    ('BobJohnson', '1998-03-10');
