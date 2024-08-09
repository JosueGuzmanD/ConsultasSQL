-- Crear un procedimiento almacenado
CREATE PROCEDURE GetEmployeeDetails
    @EmployeeID INT
AS
BEGIN
    SELECT EmployeeID, FirstName, LastName
    FROM Employees
    WHERE EmployeeID = @EmployeeID;
END;

-- Ejecutar el procedimiento almacenado
EXEC GetEmployeeDetails @EmployeeID = 1;
