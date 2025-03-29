CREATE SCHEMA schema_for_task3;
SET search_path TO schema_for_task3;

CREATE TABLE IF NOT EXISTS Employee
(
    Id INT PRIMARY KEY,
    Name VARCHAR(255),
    Salary INT,
    ManagerId INT
);

TRUNCATE TABLE Employee;

INSERT INTO Employee (Id, Name, Salary, ManagerId)
VALUES ('1', 'Joe', '70000', '3'),
       ('2', 'Henry', '80000', '4'),
       ('3', 'Sam', '60000', NULL),
       ('4', 'Max', '90000', NULL);


SELECT e.Name AS Employee
FROM Employee e
         JOIN Employee m ON m.Id = e.ManagerId
WHERE e.Salary > m.Salary