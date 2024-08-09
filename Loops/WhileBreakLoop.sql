DECLARE @Counter INT = 0;

WHILE @Counter < 10
BEGIN
    PRINT 'El valor de Counter es ' + CAST(@Counter AS NVARCHAR(10));

    IF @Counter = 5
    BEGIN
        BREAK; -- Rompe el bucle cuando @Counter es 5
    END;

    SET @Counter = @Counter + 1;
END;
