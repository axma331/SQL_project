SET search_path TO schema_for_task3;

CREATE TABLE IF NOT EXISTS Employee
(
    Id INT PRIMARY KEY,
    Name VARCHAR(255),
    Salary INT,
    ManagerId INT
);

