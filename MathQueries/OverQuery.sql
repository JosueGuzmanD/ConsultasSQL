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

-- Usar OVER() con PARTITION BY para calcular el total de ventas por empleado
SELECT SalesID, EmployeeID, SaleAmount,
       SUM(SaleAmount) OVER (PARTITION BY EmployeeID ORDER BY SalesID) AS RunningTotal
FROM Sales;
