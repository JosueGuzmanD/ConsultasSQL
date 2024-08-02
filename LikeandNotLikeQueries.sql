-- Crear una tabla de ejemplo para clientes
CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(50),
    Email NVARCHAR(100)
);

-- Insertar datos de ejemplo
INSERT INTO Customers (CustomerID, CustomerName, Email) VALUES
(1, 'Alice Johnson', 'alice@example.com'),
(2, 'Bob Smith', 'bob@example.com'),
(3, 'Charlie Brown', 'charlie@example.com'),
(4, 'David Williams', 'david@example.com');

-- Seleccionar clientes cuyos nombres comienzan con 'A'
SELECT CustomerID, CustomerName, Email
FROM Customers
WHERE CustomerName LIKE 'A%';

-- Seleccionar clientes cuyos nombres no comienzan con 'A'
SELECT CustomerID, CustomerName, Email
FROM Customers
WHERE CustomerName NOT LIKE 'A%';

-- Seleccionar clientes cuyos nombres contienen 'i' en cualquier posición
SELECT CustomerID, CustomerName, Email
FROM Customers
WHERE CustomerName LIKE '%i%';

-- Seleccionar clientes cuyos nombres tienen una 'o' como tercer carácter
SELECT CustomerID, CustomerName, Email
FROM Customers
WHERE CustomerName LIKE '__o%';

-- Seleccionar clientes cuyos nombres comienzan con 'D' y terminan con 'd'
SELECT CustomerID, CustomerName, Email
FROM Customers
WHERE CustomerName LIKE 'D%d';

-- Seleccionar clientes cuyos nombres comienzan con 'A' o contienen 'Brown'
SELECT CustomerID, CustomerName, Email
FROM Customers
WHERE CustomerName LIKE 'A%' OR CustomerName LIKE '%Brown%';

-- Seleccionar clientes cuyos nombres no terminan con 'n'
SELECT CustomerID, CustomerName, Email
FROM Customers
WHERE CustomerName NOT LIKE '%n';
