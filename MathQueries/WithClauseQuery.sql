-- Crear una tabla
CREATE TABLE Sales
(
    SalesID INT,
    EmployeeID INT,
    SaleAmount DECIMAL(18, 2)
);

-- Insertar datos de ejemplo
INSERT INTO Sales VALUES (1, 1, 100.00);
INSERT INTO Sales VALUES (2, 1, 150.00);
INSERT INTO Sales VALUES (3, 2, 200.00);
INSERT INTO Sales VALUES (4, 2, 250.00);

WITH SalesCTE AS
(
    SELECT EmployeeID, SUM(SaleAmount) AS TotalSales
    FROM Sales
    GROUP BY EmployeeID
)
SELECT EmployeeID, TotalSales
FROM SalesCTE
WHERE TotalSales > 100.00;
