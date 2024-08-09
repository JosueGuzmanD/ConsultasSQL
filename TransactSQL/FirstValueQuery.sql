-- Crear una tabla
CREATE TABLE Sales
(
    SalesID INT,
    SaleDate DATE,
    Amount DECIMAL(18, 2)
);

-- Insertar datos de ejemplo
INSERT INTO Sales VALUES (1, '2024-01-01', 100.00);
INSERT INTO Sales VALUES (2, '2024-01-05', 200.00);
INSERT INTO Sales VALUES (3, '2024-01-10', 300.00);

-- Usar FIRST_VALUE() para obtener el primer valor del monto de ventas
SELECT SalesID, SaleDate, Amount,
       FIRST_VALUE(Amount) OVER (ORDER BY SaleDate) AS FirstSaleAmount
FROM Sales;

-- Limpiar la tabla
DROP TABLE Sales;
