DECLARE @Counter INT = 0;

WHILE @Counter < 10
BEGIN
    SET @Counter = @Counter + 1;

    IF @Counter % 2 = 0
    BEGIN
        CONTINUE; -- Salta el resto del bucle si @Counter es par
    END;

    PRINT 'El valor de Counter es ' + CAST(@Counter AS NVARCHAR(10));
END;
