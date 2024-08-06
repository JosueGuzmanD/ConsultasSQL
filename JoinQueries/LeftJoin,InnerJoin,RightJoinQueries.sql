-- Crear tabla de Clientes
CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(50)
);

-- Crear tabla de Órdenes
CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insertar datos en Customers
INSERT INTO Customers (CustomerID, CustomerName) VALUES
(1, 'Alice Johnson'),
(2, 'Bob Smith'),
(3, 'Charlie Brown');

-- Insertar datos en Orders
INSERT INTO Orders (OrderID, OrderDate, CustomerID) VALUES
(101, '2024-01-01', 1),
(102, '2024-01-02', 2),
(103, '2024-01-03', 1),
(104, '2024-01-04', 4);  

-- Seleccionar datos con INNER JOIN
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Seleccionar datos con LEFT JOIN
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Seleccionar datos con RIGHT JOIN
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
