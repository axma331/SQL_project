CREATE SCHEMA schema_for_task5;
SET search_path TO schema_for_task5;

CREATE TABLE IF NOT EXISTS Customers
(
    Id   INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Orders
(
    Id         INT PRIMARY KEY,
    CustomerId INT,
    FOREIGN KEY (CustomerId) REFERENCES Customers (Id)
);

TRUNCATE TABLE Orders;
TRUNCATE TABLE Customers CASCADE;

INSERT INTO Customers (Id, Name)
VALUES ('1', 'Joe'),
       ('2', 'Henry'),
       ('3', 'Sam'),
       ('4', 'Max');

INSERT INTO Orders (Id, CustomerId)
VALUES ('1', '3'),
       ('2', '1');


SELECT Name AS Customers
FROM customers
WHERE Id IN (SELECT c.id
             from customers c
                      LEFT JOIN Orders o on c.id = o.customerid
             where customerid IS NULL);