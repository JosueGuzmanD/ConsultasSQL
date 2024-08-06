CREATE TABLE StringExamples
(
    TextValue VARCHAR(50)
);

-- Insertar datos en StringExamples
INSERT INTO StringExamples (TextValue) VALUES
('Hello World'),
('SQL Functions'),
('OpenAI ChatGPT'),
('  Trim me  ');

-- Convertir a mayúsculas
SELECT TextValue, UPPER(TextValue) AS UpperCase
FROM StringExamples;

-- Convertir a minúsculas
SELECT TextValue, LOWER(TextValue) AS LowerCase
FROM StringExamples;

-- Obtener la longitud de la cadena
SELECT TextValue, LEN(TextValue) AS TextLength
FROM StringExamples;

-- Eliminar espacios en blanco
SELECT TextValue, TRIM(TextValue) AS TrimmedValue
FROM StringExamples;

-- Extraer subcadena
SELECT TextValue, SUBSTRING(TextValue, 1, 5) AS SubString
FROM StringExamples;

-- Reemplazar ' ' con '-'
SELECT TextValue, REPLACE(TextValue, ' ', '-') AS ReplacedValue
FROM StringExamples;

-- Concatenar cadenas
SELECT TextValue, CONCAT('Prefix-', TextValue, '-Suffix') AS ConcatenatedValue
FROM StringExamples;
