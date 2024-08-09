-- Declarar variables y usar un bloque BEGIN...END
DECLARE @ProductID INT;
DECLARE @ProductName NVARCHAR(100);

-- Asignar valores a las variables
SET @ProductID = 1;
SET @ProductName = 'Widget';

-- Usar las variables en una instrucción INSERT
BEGIN
    INSERT INTO Products (ProductID, ProductName)
    VALUES (@ProductID, @ProductName);
END;
