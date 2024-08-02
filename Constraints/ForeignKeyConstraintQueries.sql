-- Crear la tabla Customers (Padre)
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

-- Insertar datos en la tabla Customers
INSERT INTO Customers (customer_id, customer_name)
VALUES (1, 'John Doe'), (2, 'Jane Smith');

-- Crear la tabla Orders (Hija) con FOREIGN KEY
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    CONSTRAINT FK_CustomerOrder FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insertar datos en la tabla Orders
INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (1, 1, '2024-01-15'), (2, 2, '2024-02-15');

-- Verificar los datos insertados
SELECT * FROM Customers;
SELECT * FROM Orders;
