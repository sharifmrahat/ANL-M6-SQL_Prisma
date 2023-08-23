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

-- INSERT INTO users(username, email) values('shofiq', 'shofiq@gmail.com')





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

-- CREATE TABLE Departments(
--     dept_id SERIAL PRIMARY KEY,
--     dept_name VARCHAR(50)
-- )

-- INSERT INTO Departments VALUES(
--     1,
--     'IT'
-- )

-- -- Create employee table
-- -- each employee belongs to a department

-- CREATE TABLE Employees(
--     emp_id SERIAL PRIMARY KEY,
--     emp_name VARCHAR(50) NOT NULL,
--     department_id INT,
--     CONSTRAINT fk_constraint_dept
--     FOREIGN KEY(department_id)
--     REFERENCES Departments(dept_id)
-- )


-- INSERT INTO Employees VALUES(
-- 1,
-- 'John',
-- 1
-- )


-- ---------- Update & Delete ------------

-- CREATE TABLE courses(
--     course_id SERIAL PRIMARY KEY,
--     course_name VARCHAR(255) NOT NULL,
--     description VARCHAR(255),
--     published_date DATE
-- )

-- INSERT INTO courses(course_name, description, published_date) 
--             VALUES
--                 ('Introduction to HTML', 'HTML Crash course', '2018-04-23'),
--                 ('Design with CSS', 'CSS Crash course', '2019-10-12'),
--                 ('Modern Javascript', 'JS Crash course', '2020-02-05'),
--                 ('Explore React.js', 'React.js Crash course', '2021-11-07');


-- ---------------- Update Single Row --------------

-- UPDATE courses
-- SET
-- course_name = 'Style sheet with CSS'
-- WHERE course_id = 2


-- UPDATE courses
-- SET
-- course_name = 'Intro to HTML',
-- description = 'HTML Master class'
-- WHERE course_id < 2

-- UPDATE courses
-- SET
-- description = 'Intermediate level course'
-- WHERE course_id > 1 AND course_id < 4


-- DELETE FROM courses
-- WHERE course_id = 4

-- SELECT * FROM courses


---------------- SELECT METHODS --------------

-- Select All Fields/Rows

SELECT * FROM departments

--- SPECIFIC select

SELECT course_name, published_date from courses

--- SELECT UNIQUE 
SELECT DISTINCT published_date from courses

-- Conditional SELECTION
SELECT username, email, age from users
WHERE age > 18

-- < > == not equal  

--------------- SORTING --------------

SELECT * FROM users ORDER BY username ASC LIMIT 10

SELECT * FROM users ORDER BY user_id DESC LIMIT 5

SELECT * FROM users ORDER BY username ASC LIMIT 2 OFFSET 2

--LIMIT 10 OFFSET 0 = page-1 records-10 skip-0 (default offset 0)
--LIMIT 10 OFFSET 1 =  page-2 records-10 skip-10
--LIMIT 10 OFFSET 2 = page-3 records-10 skip-20
--------------------------------------------------
--LIMIT x OFFSET y = page-(y+1) records-x skip-(y+1)*x


------------- IN, NOT IN, BETWEEN, LIKE -------------

SELECT * FROM users WHERE user_id IN (1, 3, 5)

SELECT * FROM users WHERE user_id NOT IN (2, 3)

SELECT * FROM users WHERE age BETWEEN 30 AND 60

SELECT * FROM users WHERE username LIKE '%im%' --im wala name gula return korbe

SELECT * FROM users WHERE username LIKE 'a%' --a diye start hobe

SELECT * FROM users WHERE username LIKE '%m' --ends with m

SELECT * FROM users WHERE username LIKE '_a%' -- second position a

SELECT * FROM users WHERE username LIKE '__a%' -- 3rd position a (_ for position)

SELECT * FROM users WHERE username LIKE '_a__m'

SELECT * FROM users WHERE username LIKE 'a%n'

SELECT * FROM users WHERE username = 'rahim'

SELECT * FROM users WHERE country IS NULL