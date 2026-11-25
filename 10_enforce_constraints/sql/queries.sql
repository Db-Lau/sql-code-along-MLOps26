--NOT NULL column constraint
CREATE TABLE students
  (name VARCHAR NOT NULL); 

--result: no rows inserted
INSERT INTO students (name)
VALUES 
  (NULL),
  ('Amy');

DROP TABLE students;

--UNIQUE constraint
CREATE TABLE students
  (name VARCHAR UNIQUE, 
  age INTEGER);

--results: no rows inserted
INSERT INTO students (name, age) 
VALUES 
  ('Amy', 4), 
  ('Bill', 8),
  ('Bill', 6);

--CHECK constraint
CREATE TABLE students 
    (name VARCHAR UNIQUE,
    age INTEGER CHECK (age>=10));

INSERT INTO students (name, age) 
VALUES ('Amy', 13),
       ('Bill', 15); 
    
SELECT * FROM students;

--DEFAULT constraints
CREATE TABLE students 
    (name VARCHAR UNIQUE,
    school_year INTEGER DEFAULT 2025);

INSERT INTO students (name) 
VALUES ('Amy'),
       ('Bill');

INSERT INTO students (name, school_year) 
VALUES ('Cindy', 2026),
       ('David', 2026);

SELECT * FROM students;