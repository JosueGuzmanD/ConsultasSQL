-- Crear una tabla
CREATE TABLE Employees
(
    EmployeeID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50)
);

-- Insertar datos de ejemplo
INSERT INTO Employees VALUES (1, 'John', 'Doe', 'Sales');
INSERT INTO Employees VALUES (2, 'Jane', 'Smith', 'Sales');
INSERT INTO Employees VALUES (3, 'Bob', 'Johnson', 'HR');

-- Usar ROW_NUMBER() para asignar un número de fila a cada empleado por departamento
SELECT EmployeeID, FirstName, LastName, Department,
       ROW_NUMBER() OVER (PARTITION BY Department ORDER BY LastName) AS RowNum
FROM Employees;

-- Limpiar la tabla
DROP TABLE Employees;
