CREATE DATABASE test1
DROP DATABASE test1
ALTER DATABASE test1 RENAME TO mysqldb

CREATE TABLE students (
    student_id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    cgpa NUMERIC(1,2)
)


ALTER TABLE students RENAME TO candidates

DROP TABLE candidates

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
)

CREATE TABLE users2 (
    user_id SERIAL,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY(user_id, username)  -- <-- composite key
)

CREATE TABLE users3 (
    user_id SERIAL,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    UNIQUE(email, username),
    age INT DEFAULT 18
)

INSERT INTO users3 values(1, 'abc', 'abc@gmail.com')

SELECT * FROM users3