-- Calcular el salario promedio de todos los empleados
SELECT AVG(Salary) AS AverageSalary
FROM Employees;

-- Calcular el salario promedio distinto (sin duplicados)
SELECT AVG(DISTINCT Salary) AS AverageDistinctSalary
FROM Employees;

-- Calcular el salario promedio por departamento
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;
