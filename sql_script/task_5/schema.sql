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

