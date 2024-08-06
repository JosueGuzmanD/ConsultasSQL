CREATE TABLE MathExamples
(
    Value DECIMAL(10, 4)
);

-- Insertar datos en MathExamples
INSERT INTO MathExamples (Value) VALUES
(3.1416),
(-3.1416),
(2.7183),
(-2.7183),
(1.4142),
(-1.4142);
-- Obtener el valor de PI
SELECT PI() AS PiValue;
-- Obtener el techo de los valores
SELECT Value, CEILING(Value) AS CeilValue
FROM MathExamples;
-- Obtener el piso de los valores
SELECT Value, FLOOR(Value) AS FloorValue
FROM MathExamples;
-- Redondear los valores a 2 decimales
SELECT Value, ROUND(Value, 2) AS RoundedValue
FROM MathExamples;
-- Elevar los valores al cuadrado
SELECT Value, POWER(Value, 2) AS SquaredValue
FROM MathExamples;
-- Obtener un número aleatorio
SELECT RAND() AS RandomValue;

-- Obtener un número aleatorio con una semilla específica
SELECT RAND(12345) AS RandomValueWithSeed;
-- Obtener el seno de los valores
SELECT Value, SIN(Value) AS SinValue
FROM MathExamples;
-- Obtener el coseno de los valores
SELECT Value, COS(Value) AS CosValue
FROM MathExamples;
-- Obtener la raíz cuadrada de los valores (solo valores positivos)
SELECT Value, SQRT(Value) AS SqrtValue
FROM MathExamples
WHERE Value >= 0;
