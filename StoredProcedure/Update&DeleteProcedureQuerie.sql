-- Borrar un procedimiento almacenado
DROP PROCEDURE IF EXISTS GetEmployeeDetails;

-- Crear un nuevo procedimiento almacenado
CREATE PROCEDURE UpdateEmployeeSalary
    @EmployeeID INT,
    @NewSalary DECIMAL(18, 2)
AS
BEGIN
    UPDATE Employees
    SET Salary = @NewSalary
    WHERE EmployeeID = @EmployeeID;
END;

-- Ejecutar el procedimiento almacenado
EXEC UpdateEmployeeSalary @EmployeeID = 1, @NewSalary = 75000.00;
