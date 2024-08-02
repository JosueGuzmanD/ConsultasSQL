-- Crear una tabla de ejemplo
CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT
);

-- Insertar datos de ejemplo
INSERT INTO Products (ProductID, ProductName, Price, Stock) VALUES
(1, 'Product A', 10.00, 100),
(2, 'Product B', 20.00, 0),
(3, 'Product C', 15.00, 50),
(4, 'Product D', 25.00, 30);

-- Seleccionar productos que tienen un precio mayor a 10 y están en stock
SELECT ProductName, Price, Stock
FROM Products
WHERE Price > 10 AND Stock > 0;
