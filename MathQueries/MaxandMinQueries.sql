-- Encontrar el salario m�ximo
SELECT MAX(Salary) AS MaxSalary
FROM Employees;

-- Encontrar el salario m�nimo
SELECT MIN(Salary) AS MinSalary
FROM Employees;

-- Encontrar el salario m�ximo y m�nimo por departamento
SELECT Department, MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary
FROM Employees
GROUP BY Department;
