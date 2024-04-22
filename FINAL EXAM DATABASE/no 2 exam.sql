CREATE TABLE employeesNO2 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    address VARCHAR(100)
);

INSERT INTO employeesNO2 (id, name, age, address) VALUES
(1001, 'Rohan', 26, 'Delhi'),
(1002, 'Ankit', 30, 'Gurgaon'),
(1003, 'Gaurav', 27, 'Mumbai'),
(1004, 'Raja', 

SELECT * FROM employees WHERE id = 1004;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    address VARCHAR(100)
);

INSERT INTO employees (id, name, age, address) VALUES
(1001, 'rohan', 26, 'Delhi'),
(1002, 'Ankit', 30, 'gurgaon'),
(1003, 'gaurav', 27, 'Mumbai'),
(1004, 'raja', 32, 'nagpur');

--part b
SELECT * FROM employees WHERE id = 1004;

--part c
SELECT * FROM employees;

--part d
SELECT * FROM employees WHERE name LIKE 'R%';

--part e
SELECT id, age, name FROM employees ORDER BY age ASC, name DESC;

--part f
SELECT DISTINCT address FROM employees;




