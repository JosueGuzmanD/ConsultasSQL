CREATE TABLE Sales
(
    SaleID INT PRIMARY KEY,
    ProductName NVARCHAR(50),
    Quantity INT,
    Price DECIMAL(10, 2),
    SaleDate DATE
);

-- Insertar datos en Sales
INSERT INTO Sales (SaleID, ProductName, Quantity, Price, SaleDate) VALUES
(1, 'Laptop', 2, 1500.00, '2024-01-01'),
(2, 'Laptop', 1, 1500.00, '2024-01-02'),
(3, 'Smartphone', 3, 800.00, '2024-01-03'),
(4, 'Smartphone', 2, 800.00, '2024-01-04'),
(5, 'Desk', 1, 300.00, '2024-01-01'),
(6, 'Desk', 2, 300.00, '2024-01-02');

-- Calcular la cantidad total vendida y las ventas totales por producto
SELECT ProductName, SUM(Quantity) AS TotalQuantity, SUM(Quantity * Price) AS TotalSales
FROM Sales
GROUP BY ProductName;
