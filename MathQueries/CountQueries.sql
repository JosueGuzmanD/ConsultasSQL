-- Crear una tabla de ejemplo
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    Department NVARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insertar datos de ejemplo
INSERT INTO Employees (EmployeeID, Department, Salary) VALUES
(1, 'HR', 50000),
(2, 'IT', 60000),
(3, 'HR', 55000),
(4, 'IT', 70000),
(5, 'Finance', 65000);

-- Contar el número total de empleados
SELECT COUNT(*) AS TotalEmployees
FROM Employees;

-- Contar el número de empleados en cada departamento
SELECT Department, COUNT(*) AS EmployeesPerDepartment
FROM Employees
GROUP BY Department;
