-- Crear las tablas
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10, 2)
);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Insertar datos
INSERT INTO Employees (employee_id, employee_name, department_id, salary)
VALUES 
(1, 'Alice', 1, 50000.00), 
(2, 'Bob', 2, 60000.00), 
(3, 'Charlie', 1, 55000.00);

INSERT INTO Departments (department_id, department_name)
VALUES 
(1, 'HR'), 
(2, 'Finance');

-- Crear la vista
CREATE VIEW HighSalaryEmployees AS
SELECT 
    employee_id,
    employee_name,
    department_id,
    salary
FROM 
    Employees
WHERE 
    salary > 55000;

-- Consultar la vista
SELECT * FROM HighSalaryEmployees;

-- Filtrar datos en la vista
SELECT * FROM HighSalaryEmployees
WHERE department_id = 2;

-- Actualizar la vista
CREATE OR REPLACE VIEW HighSalaryEmployees AS
SELECT 
    employee_id,
    employee_name,
    department_id,
    salary
FROM 
    Employees
WHERE 
    salary > 55000 AND department_id = 2;

-- Consultar la vista actualizada
SELECT * FROM HighSalaryEmployees;

-- Eliminar la vista
DROP VIEW HighSalaryEmployees;
