-- Active: 1692550787989@@127.0.0.1@5432@mysqldb
-- CREATE DATABASE test1
-- DROP DATABASE test1
-- ALTER DATABASE test1 RENAME TO mysqldb

-- CREATE TABLE students (
--     student_id INT,
--     first_name VARCHAR(30),
--     last_name VARCHAR(30),
--     cgpa NUMERIC(1,2)
-- )


-- ALTER TABLE students RENAME TO candidates

-- DROP TABLE candidates

-- CREATE TABLE users (
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL
-- )

-- CREATE TABLE users2 (
--     user_id SERIAL,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     PRIMARY KEY(user_id, username)  -- <-- composite key
-- )

-- CREATE TABLE users3 (
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     age INT DEFAULT 18
-- )

-- INSERT INTO users3 values(1, 'abc', 'abc@gmail.com')





-- -- INSERT METHOD

-- INSERT INTO users3(user_id, username, email, age) values(2, 'sharif', 'sharif@gmail.com', 27)

-- INSERT INTO users3(user_id, username, email) 
-- values
-- (1,'ridwan', 'ridwan@gmail.com'),
-- (2,'rafi', 'rafi@gmail.com'),
-- (3,'arman', 'arman@gmail.com');


-- TRUNCATE TABLE users3;


-- -- ALTER METHOD

-- ALTER TABLE users3
-- ADD COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL

-- ALTER TABLE users3
-- ADD COLUMN demo int

-- ALTER TABLE users3
-- ALTER COLUMN demo type TEXT

-- ALTER TABLE users3
-- ALTER COLUMN demo set DEFAULT 'john doe'

-- ALTER TABLE users3
-- ALTER COLUMN demo drop DEFAULT

-- ALTER TABLE users3
-- RENAME COLUMN demo to country

-- ALTER TABLE users3
-- ALTER COLUMN country set NOT NULL

-- ALTER TABLE users3
-- ALTER COLUMN country drop NOT NULL


-- ALTER TABLE users3
-- ADD CONSTRAINT unique_email UNIQUE(email)

-- ALTER TABLE users3
-- DROP CONSTRAINT unique_email


-- SELECT * FROM users3


------------Foreign Key Constraint-----------

-- Create employee table
-- each department can have many employees

CREATE TABLE Departments(
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50)
)

INSERT INTO Departments VALUES(
    1,
    'IT'
)

-- Create employee table
-- each employee belongs to a department

CREATE TABLE Employees(
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department_id INT,
    CONSTRAINT fk_constraint_dept
    FOREIGN KEY(department_id)
    REFERENCES Departments(dept_id)
)


INSERT INTO Employees VALUES(
1,
'John',
1
)

SELECT * FROM Employees