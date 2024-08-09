-- Crear un trigger que se active despu�s de una actualizaci�n
CREATE TRIGGER trgAfterUpdate ON Employees
AFTER UPDATE
AS
BEGIN
    PRINT 'Registro actualizado en la tabla Employees';
END;

-- Probar el trigger
UPDATE Employees
SET Salary = 60000
WHERE EmployeeID = 1;
