-- Crear un procedimiento almacenado con parámetros de salida
CREATE PROCEDURE GetEmployeeSalary
    @EmployeeID INT,
    @Salary DECIMAL(18, 2) OUTPUT
AS
BEGIN
    SELECT @Salary = Salary
    FROM Employees
    WHERE EmployeeID = @EmployeeID;
END;

-- Declarar una variable para el parámetro de salida
DECLARE @EmpSalary DECIMAL(18, 2);

-- Ejecutar el procedimiento almacenado
EXEC GetEmployeeSalary @EmployeeID = 1, @Salary = @EmpSalary OUTPUT;

-- Mostrar el salario del empleado
PRINT 'El salario del empleado es ' + CAST(@EmpSalary AS NVARCHAR(50));
