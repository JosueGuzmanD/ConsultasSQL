-- Crear una tabla temporal
CREATE TABLE #TempTable (
    ID INT,
    Name NVARCHAR(50)
);

-- Insertar datos en la tabla temporal
INSERT INTO #TempTable (ID, Name) VALUES (1, 'John Doe');

-- Seleccionar datos desde la tabla temporal
SELECT * FROM #TempTable;

-- La tabla temporal se elimina automáticamente al final de la sesión.
