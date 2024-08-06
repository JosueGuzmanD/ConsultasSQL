CREATE TABLE Employees
(
    EmployeeID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    BirthDate DATE,
    Salary DECIMAL(18, 2)
);


BULK INSERT Employees
FROM 'C:\Users\Josuegd\Documents\ConsultasSQL\employees.txt'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 1
);
