-- Crear una tabla de ejemplo
CREATE TABLE Orders
(
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    Quantity INT
);

-- Insertar algunos datos de ejemplo
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductID, Quantity)
VALUES
(1, 1, '2024-01-01', 101, 5),
(2, 1, '2024-01-02', 102, 3),
(3, 2, '2024-01-01', 101, 4),
(4, 3, '2024-01-03', 103, 2),
(5, 2, '2024-01-01', 101, 4); -- Duplicated row intentionally

-- Consultar los CustomerID únicos
SELECT DISTINCT CustomerID
FROM Orders;

-- Este SELECT devolverá los CustomerID únicos: 1, 2, 3
