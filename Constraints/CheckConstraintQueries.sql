-- Crear una tabla Empleados con una restricción CHECK simple en la columna edad
CREATE TABLE Empleados (
    empleado_id INT,
    nombre VARCHAR(50),
    edad INT CHECK (edad >= 18)
);
-- Crear una tabla Pedidos con una restricción CHECK compuesta
CREATE TABLE Pedidos (
    pedido_id INT,
    cantidad INT,
    precio DECIMAL(10, 2),
    CONSTRAINT chk_CantidadPrecio CHECK (cantidad > 0 AND precio >= 0)
);
-- Agregar una restricción CHECK a una tabla existente
ALTER TABLE Empleados
ADD CHECK (edad >= 18);

-- Agregar una restricción CHECK a una tabla existente usando la cláusula CONSTRAINT
ALTER TABLE Empleados
ADD CONSTRAINT chk_Edad CHECK (edad >= 18);
