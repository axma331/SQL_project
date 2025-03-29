CREATE SCHEMA schema_for_task2;
SET search_path TO schema_for_task2;

CREATE TABLE IF NOT EXISTS Employee
(
    Id     INT PRIMARY KEY ,
    Salary INT
);

TRUNCATE TABLE Employee;

INSERT INTO Employee(Id, Salary)
VALUES ('1', '100'),
       ('2', '200'),
       ('3', '300');

SELECT (
           SELECT DISTINCT Salary
           FROM Employee
           ORDER BY Salary
           OFFSET 1 LIMIT 1
       ) AS SecondHighestSalary;
