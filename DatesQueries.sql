CREATE TABLE DateExamples
(
    DateValue DATE,
    TimeValue TIME,
    DateTimeValue DATETIME
);

-- Insertar datos en DateExamples
INSERT INTO DateExamples (DateValue, TimeValue, DateTimeValue) VALUES
('2024-01-01', '12:00:00', '2024-01-01 12:00:00'),
('2024-07-04', '08:30:00', '2024-07-04 08:30:00'),
('2024-12-25', '14:45:00', '2024-12-25 14:45:00');


-- Obtener la fecha y hora actuales
SELECT GETDATE() AS CurrentDateTime;
-- Agregar 1 a�o a DateValue
SELECT DateValue, DATEADD(year, 1, DateValue) AS NextYear
FROM DateExamples;
-- Diferencia en d�as entre DateValue y '2024-01-01'
SELECT DateValue, DATEDIFF(day, '2024-01-01', DateValue) AS DaysDifference
FROM DateExamples;
-- Obtener el a�o de DateValue
SELECT DateValue, DATEPART(year, DateValue) AS YearPart
FROM DateExamples;
-- Formatear DateValue como 'dd-MM-yyyy'
SELECT DateValue, FORMAT(DateValue, 'dd-MM-yyyy') AS FormattedDate
FROM DateExamples;
-- Obtener el a�o, mes y d�a de DateValue
SELECT DateValue, YEAR(DateValue) AS Year, MONTH(DateValue) AS Month, DAY(DateValue) AS Day
FROM DateExamples;
-- Obtener el �ltimo d�a del mes de DateValue
SELECT DateValue, EOMONTH(DateValue) AS EndOfMonth
FROM DateExamples;
