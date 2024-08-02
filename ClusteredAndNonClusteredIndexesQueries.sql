-- Crear una tabla de ejemplo
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    LastName NVARCHAR(50),
    FirstName NVARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2)
);

-- Crear un índice clustered en la columna EmployeeID
CREATE CLUSTERED INDEX IX_Employees_EmployeeID
ON Employees (EmployeeID);

-- El índice clustered almacena y ordena las filas de la tabla según EmployeeID.
-- Los datos en la tabla Employees estarán físicamente ordenados por EmployeeID.

-- Crear un índice non-clustered en la columna LastName
CREATE NONCLUSTERED INDEX IX_Employees_LastName
ON Employees (LastName);

-- El índice non-clustered crea una estructura independiente que almacena LastName y punteros a las filas correspondientes.
-- Los datos en la tabla Employees no se ordenan físicamente por LastName.
-- Puedes tener múltiples índices non-clustered en la misma tabla.
