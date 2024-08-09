DECLARE @EmployeeID INT;
DECLARE @NewSalary DECIMAL(18, 2) = 75000.00;

DECLARE EmployeeCursor CURSOR FOR
SELECT EmployeeID
FROM Employees
WHERE Salary < 70000;

OPEN EmployeeCursor;

FETCH NEXT FROM EmployeeCursor INTO @EmployeeID;

WHILE @@FETCH_STATUS = 0
BEGIN
    UPDATE Employees
    SET Salary = @NewSalary
    WHERE EmployeeID = @EmployeeID;

    FETCH NEXT FROM EmployeeCursor INTO @EmployeeID;
END;

CLOSE EmployeeCursor;
DEALLOCATE EmployeeCursor;
