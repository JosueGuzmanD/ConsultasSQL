-- Crear un trigger que levante un error si se inserta un salario negativo
CREATE TRIGGER trgSalaryCheck ON Employees
BEFORE INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE Salary < 0)
    BEGIN
        RAISEERROR('El salario no puede ser negativo', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
