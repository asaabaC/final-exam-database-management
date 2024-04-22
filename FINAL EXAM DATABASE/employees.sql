Create Employees table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(256),
    salary DECIMAL(10, 2),
    department_id INT,
    hire_date DATE
);

Create Departments table
CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(256)
);

-- Insert sample data into Departments table
INSERT INTO Departments (id, name)
VALUES
    (1, 'HR'),
    (2, 'Finance'),
    (3, 'IT');

-- part a
WITH RankedEmployees AS (
    SELECT 
        e.name AS Employee_name,
        e.salary AS Employee_salary,
        d.name AS department_name,
        ROW_NUMBER() OVER (PARTITION BY e.department_id ORDER BY e.salary DESC) AS salary_rank
    FROM 
        Employees e
    INNER JOIN 
        Departments d ON e.department_id = d.id
)
SELECT 
    Employee_name,
    Employee_salary,
    department_name
FROM 
    RankedEmployees
WHERE 
    salary_rank = 1;
	
-- part b
WITH RankedEmployees AS (
    SELECT 
        e.name AS Employee_name,
        e.hire_date AS Employee_hire_date,
        d.name AS department_name,
        ROW_NUMBER() OVER (PARTITION BY e.department_id ORDER BY e.hire_date ASC) AS hire_date_rank
    FROM 
        Employees e
    INNER JOIN 
        Departments d ON e.department_id = d.id
)
SELECT 
    Employee_name,
    Employee_hire_date,
    department_name
FROM 
    RankedEmployees
WHERE 
    hire_date_rank = 1;
	
-- part c
SELECT 
    e.name AS Employee_name,
    e.salary AS Employee_salary
FROM 
    Employees e
INNER JOIN (
    SELECT 
        department_id,
        AVG(salary) AS avg_salary
    FROM 
        Employees
    GROUP BY 
        department_id
) AS avg_salaries ON e.department_id = avg_salaries.department_id
WHERE 
    e.salary > avg_salaries.avg_salary;
