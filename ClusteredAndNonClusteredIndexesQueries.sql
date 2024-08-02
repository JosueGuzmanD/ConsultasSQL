-- Crear una tabla de ejemplo
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    LastName NVARCHAR(50),
    FirstName NVARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2)
);

-- Crear un �ndice clustered en la columna EmployeeID
CREATE CLUSTERED INDEX IX_Employees_EmployeeID
ON Employees (EmployeeID);

-- El �ndice clustered almacena y ordena las filas de la tabla seg�n EmployeeID.
-- Los datos en la tabla Employees estar�n f�sicamente ordenados por EmployeeID.

-- Crear un �ndice non-clustered en la columna LastName
CREATE NONCLUSTERED INDEX IX_Employees_LastName
ON Employees (LastName);

-- El �ndice non-clustered crea una estructura independiente que almacena LastName y punteros a las filas correspondientes.
-- Los datos en la tabla Employees no se ordenan f�sicamente por LastName.
-- Puedes tener m�ltiples �ndices non-clustered en la misma tabla.
