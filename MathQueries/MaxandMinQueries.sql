-- Encontrar el salario máximo
SELECT MAX(Salary) AS MaxSalary
FROM Employees;

-- Encontrar el salario mínimo
SELECT MIN(Salary) AS MinSalary
FROM Employees;

-- Encontrar el salario máximo y mínimo por departamento
SELECT Department, MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary
FROM Employees
GROUP BY Department;
