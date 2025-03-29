SET search_path TO schema_for_task5;

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