-- Crear una tabla
CREATE TABLE Orders
(
    OrderID INT,
    OrderDate DATE,
    CustomerID INT,
    TotalAmount DECIMAL(18, 2)
);

-- Insertar datos de ejemplo
INSERT INTO Orders VALUES (1, '2024-01-01', 1, 150.00);
INSERT INTO Orders VALUES (2, '2024-01-05', 2, 250.00);
INSERT INTO Orders VALUES (3, '2024-01-10', 1, 350.00);

-- Usar SUM() con OVER() para calcular el total acumulado por cliente
SELECT OrderID, OrderDate, CustomerID, TotalAmount,
       SUM(TotalAmount) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS RunningTotal
FROM Orders;

-- Limpiar la tabla
DROP TABLE Orders;
