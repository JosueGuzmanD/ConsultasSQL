-- Crear un procedimiento almacenado con encriptaci�n
CREATE PROCEDURE EncryptedProcedure
WITH ENCRYPTION
AS
BEGIN
    SELECT 'Este es un procedimiento almacenado encriptado';
END;

-- Ejecutar el procedimiento almacenado
EXEC EncryptedProcedure;
