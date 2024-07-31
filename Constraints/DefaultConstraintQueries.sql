-- Crear una tabla Clientes con una columna IDENTITY
CREATE TABLE Clientes (
    cliente_id INT IDENTITY(1,1),
    nombre VARCHAR(50),
    direccion VARCHAR(100)
);
-- Crear una tabla Productos con una columna IDENTITY personalizada
CREATE TABLE Productos (
    producto_id INT IDENTITY(1000,5),
    nombre VARCHAR(50),
    precio DECIMAL(10, 2)
);

--En los ejemplos se muestra c�mo definir una columna IDENTITY 
--durante la creaci�n de la tabla. La columna IDENTITY genera autom�ticamente un valor incremental para cada nueva fila insertada.