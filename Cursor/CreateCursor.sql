DECLARE @EmployeeID INT;

DECLARE EmployeeCursor CURSOR FOR
SELECT EmployeeID
FROM Employees;

OPEN EmployeeCursor;

FETCH NEXT FROM EmployeeCursor INTO @EmployeeID;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Procesando el empleado con ID: ' + CAST(@EmployeeID AS NVARCHAR(10));

    FETCH NEXT FROM EmployeeCursor INTO @EmployeeID;
END;

CLOSE EmployeeCursor;
DEALLOCATE EmployeeCursor;
