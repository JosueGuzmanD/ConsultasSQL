DECLARE @EmployeeTable TABLE (EmployeeID INT);

INSERT INTO @EmployeeTable (EmployeeID)
SELECT EmployeeID FROM Employees;

DECLARE @EmpID INT;

DECLARE EmployeeCursor CURSOR FOR
SELECT EmployeeID FROM @EmployeeTable;

OPEN EmployeeCursor;

FETCH NEXT FROM EmployeeCursor INTO @EmpID;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Procesando el empleado con ID: ' + CAST(@EmpID AS NVARCHAR(10));

    FETCH NEXT FROM EmployeeCursor INTO @EmpID;
END;

CLOSE EmployeeCursor;
DEALLOCATE EmployeeCursor;
