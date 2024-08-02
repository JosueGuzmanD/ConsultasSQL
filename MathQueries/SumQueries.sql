-- Calcular la suma de todos los salarios
SELECT SUM(Salary) AS TotalSalary
FROM Employees;

-- Calcular la suma de salarios distintos (sin duplicados)
SELECT SUM(DISTINCT Salary) AS TotalDistinctSalary
FROM Employees;

-- Calcular la suma de salarios por departamento
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department;
