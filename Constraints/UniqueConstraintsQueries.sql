--Pueden haber varios campos la restricción unique
-- Pueden haber campo null

CREATE TABLE Empleados (
    empleado_id INT UNIQUE,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);

CREATE TABLE MiTabla (
    id INT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    CONSTRAINT uc_MiTabla UNIQUE (nombre, apellido)
);


ALTER TABLE Empleados
ADD UNIQUE (empleado_id);

ALTER TABLE Empleados
ADD CONSTRAINT uc_Empleados UNIQUE (empleado_id);
