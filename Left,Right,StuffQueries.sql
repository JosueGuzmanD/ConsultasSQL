CREATE TABLE StringExamples
(
    TextValue VARCHAR(50)
);

-- Insertar datos en StringExamples
INSERT INTO StringExamples (TextValue) VALUES
('Hello World'),
('SQL Functions'),
('OpenAI ChatGPT'),
('Sample Text');

-- Seleccionar los primeros 5 caracteres de cada cadena en TextValue
SELECT TextValue, LEFT(TextValue, 5) AS LeftText
FROM StringExamples;
-- Seleccionar los últimos 5 caracteres de cada cadena en TextValue
SELECT TextValue, RIGHT(TextValue, 5) AS RightText
FROM StringExamples;
-- Reemplazar los primeros 5 caracteres de cada cadena en TextValue con '#####'
SELECT TextValue, STUFF(TextValue, 1, 5, '#####') AS StuffedText
FROM StringExamples;
