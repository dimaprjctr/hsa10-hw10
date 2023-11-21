-- Create a database (if not exists)
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'hw10') THEN
    CREATE DATABASE hw10;
END IF;
END $$;

-- Connect to the created database
\c hw10;

-- Create a table for users
CREATE TABLE IF NOT EXISTS users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL
);


-- Inserting random data into the users table
INSERT INTO users (username, date_of_birth) VALUES
    ('JohnDoe', '1990-05-15'),
    ('AliceSmith', '1985-11-22'),
    ('BobJohnson', '1998-03-10');
