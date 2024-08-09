-- Verificar si una tabla existe y crearla si no existe
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Products')
BEGIN
    CREATE TABLE Products
    (
        ProductID INT PRIMARY KEY,
        ProductName NVARCHAR(100)
    );
END
ELSE
BEGIN
    PRINT 'La tabla Products ya existe.';
END;
