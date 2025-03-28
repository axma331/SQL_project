SET search_path TO schema_for_task2;

TRUNCATE TABLE Employee;

INSERT INTO Employee(Id, Salary)
VALUES ('1', '100'),
       ('2', '200'),
       ('3', '300');
