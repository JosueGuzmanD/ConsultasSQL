-- Crear una tabla de ejemplo
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Salary DECIMAL(18, 2)
);

-- Crear un trigger que se active después de una inserción
CREATE TRIGGER trgAfterInsert ON Employees
AFTER INSERT
AS
BEGIN
    PRINT 'Registro insertado en la tabla Employees';
END;

-- Probar el trigger
INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary) 
VALUES (1, 'John', 'Doe', 50000);
