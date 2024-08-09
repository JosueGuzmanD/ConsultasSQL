DECLARE @OuterCounter INT = 1;
DECLARE @InnerCounter INT;

WHILE @OuterCounter <= 3
BEGIN
    PRINT 'Outer loop iteration: ' + CAST(@OuterCounter AS NVARCHAR(10));

    SET @InnerCounter = 1;
    WHILE @InnerCounter <= 2
    BEGIN
        PRINT '  Inner loop iteration: ' + CAST(@InnerCounter AS NVARCHAR(10));
        SET @InnerCounter = @InnerCounter + 1;
    END;

    SET @OuterCounter = @OuterCounter + 1;
END;
