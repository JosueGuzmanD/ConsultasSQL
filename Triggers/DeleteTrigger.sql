-- Crear un trigger que se active despu�s de una eliminaci�n
CREATE TRIGGER trgAfterDelete ON Employees
AFTER DELETE
AS
BEGIN
    PRINT 'Registro eliminado de la tabla Employees';
END;

-- Probar el trigger
DELETE FROM Employees
WHERE EmployeeID = 1;
