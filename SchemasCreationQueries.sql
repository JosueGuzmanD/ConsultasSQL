-- Crear un nuevo esquema
CREATE SCHEMA Sales;

-- Crear una tabla dentro del esquema Sales
CREATE TABLE Sales.Orders
(
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    TotalAmount DECIMAL(10, 2)
);

-- Insertar datos en la tabla dentro del esquema Sales
INSERT INTO Sales.Orders (OrderID, OrderDate, CustomerID, TotalAmount) VALUES
(1, '2024-01-01', 1001, 250.00),
(2, '2024-01-02', 1002, 300.00),
(3, '2024-01-03', 1003, 150.00);

-- Seleccionar datos de la tabla dentro del esquema Sales
SELECT * 
FROM Sales.Orders;

