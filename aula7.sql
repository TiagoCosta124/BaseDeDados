    SELECT * FROM sys.databases                              
    CREATE DATABASE aula7   

    CREATE TABLE Customers (
 CustomerID INT PRIMARY KEY,
 Name NVARCHAR(50),
 Email NVARCHAR(50) );

 CREATE TABLE Orders (
 OrderID INT PRIMARY KEY,
 OrderDate DATE,
 CustomerID INT,
 FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );

Insert INTO Customers (CustomerID, Name, Email) VALUES (1, 'Pascual', 'pascual2014@gmail.com')
Insert INTO Customers (CustomerID, Name, Email) VALUES (2, 'Nicolas', 'NIcolas2010gamer@gmail.com')
Insert INTO Customers (CustomerID, Name, Email) VALUES (3, 'Valentim', 'Valente25@gmail.com')
Insert INTO Customers (CustomerID, Name, Email) VALUES (4, 'Marlene', 'Marleninha@gmail.com')
Insert INTO Customers (CustomerID, Name, Email) VALUES (5, 'Juliana', 'jujucinco4@gmail.com')
Insert INTO Customers (CustomerID, Name, Email) VALUES (6, 'Miguel', 'miguel@gmail.com')
Insert INTO Orders (OrderID, OrderDate, CustomerID) VALUES (53042354, '2026-10-22', 1)
Insert INTO Orders (OrderID, OrderDate, CustomerID) VALUES (7689765, '2026-10-23', 2)
Insert INTO Orders (OrderID, OrderDate, CustomerID) VALUES (2345765, '2026-10-22', 3)
Insert INTO Orders (OrderID, OrderDate, CustomerID) VALUES (874456, '2026-10-25', 4)
Insert INTO Orders (OrderID, OrderDate, CustomerID) VALUES (3749854,'2026-10-20', 5)

SELECT * FROM Orders
SELECT * from Customers

SELECT Orders.OrderID, Customers.CustomerID, Customers.Name, Orders.OrderDate
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

SELECT Orders.OrderID, Customers.CustomerID, Customers.Name, Orders.OrderDate
FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

SELECT * from production.products
SELECT * FROM production.categories


SELECT production.products.product_name, production.products.list_price, 
production.products.model_year, production.categories.category_name
FROM production.products
INNER JOIN production.categories ON production.categories.category_id=production.products.category_id;