-- Crear una tabla de ejemplo
CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT
);

-- Insertar datos de ejemplo
INSERT INTO Products (ProductID, ProductName, Price, Stock) VALUES
(1, 'Product A', 10.00, 100),
(2, 'Product B', 20.00, 0),
(3, 'Product C', 15.00, 50),
(4, 'Product D', 25.00, 30);

-- Seleccionar productos cuyo precio está entre 10 y 20
SELECT ProductName, Price, Stock
FROM Products
WHERE Price BETWEEN 10 AND 20;

-- Crear una tabla de ejemplo para pedidos
CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerName NVARCHAR(50),
    TotalAmount DECIMAL(10, 2)
);

-- Insertar datos de ejemplo
INSERT INTO Orders (OrderID, OrderDate, CustomerName, TotalAmount) VALUES
(1, '2024-01-10', 'Customer A', 100.00),
(2, '2024-02-15', 'Customer B', 150.00),
(3, '2024-03-20', 'Customer C', 200.00),
(4, '2024-04-25', 'Customer D', 250.00);

-- Seleccionar pedidos realizados entre el 1 de febrero de 2024 y el 31 de marzo de 2024
SELECT OrderID, OrderDate, CustomerName, TotalAmount
FROM Orders
WHERE OrderDate BETWEEN '2024-02-01' AND '2024-03-31';

-- Crear una tabla de ejemplo para empleados
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(50),
    Department NVARCHAR(50)
);

-- Insertar datos de ejemplo
INSERT INTO Employees (EmployeeID, EmployeeName, Department) VALUES
(1, 'Alice', 'HR'),
(2, 'Bob', 'IT'),
(3, 'Charlie', 'Finance'),
(4, 'David', 'Marketing');

-- Seleccionar empleados cuyos nombres están entre 'Bob' y 'David'
SELECT EmployeeID, EmployeeName, Department
FROM Employees
WHERE EmployeeName BETWEEN 'Bob' AND 'David';

-- Seleccionar productos cuyo precio está entre 10 y 20 y están en stock
SELECT ProductName, Price, Stock
FROM Products
WHERE Price BETWEEN 10 AND 20 AND Stock > 0;


