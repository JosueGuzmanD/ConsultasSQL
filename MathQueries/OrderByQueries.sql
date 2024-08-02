-- Seleccionar todos los empleados ordenados por salario ascendente
SELECT * 
FROM Employees
ORDER BY Salary ASC;

-- Seleccionar todos los empleados ordenados por salario descendente
SELECT * 
FROM Employees
ORDER BY Salary DESC;

-- Seleccionar empleados por departamento y dentro de cada departamento ordenados por salario descendente
SELECT * 
FROM Employees
ORDER BY Department, Salary DESC;
